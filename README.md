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

4. Deploy ingress-nginx controller:

        kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.5/deploy/static/provider/cloud/deploy.yaml

4. Wait for ingres-nginx pod to run:
        
        kubectl get pods --namespace=ingress-nginx

5. Deploy the appication on your local environment:
        
        kubectl apply -f ./
        

6. After a while (approximately 1 minutes) ingress service will have an adress. Add this address to hosts file:

        kubectl get ingress
    
Helper commands:

    kubectl get pods
    kubectl get services
    kubectl get deployments
    kubectl get ingress

# K8S Architecture 
 <img width="740" alt="image" src="https://user-images.githubusercontent.com/11320867/142763364-f12a396e-9eed-40a9-a022-8fc9c2435dfe.png">
