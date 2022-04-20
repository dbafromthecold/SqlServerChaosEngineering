
$Service1 = Get-Service -ComputerName CHAOS-SQL-01 -Name MSSQLSERVER
if($Service1.Status -eq "Stopped"){
    Get-Service -ComputerName CHAOS-SQL-01 -Name MSSQLSERVER | Start-Service
}

$Service2 = Get-Service -ComputerName CHAOS-SQL-02 -Name MSSQLSERVER
if($Service2.Status -eq "Stopped"){
    Get-Service -ComputerName CHAOS-SQL-02 -Name MSSQLSERVER | Start-Service
}

$Service3 = Get-Service -ComputerName CHAOS-SQL-01 -Name SQLSERVERAGENT
if($Service3.Status -eq "Stopped"){
    Get-Service -ComputerName CHAOS-SQL-01 -Name SQLSERVERAGENT | Start-Service
}

$Service4 = Get-Service -ComputerName CHAOS-SQL-02 -Name SQLSERVERAGENT
if($Service4.Status -eq "Stopped"){
    Get-Service -ComputerName CHAOS-SQL-02 -Name SQLSERVERAGENT | Start-Service
}