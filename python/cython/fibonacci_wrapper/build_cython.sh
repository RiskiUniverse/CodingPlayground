# Compile fibonacci.c with position-independent code
gcc -std=c11 -c -Wall -Werror -g0 -O3 -fpic fibonacci.c

# Create a shared library from an object file
gcc -shared -o libfibonacci.so fibonacci.o

# Build the Cython wrapper using setuptools
python setup.py build_ext --inplace
