#!/bin/bash
set -ex
kapp deploy -a zipkin \
            -f <(ytt \
                     -f $(dirname $0)/ytt/zipkin \
                     | kbld -f -) \
            -c \
            $@