# Dockerfile for busybox using buildroot
FROM            concourse/busyboxplus-tarmaker

# Import Buildroot source and config
ADD             buildroot /tmp/builder/buildroot
ADD             buildroot-config /tmp/builder/buildroot/.config
RUN             echo 'BR2_PACKAGE_MERCURIAL=y' >> /tmp/builder/buildroot/.config

# Add mercurial package
ADD             mercurial /tmp/builder/buildroot/package/mercurial
RUN             echo 'source "package/mercurial/Config.in"' >> package/Config.in

WORKDIR         /tmp/builder/buildroot

# Change host python configuration to include bzip2
ADD             python.mk /tmp/builder/buildroot/package/python

# Reformat config and prep for make
RUN             make oldconfig

# Make
RUN             make --quiet
RUN             cp output/images/rootfs.tar /tmp

# Done!
WORKDIR         /tmp
RUN             md5sum rootfs.tar > rootfs.tar.md5
