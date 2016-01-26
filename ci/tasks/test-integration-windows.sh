#!/usr/bin/env bash

set -e

export AGENT_ZIP_URL=$(cat bosh-agent-zip/url)
export PATH=/usr/local/ruby/bin:/usr/local/go/bin:$PATH
export GOPATH=$(pwd)/gopath

cd gopath/src/github.com/cloudfoundry/bosh-agent
bin/test-integration-windows