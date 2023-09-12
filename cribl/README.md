# CRIBL CLUSTER SETUP
This repository is used to deploy a multi node cribl cluster with a self-hosted version control system.

PURPOSE: Playground for future projects

### GITEA (ONLY FOR ENTERPRISE LICENSE REQUIRED)
#### DOWNLOAD HELMCHART
`helm repo add gitea-charts https://dl.gitea.io/charts/`

#### START HELM DEPLOYMENT
`helm install gitea gitea-charts/gitea -f values.yaml`

#### DELTE HELM DEPLOYMENT
`helm uninstall gitea`

### CRIBL
https://docs.cribl.io/stream/deploy-kubernetes/
#### DOWNLOAD HELMCHART
`helm repo add cribl https://criblio.github.io/helm-charts/`

#### SHOW DEFAULT SETTINGS HELMCHART
`helm show values cribl/logstream-leader`
`helm show values cribl/logstream-workergroup`

#### START HELM DEPLOYMENT
`helm install logstream-leader cribl/logstream-leader -f cribl/leader/values.yaml --namespace cribl`

`helm install logstream-workergroup cribl/logstream-workergroup -f cribl/worker/values.yaml --namespace cribl`

#### DELTE HELM DEPLOYMENT
`helm uninstall logstream-leader`
`helm uninstall logstream-workergroup`

## GITEA
### GUI URL
`http://gitea.local.io:30002`

## CRIBL
### GUI URL
`http://cribl.local.io:30002`

## INFORMATION
#### PERSISTENT STORAGE
- local Host /tmp/etl
