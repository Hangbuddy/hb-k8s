# hb-k8s

# Requirements
1. Docker (Min. v20.10.8)
2. Kubernetes (Min. v1.21.5)

# Initialization

1. Create secret for MSSQL:

        kubectl create secret generic mssql --from-literal=SA_PASSWORD="pa55w0rd!"

2. Create secret for GHCR:

        kubectl -n default create secret docker-registry hangbuddy --docker-server=ghcr.io --docker-username=<GITHUB_USERNAME> --docker-password=<GITHUB_PAT> --docker-email=<GITHUB_EMAIL>

3. Get ingress-nginx:

        helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace

4. Wait for ingres-nginx pod to run:
        
        kubectl get pods --namespace=ingress-nginx

5. After a while (approximately 1 minutes) ingress service will have an adress. Add this address to hosts file:

        kubectl get ingress
    
6. Use following commands to deploy the application on your local environment:

        kubectl apply -f mssql-plat-depl.yaml
        kubectl apply -f users-depl.yaml
        kubectl apply -f events-depl.yaml
        kubectl apply -f local-pvc.yaml
        kubectl apply -f users-np-srv.yaml

Helper commands:

    kubectl get pods
    kubectl get services
    kubectl get deployments
    kubectl get ingress

# K8S Architecture 
 ![image](https://user-images.githubusercontent.com/11320867/140821314-965f8348-b9a2-4076-a302-247359029777.png)
