# SPDX-FileCopyrightText: 2026 Machine Builder AG
#
# SPDX-License-Identifier: MIT

FROM scratch

COPY --chmod=0755 dummy-asset-link /al

ENTRYPOINT ["/al"]
