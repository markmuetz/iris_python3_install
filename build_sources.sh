set -x
if [ -z "$LIBDIR" ]; then
    echo "Need to set LIBDIR"
    exit 1
fi  

mkdir -p $LIBDIR/lib/python3.4/site-packages/
export PATH=$PATH:$LIBDIR/usr/local/bin/
if [ -z "$PYTHONPATH" ]; then
    export PYTHONPATH=$LIBDIR/lib/python3.4/site-packages/
else
    export PYTHONPATH=$PYTHONPATH:$LIBDIR/lib/python3.4/site-packages/
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBDIR/usr/local/lib
export CFLAGS="-I$LIBDIR/usr/local/include"

cd src/

cd biggus/
python3 setup.py install --user
cd ..

cd cf_units/
python3 setup.py install --user
cd ..

cd udunits-2.2.25/
./configure --prefix=$LIBDIR/usr/local
make
make install
cd ..

cd pyke-1.1.1/
python3 setup.py install --user
cd ..

cd Cython-0.27/
python3 setup.py install --user
cd ..

cd pyshp/
python3 setup.py install --user
cd ..

cd six-1.11.0/
python3 setup.py install --user
cd ..

cd geos-3.5.1/
./configure --prefix=$LIBDIR/usr/local
make
make install
cd ..

cd proj-4.9.3/
./configure --prefix=$LIBDIR/usr/local
make
make install
cd ..

cd cartopy/
ldconfig
python3 setup.py install --user
cd ..

cd iris/
git checkout v1.13.0
python3 setup.py install --user
cd ..

cd ..
