kubectl apply -f mssql-plat-depl.yaml
kubectl apply -f users-depl.yaml
kubectl apply -f events-depl.yaml
kubectl apply -f local-pvc.yaml
kubectl apply -f users-np-srv.yaml