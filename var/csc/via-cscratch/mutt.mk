#
#
#	  Name: mutt.mk
#		make include file for Mutt for La Casita CSCRATCH
#
#

SC_APN		=	mutt
SC_APV		=	1.6.1
SC_ARC		=	tar.gz
SC_VRM		=	$(SC_APN)-$(SC_APV)

#SC_URL = http://downloads.sourceforge.net/mutt/$(SC_VRM).tar.gz
#SC_URL		=	ftp://ftp.mutt.org/mutt/devel/$(SC_VRM).tar.gz
SC_URL		=    ftp://ftp.mutt.org/pub/mutt/$(SC_VRM).$(SC_ARC) \
		     ftp://ftp.mutt.org/pub/mutt/$(SC_VRM).$(SC_ARC).asc

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0xadef768480316bda

#SC_FETCH	=	

SC_SOURCE	=	$(SC_VRM)

#SC_CONFIG	=	./configure --prefix=/usr
SC_CONFIG	=	./configure --prefix=/usr \
				--sysconfdir=/etc --localstatedir=/var

#SC_BUILD	=	

#SC_FIXUP	=	strip ...

#SC_INSTALL	=	

#SC_BUILDD
#SC_REQ
#SC_US1
#SC_US2
#SC_US3


