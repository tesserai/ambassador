#!/bin/bash

set -e

VERSION="$1"
IMAGE="$2"

echo "kubernaut set-token $(echo $KUBERNAUT_TOKEN | sum)"
kubernaut set-token "$KUBERNAUT_TOKEN"

set -x

kubernaut claim 
export KUBECONFIG=${HOME}/.kube/kubernaut

./kubectl cluster-info

kubernaut discard

exit 0
