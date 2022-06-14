#!/bin/bash

sec=`aws --region us-east-1 secretsmanager get-secret-value --secret-id db-sec|awk -F '"'  '{print $8}'|xargs`

sed -i 's/secret/$sec/g' $1/db.properties
