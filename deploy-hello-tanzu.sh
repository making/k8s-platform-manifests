#!/bin/bash
set -ex
kapp deploy -a hello-tanzu \
            -f <(ytt \
                     -f $(dirname $0)/apps/hello-tanzu.yml \
                     -f $(dirname $0)/apps/values.yml \
                     | kbld -f -) \
            -c \
            $@