export LIBDIR=/work/n02/n02/mmuetz/python3_libs_clean_build

export PATH=$PATH:$LIBDIR/usr/local/bin/
export PYTHONPATH=$PYTHONPATH:$LIBDIR/lib/python3.4/site-packages/
export LIBRARY_PATH=$LIBRARY_PATH:$LIBDIR/usr/local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBDIR/usr/local/lib
export CFLAGS="-I$LIBDIR/usr/local/include"
