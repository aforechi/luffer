# Java
export JAVA_HOME=/usr/lib/jvm/java-7-oracle

# CARMEN
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/local/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/i386-linux-gnu/:/usr/lib/libkml
export CARMEN_HOME=$HOME/LCAD/src/carmen_lcad
export QT_X11_NO_MITSHM=1

# MAE
export MAEHOME=$HOME/LCAD/src/MAE
export PATH=$PATH:$MAEHOME/bin

# Darknet
export DARKNET_HOME=$CARMEN_HOME/sharedlib/darknet
export LD_LIBRARY_PATH=$DARKNET_HOME/lib:$LD_LIBRARY_PATH

# OpenJAUS
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CARMEN_HOME/sharedlib/OpenJAUS/libopenJaus/lib:$CARMEN_HOME/sharedlib/OpenJAUS/libjaus/lib:$CARMEN_HOME/sharedlib/OpenJAUS/ojTorc/lib:$CARMEN_HOME/sharedlib/OpenJAUS/ojIARASim/lib

