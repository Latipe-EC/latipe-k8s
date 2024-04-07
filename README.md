```
kubectl config set-context --current --namespace=latipe
```

```
kubectl apply -f config/limits-range.yaml

kubectl apply -f config/reloader.yaml
```

```
kubectl apply -f secrets/mysql-secret.yaml
kubectl apply -f secrets/mongodb-secret.yaml
kubectl apply -f secrets/latipe-service-secret.yaml
```

```


kubectl apply -f config-maps/redis-cluster-configmap.yaml

kubectl apply -f config-maps/rabbitmq-configmap.yaml

kubectl apply -f config-maps/elasticsearch-configmap.yaml

kubectl apply -f config-maps/latipe-service-configmap.yaml

kubectl apply -f config-maps/loki-configmap.yaml
```

```
kubectl apply -f public-services/mysql.yaml

kubectl apply -f public-services/redis-cluster.yaml

kubectl apply -f public-services/rabbitmq.yaml

kubectl delete -f public-services/elasticsearch.yaml

kubectl apply -f public-services/mongodb.yaml

helm repo add grafana https://grafana.github.io/helm-charts

helm install tempo grafana/tempo

kubectl delete -f public-services/loki.yaml
```

```
kubectl delete -f latipe-services/latipe-user-deploy.yml
```

```
kubectl get pods

kubectl describe pod loki-8ftbs

kubectl get statefulset

kubectl describe statefulset tempo

kubectl logs tempo-0

kubectl get pods --watch
```

```
docker run --name rancher-server -d --restart=unless-stopped -p 6860:80 -p 6868:443 --privileged rancher/rancher:v2.8.3

docker logs  49f6eaa6dea6d852e0d5ba5ad7b86fd34e168473d1efe9e51ffbc305174ead0d  2>&1 | grep "Bootstrap Password:"
2024/04/04 12:08:57 [INFO] Bootstrap Password: 1oCcmCFSwkO5JGAB
```