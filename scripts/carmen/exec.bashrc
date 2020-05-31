export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/i386-linux-gnu/:/usr/lib/libkml
export LD_LIBRARY_PATH="/usr/local/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH"

# CARMEN
export CARMEN_HOME="/dados/carmen_lcad"
export PATH=$PATH:$CARMEN_HOME/bin
export QT_X11_NO_MITSHM=1

# MAE
export MAEHOME="/dados/MAE"
export PATH=$PATH:$MAEHOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MAEHOME/lib

#OpenJaus
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CARMEN_HOME/sharedlib/OpenJAUS/libopenJaus/lib:$CARMEN_HOME/sharedlib/OpenJAUS/libjaus/lib:$CARMEN_HOME/sharedlib/OpenJAUS/ojTorc/lib:$CARMEN_HOME/sharedlib/OpenJAUS/ojIARASim/lib

