#!/bin/bash
set -ex
kapp delete -a $@ --filter '{"not":{"resource":{"kinds":["AntreaControllerInfo"]}}}'
