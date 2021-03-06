#!/bin/bash
. /config/cloud/aws/onboard_config_vars
f5-rest-node /config/cloud/aws/node_modules/@f5devcentral/f5-cloud-libs/scripts/autoscale.js --cloud aws --provider-options s3Bucket:${s3Bucket},sqsUrl:${sqsUrl},mgmtPort:${managementGuiPort} --host localhost --port ${managementGuiPort} --user ${adminUsername} --password-url file:///config/cloud/aws/.adminPassword --password-encrypted --device-group autoscale-group --cluster-action backup-ucs --log-level silly --output /var/log/cloud/aws/autoscale.log 
