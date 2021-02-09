#!/bin/bash
set -ex
kapp deploy -a ingress-nginx \
            -f <(ytt --ignore-unknown-comments \
                     -f $(dirname $0)/vendor/ingress-nginx/deploy/static/provider/cloud/deploy.yaml \
                     -f $(dirname $0)/ytt/ingress-nginx) \
            -c \
            $@