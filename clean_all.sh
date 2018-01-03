if [ -z "$LIBDIR" ]; then
    echo "Need to set LIBDIR"
    exit 1
fi  

rm -rf $LIBDIR

rm -rf biggus
rm -rf cartopy
rm -rf cf_units
rm -rf Cython-0.27
rm -rf Cython-0.27.tar.gz
rm -rf geos-3.5.1
rm -rf geos-3.5.1.tar.bz2
rm -rf iris
rm -rf proj-4.9.3
rm -rf proj-4.9.3.tar.gz
rm -rf pyke-1.1.1
rm -rf pyke-1.1.1.zip
rm -rf pyshp
rm -rf six-1.11.0
rm -rf six-1.11.0.tar.gz
rm -rf udunits-2.2.25
rm -rf udunits-2.2.25.tar.gz
