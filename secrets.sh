#!/bin/bash
set -e
source ./scripts/create_secret.sh
source ./scripts/delete_secret.sh
source ./scripts/update_secret.sh

echo "What do you want to do with AWS Secrets? (Type the number associated with your choice)"
select yn in "Create" "Update" "Delete"; do
    case $yn in
        Create ) create_secret; break;;
        Update ) update_secret; break;;
        Delete ) delete_secret; break;;
    esac
done% 
