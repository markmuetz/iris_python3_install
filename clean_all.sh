if [ -z "$LIBDIR" ]; then
    echo "Need to set LIBDIR"
    exit 1
fi  

rm -rf $LIBDIR

rm -rf src/*
