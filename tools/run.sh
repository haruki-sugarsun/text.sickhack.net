#!/bin/bash
./tools/confluence_site_converter --user text@sickhack.net \
                                  --password ${CONFLUENCE_TOKEN} \
                                  --root-page-id 506363930 \
                                  --cache false \
                                  --cache-dir cache \
                                  --output-dir _confluence_pages \
                                  --sleep 1 \
    > processing.log 2>&1
