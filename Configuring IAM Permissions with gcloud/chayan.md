### Run the following Commands in CloudShell

```
gcloud compute ssh centos-clean --zone=$(gcloud compute project-info describe --format="value(commonInstanceMetadata.items[google-compute-default-zone])") --quiet
```
```
curl -LO https://raw.githubusercontent.com/chayandeokar/GCP-Cloud-Solutions/refs/heads/master/Configuring%20IAM%20Permissions%20with%20gcloud/chayan.sh
sudo chmod +x chayan.sh
./chayan.sh
```


<div align="center">
  
# Congratulations !!!!
