#!/bin/bash
set -ex
kapp deploy -a argocd \
            -f <(helm template -n argocd \
                              --release-name \
                              --values $(dirname $0)/helm/argocd/values.yml \
                              --include-crds \
                              argocd $(dirname $0)/vendor/argocd \
                  | ytt --ignore-unknown-comments \
                        -f - \
                        -f $(dirname $0)/ytt/argocd) \
            -c \
            $@