param($Server)

$PrimaryServer = "AP-SQLAG-01"

Write-Host "Availabilty Group Chaos Experiment"

Write-Host ""

Write-Host "Version: 1.0.0"
Write-Host "Title: SQL Server availabilty group remains availabile when node goes offline"
Write-Host "Description: Will listener remain online?"

Write-Host ""

Write-Host "Testing steady-state hypotheses - 1st run..."
Write-Host "Is availability group listener online?"

$Connected = Test-NetConnection -ComputerName $Server -Port 1433

Invoke-Pester -Script @{Path = "C:\git\SqlServerChaosEngineering\Demos\PesterTest.ps1"; `
    Parameters = @{ConfigValue = $Connected.TcpTestSucceeded}} -TestName 'Listener available'

Write-Host "Stopping service on node 1..."

Get-Service -ComputerName $PrimaryServer -Name MSSQLSERVER | Stop-Service -Force

Write-Host ""
Write-Host "Testing steady-state hypotheses - 2nd run..."

$Connected = Test-NetConnection -ComputerName $Server -Port 1433

Invoke-Pester -Script @{Path = "C:\git\SqlServerChaosEngineering\Demos\PesterTest.ps1"; `
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
        Get-Service -ComputerName $PrimaryServer -Name MSSQLSERVER | Start-Service
        Write-Host "Chaos experiment rolled back successfully!"
    }
    catch{
        Write-Error "Unable to rollback chaos experiment!"
    }
}