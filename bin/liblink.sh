#!/bin/bash

#######################################################################################
#
# create link file for apr/aprutil/crypto/expat/ssl/tcnative-1/z
#
#######################################################################################

PWD=`pwd`
BASE_DIR="$PWD"
SOURCE="$0"
while [ -h "$SOURCE"  ]; do # resolve $SOURCE until the file is no longer a symlink
    BASE_DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd  )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /*  ]] && SOURCE="$BASE_DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
BASE_DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd  )"

cd ${BASE_DIR}/../library/

# link for libapr-1
\ln -s libapr-1.so.0.6.3 libapr-1.so
\ln -s libapr-1.so.0.6.3 libapr-1.so.0

# link for libaprutil-1
\ln -s libaprutil-1.so.0.6.1 libaprutil-1.so
\ln -s libaprutil-1.so.0.6.1 libaprutil-1.so.0

# link for libcrypto
\ln -s libcrypto.so.1.0.0 libcrypto.so
\ln -s libcrypto.so.1.0.0 libcrypto.so.1

# link for libexpat
\ln -s libexpat.so.1.6.0 libexpat.so
\ln -s libexpat.so.1.6.0 libexpat.so.1

# link for libssl
\ln -s libssl.so.1.0.0 libssl.so
\ln -s libssl.so.1.0.0 libssl.so.1

# link for libtcnative-1
\ln -s libtcnative-1.so.0.2.17 libtcnative-1.so
\ln -s libtcnative-1.so.0.2.17 libtcnative-1.so.0

# link for libz
\ln -s libz.so.1.2.11 libz.so
\ln -s libz.so.1.2.11 libz.so.1

cd ${BASE_DIR}

exit 0
