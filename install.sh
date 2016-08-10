#!/bin/bash

(
  export PKG=stylelint-config-standard;
  npm info "$PKG" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save
)
