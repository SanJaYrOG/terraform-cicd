#!/bin/bash
SLACK_WEBHOOK_URL=$1
terraform plan -out=plan_out
MESSAGE="$(terraform show plan_out)"
echo $MESSAGE
POST "${SLACK_WEBHOOK_URL}" Content-type: application/json { "text": $MESSAGE }  
                              
