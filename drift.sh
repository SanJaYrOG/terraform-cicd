#!/bin/bash
SLACK_WEBHOOK_URL=$1
terraform plan -out=plan_out
MESSAGE="$(terraform show plan_out)"
echo $MESSAGE
curl -X POST -H 'Content-type: application/json' --data "{'text': "$MESSAGE"}" "${SLACK_WEBHOOK_URL}" 
                              
