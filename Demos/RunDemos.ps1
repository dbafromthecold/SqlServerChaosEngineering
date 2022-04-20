###################################################################################################
###################################################################################################
#
# https://github.com/dbafromthecold/SqlServerChaosEngineering
# 
# Chaos Engineering for SQL Server - Availability Group Experiment
#  
# Andrew Pruski
# @dbafromthecold
# www.dbafromthecold.com
# 
###################################################################################################
###################################################################################################



# Navigate to script location
Set-Location C:\git\SqlServerChaosEngineering\Demos\AvailabilityGroup



# Run chaos engineering experiment
.\AvailabilityGroupExperiment.ps1 -Server CHAOS-SQL-01 -AvailabilityGroup AGDR



# Reset experiment
.\ResetExperiment.ps1



# Run experiment one more time
.\AvailabilityGroupExperiment.ps1 -Server CHAOS-SQL-02 -AvailabilityGroup AGDR



# Reset experiment
.\ResetExperiment.ps1



# Retry experiment
.\AvailabilityGroupExperiment.ps1 -Server CHAOS-SQL-02 -AvailabilityGroup AGDR



# Reset experiment
.\ResetExperiment.ps1



# Navigate to Chaos Toolkit experiment
Set-Location C:\git\SqlServerChaosEngineering\Demos\ChaosToolkit



# Set environment variables
$env:SERVER = "CHAOS-SQL-01"
$env:LISTENER_NAME = "CHAOS-SQL-03"



# run experiment
chaos run experiment.json