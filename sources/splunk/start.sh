kubectl apply -f ./splunk.yaml

### START SPLUNK
helm repo add splunk https://splunk.github.io/splunk-operator/
helm install splunk-operator splunk/splunk-operator -f ./operator/values.yaml --namespace splunk
helm install splunk-enterprise splunk/splunk-enterprise -f ./enterprise/values.yaml --namespace splunk
### END SPLUNK