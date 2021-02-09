#!/bin/bash
set -ex
kapp deploy -a cluster-issuer-azuredns \
            -f <(ytt --ignore-unknown-comments \
                     -f $(dirname $0)/ytt/cert-manager/azuredns-config.yml \
                     -f $(dirname $0)/ytt/cert-manager/letsencrypt-cluster-issuer.yml \
                     -f $(dirname $0)/credentials.yml) \
            -c \
            $@