## SOURCES_DESTINATIONS
### SPLUNK
#### CONFIGURATION
- MinIO as remote storage can be defined by uncomment the section in sources_destinations/splunk/enterprise/values.yaml
- Actual the setting applies to standalone deployment
- Persistent storage of /opt/splunk/etc is on /tmp/cribl/splunk

#### M1 Adjustment
- download local repository to kind in arm64 architecture
`docker build --platform linux/amd64 -t splunk-enterprise-arm64 .`
`kind --name cribl load docker-image splunk-enterprise-arm64`

#### SECRETS AUTOMATICAL 
`kubectl get secret splunk-default-secret -o yaml --namespace splunk`
`echo base64-password | base64 --decode`

#### DOWNLOAD HELMCHART
`helm repo add splunk https://splunk.github.io/splunk-operator/`

#### SHOW DEFAULT SETTINGS HELMCHART
`helm show values splunk/splunk-operator`
`helm show values splunk/splunk-enterprise`

#### START HELM DEPLOYMENT
`helm install splunk-operator splunk/splunk-operator -f sources_destinations/splunk/operator/values.yaml --namespace splunk`
`helm install splunk-enterprise splunk/splunk-enterprise -f sources_destinations/splunk/enterprise/values.yaml --namespace splunk`

#### DELTE HELM DEPLOYMENT
`helm uninstall splunk-operator`
`helm uninstall splunk-enterprise`


### GUI URL
`http://splunk.local.io:30002`

https://github.com/splunk/splunk-operator/blob/main/docs/CustomResources.md
