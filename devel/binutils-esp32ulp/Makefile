# $FreeBSD$

PORTNAME=	binutils-esp32ulp
# XXX use different version scheme from the upstream because ESP32ULP_VERSION
# will never (hopefully) decrease.
DISTVERSION=	${ESP32ULP_VERSION}.${ESP32ULP_BUNUTILS_VERSION}
CATEGORIES=	devel

MAINTAINER=	y@trombik.org
COMMENT=	Binutils fork with support for the ESP32 ULP co-processor

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

FLAVORS=	esp32ulp esp32s2ulp
FLAVOR?=	${FLAVORS:[1]}
.if ${FLAVOR} != ${FLAVORS:[1]}
PKGNAMESUFFIX=	-${FLAVOR}
.endif
USES=		bison:alias cpe gmake tar:xz compiler:env
PLIST_SUB=	FLAVOR=${FLAVOR}
USE_GITHUB=	yes
GH_TUPLE=	espressif:${PORTNAME}:v${ESP32ULP_BUNUTILS_VERSION}-esp-${ESP32ULP_VERSION}
USE_GCC=	yes
HAS_CONFIGURE=	yes
ESP32ULP_VERSION=	20191205
ESP32ULP_BUNUTILS_VERSION=	2.28.51
ESP32ULP_TARGET=	${FLAVOR}-elf

# see https://github.com/espressif/binutils-esp32ulp/blob/master/.gitlab-ci.yml
ESP32ULP_CONFIGURE_ARGS=	\
			--disable-doc --disable-gdb --disable-libdecnumber --disable-readline --disable-sim

CONFIGURE_ARGS+=	\
			${ESP32ULP_CONFIGURE_ARGS} \
			--disable-nls --disable-werror --prefix=${PREFIX} \
			--disable-shared \
			--target=${ESP32ULP_TARGET}

.include <bsd.port.pre.mk>

post-configure:
	${ECHO} "MAKEINFO = :" >> ${WRKSRC}/Makefile

.include <bsd.port.post.mk>
