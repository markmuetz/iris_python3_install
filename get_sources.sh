mkdir -p src
cd src

git clone https://github.com/GeospatialPython/pyshp

git clone https://github.com/SciTools/biggus.git
git clone https://github.com/SciTools/cartopy.git
git clone https://github.com/SciTools/cf_units.git
git clone https://github.com/SciTools/iris.git

wget ftp://ftp.unidata.ucar.edu/pub/udunits/udunits-2.2.25.tar.gz
# wget https://sourceforge.net/projects/pyke/files/latest/download
# wget --no-check-certificate https://sourceforge.net/projects/pyke/files/latest/download
wget --no-check-certificate https://sourceforge.net/projects/pyke/files/pyke/1.1.1/pyke3-1.1.1.zip/download -O pyke-1.1.1.zip

wget https://pypi.python.org/packages/94/63/f54920c2ddbe3e1341a4c268f7091bf1bf53c3d84f4b115aa5beea64aef9/Cython-0.27.tar.gz#md5=3a26a5940da1e9f95d8776eabd888b07
wget http://download.osgeo.org/geos/geos-3.5.1.tar.bz2

wget https://pypi.python.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz#md5=d12789f9baf7e9fb2524c0c64f1773f8
wget http://download.osgeo.org/proj/proj-4.9.3.tar.gz
wget https://pypi.python.org/packages/c0/10/1457c46e20b509108a32a5776141d78d410161dae8ab8da74efe67c530eb/Shapely-1.6.3.tar.gz#md5=8a7bcce63dc318f6727dbc6e2f8ee756

cd ..
