################################################################################
#
# mercurial
#
################################################################################

MERCURIAL_VERSION = 3.9.2
MERCURIAL_SOURCE = mercurial-$(MERCURIAL_VERSION).tar.gz
MERCURIAL_SITE = https://www.mercurial-scm.org/release
MERCURIAL_LICENSE = GPLv2
MERCURIAL_LICENSE_FILES = COPYING
MERCURIAL_DEPENDENCIES = python
MERCURIAL_SETUP_TYPE = distutils

$(eval $(python-package))
