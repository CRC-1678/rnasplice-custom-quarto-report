#!/bin/bash
set -euxo pipefail

# Knit the rnasplice report

# This is what rstudio does:
# quarto preview rnasplice_report.qmd --to html --no-watch-inputs --no-browse

# This is what I do (render with parameters):
# To renew cached objects add: --cache-refresh

# Define your basic directory (path to output of nf-core/rnasplice) and path to gtf file (optional):

BASEDIR=".
GTF=""

quarto render rnasplice_report.qmd --to html \
--output "rnasplice_report-$(date +%Y-%m-%d).html" \
-P base_dir:"$BASEDIR" \
-P gtf:"$GTF" \
--cache-refresh \
--log quarto_render.log 


exit 0