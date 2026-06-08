#
#
#	  Name: pkgconfig.mk
#		make include file for pkg-config for La Casita
#         Date: 2023-04-24 (Monday) and prior
#
#

SC_APN          =       pkgconfig
#SC_VRM		=	pkgconfig-0.15.0
#SC_VRM		=	pkgconfig-0.18
SC_VRM		=	pkg-config-0.29.2
#SC_URL		=	\
# http://www.freedesktop.org/software/pkgconfig/releases/$(SC_VRM).tar.gz
SC_URL   =    http://pkgconfig.freedesktop.org/releases/$(SC_VRM).tar.gz
#SC_FETCH	=	
#SC_SOURCE	=	

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x023a4420c7ec6914

SC_CONFIG	=	./configure --prefix=/usr # --disable-nls \
#						--with-internal-glib
#SC_BUILD	=	
SC_FIXUP	=	strip /usr/bin/pkg-config 
#SC_INSTALL	=	

REQ             =       glib-2.0 >= 2.16


