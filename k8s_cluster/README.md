# START INSTRUCTION KIND
## KIND
### Create Cluster
`kind create cluster --config ./kind/kind.config`

### Delete Cluster
`kind delete cluster --name local-k8s`

### Load Local Repo to Cluster 
- in production you will use a container registry
`kind load docker-image splunk-enterprise-arm64 --name local-k8s`
### Create Cluster
`kind create cluster --config ./kind/kind.config`

### Delete Cluster
`kind delete cluster --name local-k8s`

## K8S DNS RESOLUTION
- add local dns records to K8S cluster
`kubectl edit cm coredns -n kube-system`
- nginx is always preserved on Cluster IP 10.96.156.1 (check `kind.yaml`), check yaml to change
- added entry
<pre>
apiVersion: v1
data:
  Corefile: |
    .:53 {
        errors
        health {
           lameduck 5s
        }
        hosts {
           10.96.156.1 splunk.local.io
           10.96.156.1 cribl.local.io
           10.96.156.1 gitea.local.io
           10.96.156.1 minio.local.io
           10.96.156.1 ingest-minio.local.io
           fallthrough
        }
        ready
</pre>
`kubectl rollout restart -n kube-system deployment/coredns`

## PERSISTENT LOCAL VOLUME
<pre>
extraMounts:
-   hostPath: /tmp/k8s/etl
    containerPath: /tmp/etl
</pre>

## PORT FORWARDING TO LOCAL MACHINE
<pre>
-   containerPort: 30002
    hostPort: 30002
    listenAddress: "0.0.0.0" # Optional, defaults to "0.0.0.0"
    protocol: tcp # Optional, defaults to tcp
</pre>