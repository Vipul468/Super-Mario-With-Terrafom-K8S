# 🎮 Super Mario on Kubernetes using Terraform

Deploy a Super Mario web game to Kubernetes using Terraform.

## Architecture

Browser → NodePort Service → Kubernetes Deployment → Super Mario Pod

## Prerequisites

- Docker
- Minikube
- kubectl
- Terraform
- Git

## Quick Start

### 1. Start Minikube

```bash
minikube start --driver=docker
kubectl get nodes
```

### 2. Deploy with Terraform

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

Type `yes` when prompted.

### 3. Check the deployment

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```

### 4. Open Super Mario

```bash
minikube service super-mario
```

Or get the URL:

```bash
minikube service super-mario --url
```

Open the returned URL in your browser.

## Cleanup

```bash
cd terraform
terraform destroy
```

Then optionally:

```bash
minikube stop
```

## Project Components

- Kubernetes Deployment
- Kubernetes NodePort Service
- Container image: `pengbai/docker-supermario`
- Terraform Kubernetes provider
- Minikube local Kubernetes cluster

## Useful Commands

```bash
kubectl get pods -o wide
kubectl describe pod -l app=super-mario
kubectl logs -l app=super-mario
kubectl get svc super-mario
```
