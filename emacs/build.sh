if [ "$(uname)" == "Darwin" ]; then
    ./configure  --prefix=$PREFIX --without-x
else
    ./configure  --prefix=$PREFIX --x-includes=$PREFIX/include --x-liibraries=$PREFIX/lib
fi

make -j4  && make -j4  install
