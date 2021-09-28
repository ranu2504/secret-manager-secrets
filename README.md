# secret-manager-secrets
# Utilities

This directory contains a script to help automate the process of managing secrets on AWS.

## Prerequisites

* Update the `vars.sh` by replacing `SECRET_NAME_GOES_HERE` with the name of your secret as you wish it to appear on AWS.
* Update the `vars.sh` by replacing `description_GOES_HERE` with the description of your secret as you wish it to appear on AWS.

* The `vars.sh` file defines a recovery window of 7 days, but you can change this. For more info on what a recovery window is, check out this [link](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_delete-restore-secret.html).


## Running the Script

From within the directory, simply run `sh ./secrets.sh`, and you will be presented with four options:

* Create

* Delete

### Create

This function requires that a `SECRET_NAME.secrets.json` file exists within the directory.

That files existence will be verified, and the JSON will be validated. Once those checks pass, that JSON will be uploaded to AWS Secrets Manager for you.

### Delete

This function will be prompt you to ensure you wish to proceed with the deletion. In addition, once the delete function finishes, you will be given a command you can run to restore your deleted secret.

_NOTE_: The command to restore a secret is only valid within the number of days that fall in the recovery window.
