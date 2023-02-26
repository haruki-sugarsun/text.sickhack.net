#!/bin/bash
set -eu

./tools/confluence_site_converter --domain sickhack.atlassian.net \
                                  --user text@sickhack.net \
                                  --password ${CONFLUENCE_TOKEN} \
                                  --root-page-id 506363930 \
                                  --process-one-target-id ${PROCESS_ONE_TARGET:--} \
                                  --cache ${USE_CACHE:-false} \
                                  --cache-dir cache \
                                  --output-dir _confluence_pages \
                                  --sleep ${SLEEP_SEC:-1} \
    2>&1 | tee processing.log
