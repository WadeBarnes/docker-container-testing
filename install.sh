#!/bin/bash
dependencyDir="/tmp/artifacts/third-party-dependencies"
plenumDir="/tmp/artifacts/plenum-deb"
nodeDir="/tmp/artifacts/indy_node-deb"

if [ -d "${dependencyDir}" ]; then
  dpkg --install --recursive "${dependencyDir}"
else
  echo "${dependencyDir} not found."
fi

if [ -d "${plenumDir}" ]; then
  dpkg --install --recursive "${plenumDir}"
else
  echo "${plenumDir} not found."
fi

if [ -d "${nodeDir}" ]; then
  dpkg --install --recursive "${nodeDir}"
else
  echo "${nodeDir} not found."
fi