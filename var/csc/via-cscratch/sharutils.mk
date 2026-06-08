#
#
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN = sharutils
#SC_VRM = sharutil-4.2c
#SC_VRM = sharutils-4.2.1
#SC_VRM = sharutils-4.11.1
#SC_VRM = sharutils-4.13.5
SC_VRM = sharutils-4.15.2
SC_ARC = tar.xz
#SC_URL = http://ftp.gnu.org/pub/gnu/sharutils/$(SC_VRM).$(SC_ARC)
SC_URL = http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).$(SC_ARC) \
         http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).$(SC_ARC).sig
#         http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).md5sum \
#         http://ftp.gnu.org/gnu/sharutils/$(SC_VRM).md5sum.sig

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).sig
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x

SC_CONFIG = ./configure --prefix=/usr
# /usr/bin/shar /usr/bin/unshar /usr/bin/uuencode /usr/bin/uudecode


