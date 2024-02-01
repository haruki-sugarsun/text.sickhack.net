#!/bin/bash
set -o errexit
set -o nounset

cat _config.yml | sed -e 's/^remote_theme/#remote_theme/' -e 's/^#theme:/theme:/' > _config_local.yml
bundle exec jekyll serve --config _config_local.yml --incremental
