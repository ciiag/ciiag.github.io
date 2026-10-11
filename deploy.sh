#!/usr/bin/env bash
# Publish this repo to ciiag.org, served from HostGator at ~/public_html/ciiag.org.
#
# Needs a `hostgator` host in ~/.ssh/config (cPanel user, port 2222 on shared plans)
# with an authorised key. The docroot is owned by the ssh user, so no sudo.
#
# GitHub Pages is no longer the live site: the deploy workflow is disabled and this
# script is the only thing that updates ciiag.org. Pushing to main does not deploy.
set -euo pipefail
cd "$(dirname "$0")"
rsync -az --delete \
  --exclude '.git/' --exclude '.github/' --exclude '.gitignore' \
  --exclude 'README.md' --exclude 'deploy.sh' --exclude 'cgi-bin/' \
  ./ hostgator:public_html/ciiag.org/
curl -fsS -o /dev/null -w 'ciiag.org %{http_code}\n' https://ciiag.org/
