#!/bin/bash
set -a

# The name of your secret as it should appear on AWS
SECRET_NAME=jwt-auth-token
description_SECRET=jwtsecret
# Secrets Recover Window: https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_delete-restore-secret.html
RECOVERY_WINDOW=7
# The directory in which to create json secrets files
FILE="./"
FILE_JSON="$SECRET_NAME.secrets.json"
