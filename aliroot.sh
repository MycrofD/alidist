package: aliroot
version: v5-06-28
requires:
  - geant3
env:
  - ALICE_ROOT $INSTALLROOT
source: http://git.cern.ch/pub/AliRoot
tag: master
---
#!/bin/sh

cmake . -DCMAKE_INSTALL_PREFIX=$INSTALLROOT \
        -DROOTSYS=$ROOT_ROOT \
        -DCMAKE_SKIP_RPATH=TRUE
make ${JOBS+-j $JOBS}
make install
cp -r test $INSTALLROOT/test
