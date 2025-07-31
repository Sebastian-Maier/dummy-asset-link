#!/usr/bin/env bash

# SPDX-FileCopyrightText: 2024 Machine Builder AG
#
# SPDX-License-Identifier: MIT

nohup go run -tags webserver main.go &
bash ./testscripts/wait_till_al_is_started.sh

ASSET_ENDPOINT_PORT=${ASSET_ENDPOINT_PORT:-localhost:8081}

echo "OS_NAME: ${OS_NAME}"
echo "ARCH_NAME: ${ARCH_NAME}"

curl -L -o al-ctl_${OS_NAME}_${ARCH_NAME}.tar.gz https://github.com/industrial-asset-hub/asset-link-sdk/releases/download/v3.4.3/al-ctl_${OS_NAME}_${ARCH_NAME}.tar.gz
tar -xf al-ctl_${OS_NAME}_${ARCH_NAME}.tar.gz
chmod +x al-ctl

# Run the tests
./al-ctl test api -e ${ASSET_ENDPOINT_PORT} --service-name discovery