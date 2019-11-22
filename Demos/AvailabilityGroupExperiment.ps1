param($Server)

Write-Host "Availabilty Group Chaos Experiment"

Write-Host ""

Write-Host "Version: 1.0.0"
Write-Host "Title: SQL Server availabilty group remains availabile when node goes offline"
Write-Host "Description: Will listener remain online?"

Write-Host ""

Write-Host "Testing steady-state hypotheses - 1st run..."
Write-Host "Is availability group listener online?"

Write-Host ""

Start-Sleep 2

$Connected = Test-Connection -TargetName $Server -TcpPort 15789

if($Connected -eq $true){
    Write-Host "Listener is up and running!"
}
else{
    Write-Error "Listener is not up and running!"
}

Write-Host ""

Start-Sleep 2

Write-Host "Stopping service on node 1"

#Get-Service -ComputerName $PrimaryServer | Stop-Service
docker stop testcontainer

Write-Host ""

Start-Sleep 2

Write-Host "Testing steady-state hypotheses - 2nd run..."

$Connected = Test-Connection -TargetName $Server -TcpPort 15789

if($Connected -eq $true){
    Write-Host "Listener is up and running!"
    Write-Host ""
}
else{
    Write-Error "Listener is not available!"
    Write-Host ""
    Write-Host "Rolling back chaos experiment..."
    Write-Host ""

    try{
        #Get-Service -ComputerName $PrimaryServer | Start-Service
        docker start testcontainer
        Write-Host "Chaos experiment rolled back successfully!"
    }
    catch{
        Write-Error "Unable to rollback chaos experiment!"
    }
}