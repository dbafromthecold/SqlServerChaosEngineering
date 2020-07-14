

# Navigate to script location
Set-Location C:\git\SqlServerChaosEngineering\Demos\AvailabilityGroup



# Run chaos engineering experiment
.\AvailabilityGroupExperiment.ps1 -Server AP-SQLAG-01 -AvailabilityGroup AG1



# Reset experiment
.\ResetExperiment.ps1



# Run experiment one more time
.\AvailabilityGroupExperiment.ps1 -Server AP-SQLAG-02 -AvailabilityGroup AG1



# Reset experiment
.\ResetExperiment.ps1



# Retry experiment
.\AvailabilityGroupExperiment.ps1 -Server AP-SQLAG-02 -AvailabilityGroup AG1



# Reset experiment
.\ResetExperiment.ps1



# Navigate to Chaos Toolkit experiment
Set-Location C:\git\SqlServerChaosEngineering\Demos\ChaosToolkit



# Set environment variables
$env:SERVER = "AP-SQLAG-01"
$env:LISTENER_NAME = "AP-SQLAG-03"



# run experiment
chaos run experiment.json