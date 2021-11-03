﻿# hb-k8s

BE - K8S.

DISCLAIMER: K8S configuration is not complete yet. Use following commands to run the application:

    docker pull ghcr.io/hangbuddy/hb-user-service:master
    docker run -p 8080:80 ghcr.io/hangbuddy/hb-user-service:master


1- (Can be skipped in DEV) Create secret for MSSQL:

    kubectl create secret generic mssql --from-literal=SA_PASSWORD="pa55w0rd!"
    
2- Use following commands to deploy the application on your local environment:

    kubectl apply -f mssql-plat-depl.yaml
    kubectl apply -f users-depl.yaml
    kubectl apply -f local-pvc.yaml
    kubectl apply -f users-np-srv.yaml

Helper commands:

    kubectl get pods
    kubectl get services
    kubectl get deployments
