#!/usr/bin/env bash

eksctl create cluster --config-file=cluster.yaml
eksctl enable repo -f cluster.yaml

