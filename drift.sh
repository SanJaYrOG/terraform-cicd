#!/bin/bash
SLACK_WEBHOOK_URL=$1
terraform plan --detailed-exitcode -out=tf.plan
MESSAGE="$(terraform show -no-color --detailed-exitcode)"
curl -X POST -H 'Content-type: application/json' --data '{"text": "$MESSAGE"}' "${SLACK_WEBHOOK_URL}"
echo !!

