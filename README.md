# Startup
## Checklist
- "/tmp/k8s/etl" exists locally 
- /etc/hosts add

## Running
- start all tools with `start.sh`
- stop all tools with `stop.sh`

# Information
- This repository was used to get to-know cribl - deploys cribl with leader and worker groups
- Gitea implementation was planned but not possible in free version

# Default Passwords
- Splunk<br>
`admin | myownsplunk`

- MinIO<br>
`admin | myownminio`

- Cribl<br>
`admin | myowncribl`

# Default Endpoints
- Gitea<br>
`http://gitea.local.io:30002`

- Cribl (Leader)<br>
`http://cribl.local.io:30002`

- Splunk<br>
 `http://splunk.local.io:30002`

- MinIO<br>
  `http://minio.local.io:30002`

- MinIO Ingest<br>
  `http://ingest-minio.local.io:30002`

# Open Implementation
- Elasticsearch
- New Relic
- Prometheus/Grafana

# Routing
- is done via nginx --> `k8s_cluster/kind.yaml`
