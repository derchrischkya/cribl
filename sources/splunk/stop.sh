### START SPLUNK
helm uninstall splunk-operator --namespace splunk
helm uninstall splunk-enterprise --namespace splunk
### END SPLUNK

kubectl delete -f ./splunk.yaml