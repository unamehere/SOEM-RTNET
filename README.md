# Simple Open EtherCAT Master Library (RTNET VERSION
[![Build Status](https://github.com/OpenEtherCATsociety/SOEM/workflows/build/badge.svg?branch=master)](https://github.com/OpenEtherCATsociety/SOEM/actions?workflow=build)


SOEM with RTNET

Test Configuration 
Ubuntu 20.04
Linux 5.4.124, Xenomai-3.1.1.

Tested With Humanoid Robot [TOCABI](https://github.com/saga0619/dyros_tocabi_v2)

Tested Master PC : 
- CPU : i7-10700
- M/B : Gigabyte H470i
- NIC : Intel I340-T4 ( 4 Port PCI NIC )

- Slave : ELMO GOLD WHISTLE
- 18 slaves Redundant (2 Port) + 15 slaves Redundant (2 Port)

System Stability Test with 10+ Hours with 2Khz with 1 Timeout. 



How to Use RTNET with SOEM?

-
-
-




BUILDING
========

Prerequisites for all platforms
-------------------------------

 * CMake 3.9 or later


Windows (Visual Studio)
-----------------------

 * Start a Visual Studio command prompt then:
   * `mkdir build`
   * `cd build`
   * `cmake .. -G "NMake Makefiles"`
   * `nmake`

Linux & macOS
--------------

   * `mkdir build`
   * `cd build`
   * `cmake ..`
   * `make`

ERIKA Enterprise RTOS
---------------------

 * Refer to http://www.erika-enterprise.com/wiki/index.php?title=EtherCAT_Master

Documentation
-------------

See https://openethercatsociety.github.io/doc/soem/


Want to contribute to SOEM or SOES?
-----------------------------------

If you want to contribute to SOEM or SOES you will need to sign a Contributor
License Agreement and send it to us either by e-mail or by physical mail. More
information is available in the [PDF](http://openethercatsociety.github.io/cla/cla_soem_soes.pdf).
