#!/bin/sh
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack -n monitoring --create-namespace -f monitoring_values.yaml
kubectl apply -f devcats-deploy.yaml
kubectl apply -f devcats-service.yaml
