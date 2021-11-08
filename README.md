# hb-k8s

BE - K8S.

1- Create secret for MSSQL:

    kubectl create secret generic mssql --from-literal=SA_PASSWORD="pa55w0rd!"

2- Create secret for GHCR:

    kubectl -n default create secret docker-registry hangbuddy --docker-server=ghcr.io --docker-username=<GITHUB_USERNAME> --docker-password=<GITHUB_PAT> --docker-email=<GITHUB_EMAIL>
    
3- Use following commands to deploy the application on your local environment:

    kubectl apply -f mssql-plat-depl.yaml
    kubectl apply -f users-depl.yaml
    kubectl apply -f events-depl.yaml
    kubectl apply -f local-pvc.yaml
    kubectl apply -f users-np-srv.yaml

Helper commands:

    kubectl get pods
    kubectl get services
    kubectl get deployments
