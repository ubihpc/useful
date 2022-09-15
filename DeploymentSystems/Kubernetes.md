# Kubernetes commands

## Concepts

* Pod: One or more container with shared storage/network. Most basic unit in K8S cluster
* Pod label: Key-value pairs
* Service: Long-running object with an IP address and a stable fixed port. Services can be attached to pods. It requires a selector e.g. pod label
* Replica set: Allows to restart pods transparently
* Deployment: Allows to modify replica sets easily to deploy new docker images with zero downtime
* Namespaces: Group of pods, services, deployments, etc., organized under some logic, e.g. frontend, backend, etc. There is a default namespace and two belonging to Kubernetes itself - kube-public and kube-system
* Logs: Only applies to pods

## Specs:

* By default Kubernetes is going to remember the last 2 revisions of a rollout

## Minikube

This section relates to local kubernetes deployment using Minikube

#### Start Minikube

```bash
minikube start
```

#### Stop Minikube

```bash
minikube stop
```

#### Connect MiniKube to Docker daemon

```bash
minikube docker-env
eval $(minikube -p minikube docker-env)
```

#### Check if Minikube is connected to Docker daemon

```bash
docker image ls ## Should show minikube docker images e.g. k8s.gcr.io/kube-apiserver
```

#### Check Minikube VM IP

```bash
minikube ip
```

## AWS Elastic Kubernetes Service

This section relates to cloud-hosted deployment using AWS EKS 

## General

#### Show everything defined in a K8S cluster

```bash
kubectl get all
```

#### Show pods in a K8S cluster

```bash
kubectl get pods # all pods
kubectl get pods --show-labels # all pods with labels
kubectl get pods -l <LABEL_KEY>=<LABEL_VALUE>  # filter accordingly to labels
```

#### Apply from every file in folder

```bash
kubectl apply -f .
```

#### Delete all running pods, replicaSets, deployments, etc using yaml files in folder

```bash
kubectl delete -f .
```

#### Describe something

```bash
kubectl describe <pod,po>,<service,svc>,<replicaset,rs> <NAME_OF_THE_THING>
```

#### Get Pod logs 

When describe does not give sufficient information

```bash
kubectl logs <NAME_OF_THE_POD> # does not need the pod/
kubectl logs -f <NAME_OF_THE_POD> # Freeze the console / Following the log. If it stops it is because the container was restarted
```

#### Get nodes in cluster

```bash
kubectl get nodes
```

## Pods

#### Deploy pod to K8S cluster (changes are the same)

```bash
kubectl apply -f <POD_FILE_NAME>.yaml
```

#### Get information about pod

```bash
kubectl describe pod <POD_NAME>
```

#### Execute command in pod

```bash
kubectl exec <POD_NAME> -- <COMMAND>
```

#### Connect to pod

```bash
kubectl exec -it <POD_NAME> -- sh
```

#### Delete pod

```bash
kubectl delete pod <POD_NAME> # You may use short word po as well
```

#### Delete all pods

```bash
kubectl delete pod --all
```

#### Get the nodes where pods are running and pods' IPs

```bash
kubectl get pods/po -o wide
```


## Services

#### Deploy service to K8S cluster (changes are the same)

```bash
kubectl apply -f <SERVICE_FILE_NAME>.yaml
```

#### Describe service

```bash
kubectl describe service <SERVICE_NAME>
kubectl describe svc <SERVICE_NAME> # with shortname svc = service
```

## Replica sets

#### Delete replica set

```bash
kubectl delete rs <REPLICASET_NAME> 
```

## Deployment and rollout

#### Check out the state of a deployment (rollout)

```bash
kubectl rollout status deployment <DEPLOYMENT_NAME> # can use shorter word deploy as well
```

#### Check rollout history 

```bash
kubectl rollout history deploy <DEPLOYMENT_NAME> 
```

#### Go back to previous deployment without changing YAML file

However, we should update the YAML file so everthing matches

```bash
## --to-revision is only necessary when going to other than the last one 
kubectl rollout undo deploy <DEPLOYMENT_NAME> --to-revision=<REVISION_NUMBER>
```

## Namespaces

#### Get all namespaces

```bash
kubectl get namespaces # or ns
```

#### Get resources in namespace

```bash
kubectl get all -n <namespace> # kubectrl get all -n kube-system
```

## Volumes

#### Get persistent volumnes

```bash
kubectl get pv
```
#### Get persistent volumnes claims

```bash
kubectl get pvc
```