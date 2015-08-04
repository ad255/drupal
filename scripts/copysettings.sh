#!/bin/bash

#
# Navigate to the Outputs tab of the CloudFormation stack to find the
# name of your environment's bucket. Replace the value below with the
# name of the bucket from your environment.
#
BUCKETNAME=tony-devops-bootcamp-bucket-1gdwml3bb8crm

aws s3 cp s3://$BUCKETNAME/settings.php /var/www/html/sites/default/settings.php
chown apache:apache /var/www/html/sites/default/settings.php
chmod 400 /var/www/html/sites/default/settings.php
