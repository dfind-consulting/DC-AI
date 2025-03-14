# DC-AI

Kubernetes configuration for the DeepSeek AI cluster and install scripts


## Deploy DeepSeek as a Kubernetes Pod

```
sudo k8s kubectl apply -f deepseek-deployment.yaml
```

## Expose the DeepSeek Service

```
sudo k8s kubectl apply -f deepseek-service.yaml
```