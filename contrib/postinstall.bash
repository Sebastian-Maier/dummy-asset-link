#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 Machine Builder AG
#
# SPDX-License-Identifier: MIT

set -xeu

systemctl daemon-reload
# shellcheck disable=SC1083
systemctl enable dummy-asset-link.service
# shellcheck disable=SC1083
systemctl start dummy-asset-link.service
