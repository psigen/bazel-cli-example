#!/bin/bash
set -euo pipefail

export AWS_CONFIG_FILE=./tools/aws/awsconfig.ini

if ! grep -Fxq "### BEGIN AWS CONFIG ###" ~/.aws/config
then
    # If the AWS config is not present, append it to the end of the file.
    echo "Adding AWS configuration to local config..."
    echo "" >> ~/.aws/config
    cat ./tools/aws/awsconfig.ini >> ~/.aws/config
else
    # Replace the existing managed block with the current block.
    # See: https://stackoverflow.com/a/63982859
    sed -i '/^### BEGIN AWS CONFIG ###$/,/^### END AWS CONFIG ###$/{/^### END AWS CONFIG ###$/{x;r ./tools/aws/awsconfig.ini
D};d}' ~/.aws/config
fi

# Log in using browser-based SSO.
aws sso login --profile YYYYYY

# Get security credentials for profiles of interest.
yawsso -p XXXXXX-infra-dev XXXXXX-infra-staging XXXXXX-infra-prod
