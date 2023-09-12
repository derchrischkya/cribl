kubectl apply -f ./cribl.yaml --namespace cribl

### START GITEA
# helm repo add gitea-charts https://dl.gitea.io/charts/
# helm install gitea gitea-charts/gitea -f ./gitea/values.yaml --namespace cribl`
### END GITEA

### START CRIBL
helm repo add cribl https://criblio.github.io/helm-charts/
helm install logstream-leader cribl/logstream-leader -f cribl/leader/values.yaml --namespace cribl
helm install logstream-workergroup cribl/logstream-workergroup -f cribl/worker/values.yaml --namespace cribl
### END CRIBL