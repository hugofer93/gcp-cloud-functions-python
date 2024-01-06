Format: 3.0 (quilt)
Source: python3.9
Binary: python3.9, python3.9-venv, libpython3.9-stdlib, python3.9-minimal, libpython3.9-minimal, libpython3.9, python3.9-examples, python3.9-dev, libpython3.9-dev, libpython3.9-testsuite, idle-python3.9, python3.9-dbg, libpython3.9-dbg, python3.9-tk, python3.9-gdbm, python3.9-tk-dbg, python3.9-gdbm-dbg, python3.9-distutils, python3.9-lib2to3, python3.9-full
Architecture: any all
Version: 3.9.16-1+bionic1
Maintainer: Matthias Klose <doko@debian.org>
Standards-Version: 4.3.0
Vcs-Browser: https://salsa.debian.org/cpython-team/python3
Vcs-Git: https://salsa.debian.org/cpython-team/python3.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, gdb, locales-all, python3-distutils, python3-gdbm, python3-gdbm-dbg, python3-tk, python3-tk-dbg
Build-Depends: debhelper (>= 9), dpkg-dev (>= 1.17.11), quilt, autoconf, lsb-release, sharutils, libreadline-dev, libncursesw5-dev (>= 5.3), zlib1g-dev, libbz2-dev, liblzma-dev, libgdbm-dev, libdb-dev, tk-dev, blt-dev (>= 2.4z), libssl-dev, libexpat1-dev, libmpdec-dev (>= 2.4), libbluetooth-dev [!hurd-i386 !kfreebsd-i386 !kfreebsd-amd64], locales [!armel !avr32 !hppa !ia64 !mipsel], libsqlite3-dev, libffi-dev (>= 3.0.5) [!or1k !avr32], libgpm2 [!hurd-i386 !kfreebsd-i386 !kfreebsd-amd64], mime-support, netbase, bzip2, time, python3:any, net-tools, xvfb, xauth
Build-Depends-Indep: python3-sphinx, texinfo
Package-List:
 idle-python3.9 deb python optional arch=all
 libpython3.9 deb libs optional arch=any
 libpython3.9-dbg deb debug optional arch=any
 libpython3.9-dev deb libdevel optional arch=any
 libpython3.9-minimal deb python optional arch=any
 libpython3.9-stdlib deb python optional arch=any
 libpython3.9-testsuite deb libdevel optional arch=all
 python3.9 deb python optional arch=any
 python3.9-dbg deb debug optional arch=any
 python3.9-dev deb python optional arch=any
 python3.9-distutils deb python optional arch=all
 python3.9-examples deb python optional arch=all
 python3.9-full deb python optional arch=any
 python3.9-gdbm deb python optional arch=any
 python3.9-gdbm-dbg deb debug extra arch=any
 python3.9-lib2to3 deb python optional arch=all
 python3.9-minimal deb python optional arch=any
 python3.9-tk deb python optional arch=any
 python3.9-tk-dbg deb debug extra arch=any
 python3.9-venv deb python optional arch=any
Checksums-Sha1:
 051e19fa396735d080dd9e3dcb5c8c51bf492884 26371041 python3.9_3.9.16.orig.tar.gz
 18c3add89240cbdca84331e45795351f815a0ff2 195028 python3.9_3.9.16-1+bionic1.debian.tar.xz
Checksums-Sha256:
 60df47f83da1d938a4070b2e237740bd0249fba71551abf1bdbae5667533983b 26371041 python3.9_3.9.16.orig.tar.gz
 c9123a0fa026ba9c1279ad0ee746e6aea664ac340697ed5f0fb14edd359a25d4 195028 python3.9_3.9.16-1+bionic1.debian.tar.xz
Files:
 d37938a84da983dcb5646bc6befc0b88 26371041 python3.9_3.9.16.orig.tar.gz
 1b9e29abf50eb7b9108dd805ea7486f6 195028 python3.9_3.9.16-1+bionic1.debian.tar.xz
