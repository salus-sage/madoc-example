#!/usr/bin/env bash
set -ex

# Test homepage
[[ "$(curl -sS "http://localhost:8898/" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]

# Test example site
[[ "$(curl -sS "http://localhost:8898/s/default/page/welcome" --output /dev/null --write-out '%{http_code}' 2>&1)" == "200" ]]
