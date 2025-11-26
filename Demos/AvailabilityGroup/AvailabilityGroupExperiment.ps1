param($Server,$AvailabilityGroup)

$SqlGetListener = "SELECT dns_name, port
FROM sys.availability_group_listeners AS l
INNER JOIN sys.availability_groups AS a ON l.group_id = a.group_id
WHERE a.name = '$AvailabilityGroup'"
$Listener = Invoke-SqlCmd -ServerInstance $Server -Database master -Query $SqlGetListener -TrustServerCertificate -MultiSubnetFailover

Write-Host "Availabilty Group Chaos Experiment"

Write-Host ""

Write-Host "Version: 1.0.0"
Write-Host "Title: SQL Server availabilty group remains availabile when node goes offline"
Write-Host "Description: Will listener remain online?"

Write-Host ""

Write-Host "Checking Availability Group before running experiment..."
Write-Host "Is the availability group listener online?"

Start-Sleep -Seconds 1

$Connected = Test-NetConnection -ComputerName $Listener.dns_name -Port $Listener.port

Invoke-Pester -Script @{Path = "C:\git\SqlServerChaosEngineering\Demos\AvailabilityGroup\PesterTest.ps1"; `
    Parameters = @{ConfigValue = $Connected.TcpTestSucceeded}} -TestName 'Listener available'

Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Stopping service on primary node..."

Get-Service -ComputerName $Server -Name MSSQLSERVER | Stop-Service -Force

Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Testing hypothesis - Is the listener online?"

Start-Sleep -Seconds 5

$Connected = Test-NetConnection -ComputerName $Listener.dns_name -Port $Listener.port

Invoke-Pester -Script @{Path = "C:\git\SqlServerChaosEngineering\Demos\AvailabilityGroup\PesterTest.ps1"; `
    Parameters = @{ConfigValue = $Connected.TcpTestSucceeded}} -TestName 'Listener available'

if($Connected.TcpTestSucceeded -eq $true){
    Write-Host ""
    Write-Host "Listener is up and running!"
    Write-Host ""
}
else{
    Write-Host ""
    Write-Error "Listener is not available!"
    Write-Host ""
    Write-Host "Rolling back chaos experiment..."

    try{
        Get-Service -ComputerName $Server -Name MSSQLSERVER | Start-Service
        Write-Host "Chaos experiment rolled back successfully!"
    }
    catch{
        Write-Error "Unable to rollback chaos experiment!"
    }
}