#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 Machine Builder AG
#
# SPDX-License-Identifier: MIT

set -xeu
# shellcheck disable=SC1083
systemctl stop dummy-asset-link

systemctl daemon-reload
