mkdir -p /work/n02/n02/mmuetz/python3_libs/lib/python3.4/site-packages/
export PATH=$PATH:/work/n02/n02/mmuetz/python_libs/usr/local/bin/
export PYTHONPATH=$PYTHONPATH:/work/n02/n02/mmuetz/python3_libs/lib/python3.4/site-packages/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/work/n02/n02/mmuetz/python3_libs/usr/local/lib
export CFLAGS="-I/work/n02/n02/mmuetz/python3_libs/usr/local/include"

cd biggus/
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd cf_units/
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd udunits-2.2.25/
./configure --prefix=/work/n02/n02/mmuetz/python3_libs/usr/local
make
make install
cd ..

cd pyke-1.1.1/
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd Cython-0.27/
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd pyshp/
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd six-1.11.0/
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd geos-3.5.1/
./configure --prefix=/work/n02/n02/mmuetz/python3_libs/usr/local
make
make install
cd ..

cd proj-4.9.3/
./configure --prefix=/work/n02/n02/mmuetz/python3_libs/usr/local
make
make install
cd ..

cd cartopy/
ldconfig
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..

cd iris/
git checkout v1.13.0
python3 setup.py install --prefix=/work/n02/n02/mmuetz/python3_libs
cd ..
