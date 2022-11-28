#!/bin/bash

# ---------------------------------
# Install middlewares.
# ---------------------------------

# Install Node.js
curl -sL https://rpm.nodesource.com/setup_12.x | bash -
yum install -y nodejs

# Install jq
curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
chmod +x /usr/local/bin/jq
