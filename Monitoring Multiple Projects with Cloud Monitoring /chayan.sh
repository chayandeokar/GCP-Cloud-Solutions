#!/bin/bash

read -p "${YELLOW}${BOLD}Enter the ZONE: ${RESET}" ZONE

echo "${YELLOW}${BOLD}Starting${RESET}" "${GREEN}${BOLD}Progress..${RESET}"


# Export variables after collecting input
export ZONE

gcloud compute instances create instance2 --zone=$ZONE --machine-type=e2-medium


cat > arcadelabs.json <<EOF_CP
{
  "displayName": "Uptime Check Policy",
  "userLabels": {},
  "conditions": [
    {
      "displayName": "VM Instance - Check passed",
      "conditionAbsent": {
        "filter": "resource.type = \"gce_instance\" AND metric.type = \"monitoring.googleapis.com/uptime_check/check_passed\" AND metric.labels.check_id = \"demogroup-uptime-check-f-UeocjSHdQ\"",
        "aggregations": [
          {
            "alignmentPeriod": "300s",
            "crossSeriesReducer": "REDUCE_NONE",
            "perSeriesAligner": "ALIGN_FRACTION_TRUE"
          }
        ],
        "duration": "300s",
        "trigger": {
          "count": 1
        }
      }
    }
  ],
  "alertStrategy": {},
  "combiner": "OR",
  "enabled": true,
  "notificationChannels": [],
  "severity": "SEVERITY_UNSPECIFIED"
}
EOF_CP


gcloud alpha monitoring policies create --policy-from-file=arcadelabs.json
