#!/bin/sh
git submodule init
git submodule update
echo "/*"                               > .git/modules/kubernetes/info/sparse-checkout
echo "!vendor/github.com/spf13/cobra/" >> .git/modules/kubernetes/info/sparse-checkout
cd vendor/k8s.io/kubernetes
git config core.sparsecheckout true
git read-tree -um HEAD
