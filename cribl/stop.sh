### START GITEA
# helm uninstall gitea
### END GITEA

### START CRIBL
helm uninstall logstream-leader --namespace cribl
helm uninstall logstream-workergroup --namespace cribl
### END CRIBL

kubectl delete -f ./cribl.yaml --namespace cribl