#!/bin/bash
set -eu

chmod +x ./tools/confluence_site_converter
./tools/confluence_site_converter --domain sickhack.atlassian.net \
                                  --user text@sickhack.net \
                                  --password ${CONFLUENCE_TOKEN} \
                                  --root-page-id 506363930 \
                                  --space-id 507248673 \
                                  --process-one-target-id ${PROCESS_ONE_TARGET:--} \
                                  --incremental ${INCREMENTAL:-false} \
                                  --cache ${USE_CACHE:-false} \
                                  --cache-dir cache \
                                  --output-dir _confluence_pages \
                                  --sleep ${SLEEP_SEC:-1} \
    2>&1 | tee processing.log
