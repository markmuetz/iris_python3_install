echo Using LIBDIR: $LIBDIR

mkdir -p $LIBDIR/lib/python3.4/site-packages/
export PATH=$PATH:$LIBDIR/usr/local/bin/
export PYTHONPATH=$PYTHONPATH:$LIBDIR/lib/python3.4/site-packages/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBDIR/usr/local/lib
export CFLAGS="-I$LIBDIR/usr/local/include"

cd biggus/
python3 setup.py install --prefix=$LIBDIR
cd ..

cd cf_units/
python3 setup.py install --prefix=$LIBDIR
cd ..

cd udunits-2.2.25/
./configure --prefix=$LIBDIR/usr/local
make
make install
cd ..

cd pyke-1.1.1/
python3 setup.py install --prefix=$LIBDIR
cd ..

cd Cython-0.27/
python3 setup.py install --prefix=$LIBDIR
cd ..

cd pyshp/
python3 setup.py install --prefix=$LIBDIR
cd ..

cd six-1.11.0/
python3 setup.py install --prefix=$LIBDIR
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
python3 setup.py install --prefix=$LIBDIR
cd ..

cd iris/
git checkout v1.13.0
python3 setup.py install --prefix=$LIBDIR
cd ..
