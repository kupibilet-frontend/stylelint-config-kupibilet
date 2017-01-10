#!/bin/bash

(
  export PKG=stylelint-config-standard;
  node -pe 'JSON.stringify(JSON.parse(process.argv[1]).data)' "$(yarn info "$PKG" peerDependencies --json)" | command sed 's/[\{\},]//g ; s/:/@/g' | xargs yarn add
)
