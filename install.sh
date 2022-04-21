dependencies=$(find /tmp/artifacts/third-party-dependencies -name "*.deb")
for path in ${dependencies}
do
  sudo dpkg -i ${path}
done

node=$(find /tmp/artifacts/indy_node-deb -name "*.deb")
for path in ${node}
do
  sudo dpkg -i ${path}
done