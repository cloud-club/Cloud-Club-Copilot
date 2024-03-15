# 결과물

## AKS service & ingress 배포하기

```bash
az aks get-credentials --resource-group <resourceGroup> --name <AKSName>
kubelogin convert-kubeconfig -l azurecli

cd manifest
kubectl apply -f ingress.yaml
kubectl apply -f internal-lb.yaml
```

- `kubelogin` 쓰는 이유

## App Gateway public ip로 앱 확인하기

짜잔.
