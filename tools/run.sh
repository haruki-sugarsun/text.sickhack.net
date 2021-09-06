#!/bin/bash
set -eu

./tools/confluence_site_converter --domain sickhack.atlassian.net \
                                  --user text@sickhack.net \
                                  --password ${CONFLUENCE_TOKEN} \
                                  --root-page-id 506363930 \
                                  --cache ${USE_CACHE:-false} \
                                  --cache-dir cache \
                                  --output-dir _confluence_pages \
                                  --sleep ${SLEEP_SEC:-1} \
    > processing.log 2>&1