if [ -z "$LIBDIR" ]; then
    echo "Need to set LIBDIR"
    exit 1
fi  

mkdir -p $LIBDIR/lib/python3.4/site-packages/
mkdir -p $LIBDIR/usr/local/lib

export PATH=$PATH:$LIBDIR/usr/local/bin/
export PYTHONPATH=$PYTHONPATH:$LIBDIR/lib/python3.4/site-packages/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBDIR/usr/local/lib
export CFLAGS="-I$LIBDIR/usr/local/include"

cd src/

#cd BLAS-3.8.0
#make
#cp blas_LINUX.a $LIBDIR/usr/local/lib/libblas.a
#cd ..

cd lapack-3.8.0
cp make.inc.example make.inc
make lib
cp lib*.a $LIBDIR/usr/local/lib/
cp $LIBDIR/usr/local/lib/librefblas.a $LIBDIR/usr/local/lib/libblas.a 
cd ..

cd numpy-1.13.3/
python3 setup.py install --prefix=$LIBDIR
cd ..

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

cd ..
