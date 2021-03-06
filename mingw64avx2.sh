make clean

./autogen.sh

# icon
windres res/icon.rc icon.o

CFLAGS="-O3 -mavx2 -Wall" CXXFLAGS="$CFLAGS -std=gnu++11 -flto -fpermissive" ./configure --with-curl

make -j8

strip -p --strip-debug --strip-unneeded cpuminer.exe

mv cpuminer.exe cpuminer_opt_AVX2.exe

