## ☁️ Run in Cloud Shell:

```bash
curl -LO raw.githubusercontent.com/prateekrajput08/Arcade-Google-Cloud-Labs/refs/heads/main/VPC%20Flow%20Logs%20-%20Analyzing%20Network%20Traffic/TechCode.sh
sudo chmod +x TechCode.sh 
./TechCode.sh
```
### Sink Name: `vpc-flows`

```bash
export ZONE=$(gcloud compute instances list --filter="name=centos-clean" --format="value(zone)")
gcloud compute ssh centos-clean --zone=$ZONE --quiet
```
</div>

---

## 🎉 **Congratulations! Lab Completed Successfully!** 🏆  
