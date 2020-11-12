Asynchronous Fortran (threads) README file
=====

This software package brings portable threads to Fortran projects.
It is e.g. being used from the [Sea-ice Ocean Model (FESOM)](http://fesom.de) of the Alfred Wegener Institute (AWI).

Any feedback is greatly appreciated, please mail to: Jan Hegewald <jan.hegewald@awi.de>

Build
=====
To build, use [cmake](https://cmake.org) and make.
For example:

    mkdir build
    cd build
    cmake async_fortran/example_simple
    make

run:

    ./async_fortran_example_simple

alternative build without multithreading:

    cmake -DDISABLE_MULTITHREADING=ON async_fortran/example_simple


Credits
=====
Part of this library has been developed within the project [Pilot Lab Exascale Earth System Modelling (PL-ExaESM)](https://www.fz-juelich.de/SharedDocs/Meldungen/IAS/JSC/EN/2019/2019-09-pl-exaesm.html)
