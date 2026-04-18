## ☁️ Run in Cloud Shell:

```bash
curl -LO https://raw.githubusercontent.com/chayandeokar/GCP-Cloud-Solutions/refs/heads/master/VPC%20Flow%20Logs%20-%20Analyzing%20Network%20Traffic/chayan.sh
sudo chmod +x chayan.sh 
./chayan.sh
```
### Sink Name: `vpc-flows`

```bash
export ZONE=$(gcloud compute instances list --filter="name=centos-clean" --format="value(zone)")
gcloud compute ssh centos-clean --zone=$ZONE --quiet
```
</div>

---

## 🎉 **Congratulations! Lab Completed Successfully!** 🏆  
