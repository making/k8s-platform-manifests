#!/bin/bash
set -ex
kapp deploy -a cert-manager \
            -f $(dirname $0)/tkg-extensions/cert-manager \
            -c \
            $@