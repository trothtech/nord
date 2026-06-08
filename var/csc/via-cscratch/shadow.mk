#
#
#	  Name: shadow.mk
#		CSCRATCH make include file for Shadow Passwords for La Casita
#
#

SC_APN          =       shadow
#SC_VRM		=	shadow-4.0.3
### NOTE ### needs a patch to "newgrp.c" to include <signal.h>
#SC_VRM		=	shadow-4.0.3C
#SC_URL		=	\
#		ftp://ftp.pld.org.pl/software/shadow/shadow-4.0.3.tar.gz
#SC_URL		=     http://www.casita.net/pub/.../shadow-4.0.3C.tar.gz
#
#SC_VRM		=	shadow-4.0.7
#SC_VRM		=	shadow-4.0.15
#SC_VRM		=	shadow-4.0.18
#SC_VRM		=	shadow-4.0.18.1
#SC_VRM		=	shadow-4.1.1
#SC_VRM         =       shadow-4.1.2.2
#SC_VRM		=	shadow-4.1.4.3
SC_VRM          =       shadow-4.4
#SC_VRM		=	shadow-4.8.1
#SC_VRM		=	shadow-4.13
#SC_VRM		=	shadow-4.19.3

#
#SC_URL		=	\
#     http://osx.freshmeat.net/redir/shadow/9477/url_tgz/$(SC_VRM).tar.gz
#SC_URL		=  ftp://ftp.pld.org.pl/software/shadow/$(SC_VRM).tar.gz
#
#SC_VRM		=	shadow-YYMMDD
#SC_URL		=	\
#	ftp://ftp.gts.cz/pub/linux/security/shadow/shadow-current.tar.gz
#
#SC_URL=http://www.mirrorservice.org/sites/ftp.wiretapped.net/pub/security/host-security/shadow/old/$(SC_VRM).tar.gz
#SC_URL=http://www.mirrorservice.org/sites/ftp.wiretapped.net/pub/security/host-security/shadow/$(SC_VRM).tar.gz
#SC_URL=http://pkg-shadow.alioth.debian.org/releases/shadow-4.1.4.3.tar.bz2

#SC_URL=http://deb.debian.org/debian/pool/main/s/shadow/$(SC_VRM).orig.tar.gz \
#       http://deb.debian.org/debian/pool/main/s/shadow/$(SC_VRM).orig.tar.gz.sig
#SC_URL=https://deb.debian.org/debian/pool/main/s/shadow/shadow_4.19.3.orig.tar.xz \
#       https://deb.debian.org/debian/pool/main/s/shadow/shadow_4.19.3.orig.tar.xz.asc
SC_URL=https://github.com/shadow-maint/shadow/releases/download/4.4/shadow-4.4.tar.xz \
       https://github.com/shadow-maint/shadow/releases/download/4.4/shadow-4.4.tar.xz.asc

#SC_ARC		=	tar.gz
#SC_ARC		=	tar.bz2
SC_ARC		=	tar.xz

SC_SOURCE_VERIFY = gpg --verify arc/$(SC_APN)/$(SC_VRM).$(SC_ARC).asc
# gpg --keyserver hkp://pgp.mit.edu/ --recv-keys 0x

#SC_FETCH	=	$(SC_FETCH_BZ)
#SC_FETCH        =       wget $SC_URL ; \
#               mv shadow_4.19.3.orig.tar.xz shadow-4.19.3.tar.xz ; \
#               mv shadow_4.19.3.orig.tar.xz.asc shadow-4.19.3.tar.xz.asc

#SC_SOURCE	=	
#SC_CONFIG	=	./configure --prefix=/usr --disable-nls
#SC_CONFIG	=	./configure --disable-nls
SC_CONFIG	=	./configure --disable-nls \
				--without-selinux --enable-man \
				--sysconfdir=/etc
#SC_BUILD	=	
#SC_FIXUP	=	
#SC_INSTALL	=	

#NANON#ftp://ftp.ists.pwr.wroc.pl/pub/linux/shadow/shadow-current.tar.gz
#DNS#ftp://iguana.hut.fi/pub/linux/shadow/shadow-current.tar.gz
#FNF#ftp://ftp.icm.edu.pl/pub/Linux/shadow-pwr/shadow-current.tar.gz
#DNS#ftp://ftp.athena.del.ufrj.br/pub/linux/shadow_password/shadow-current.tar.gz
#DNS#ftp://ftp.voyager.abac.com/pub/shadow/shadow-current.tar.gz
#ftp://ftp.gts.cz/pub/linux/security/shadow/shadow-current.tar.gz
#DNS#ftp://ftp.donald.fr/shadow/shadow-current.tar.gz
#TO#ftp://xenium.pdi.net/pub/Crypto/shadow/shadow-current.tar.gz


