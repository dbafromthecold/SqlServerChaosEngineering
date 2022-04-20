###################################################################################################
###################################################################################################
#
# https://github.com/dbafromthecold/SqlServerChaosEngineering
# 
# Chaos Engineering with KubeInvaders
#  
# Andrew Pruski
# @dbafromthecold
# www.dbafromthecold.com
# 
###################################################################################################
###################################################################################################



# set location
cd C:\git\SqlServerChaosEngineering\Demos\KubeInvaders



# switch context to cluster
kubectl config use-context kubeinvadersclu1



# confirm connection to local cluster
kubectl get nodes



# deploy one pod running SQL Server and expose
kubectl apply -f sqlserver-local.yaml



# view deployment, pod, and service
kubectl get deployment
kubectl get pods
kubectl get service



# confirm SQL Server version
$IpAddress=$(kubectl get service sqlserver --no-headers -o custom-columns=":status.loadBalancer.ingress[*].ip")
mssql-cli -S $IpAddress -U sa -P Testing1122 -Q "SELECT @@VERSION AS [Version];"




# view pod IP address
kubectl get pods -o wide



# delete pod
$PODNAME=$(kubectl get pods --no-headers -o custom-columns=":metadata.name")
kubectl delete pod $PODNAME



# view new pod
kubectl get pods -o wide



# view service
kubectl get service



# run query again
mssql-cli -S $IpAddress -U sa -P Testing1122 -Q "SELECT @@VERSION"



# clean up locally
kubectl delete deployment sqlserver
kubectl delete service sqlserver



# deploy 10 pods running SQL Server
kubectl apply -f sqlserver-kubeinvaders.yaml



# view pods
kubectl get pods -o wide



# watch pods
kubectl get pods --watch



# clean up
kubectl delete deployment sqlserver
