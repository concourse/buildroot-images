# Dockerfile for busybox using buildroot
FROM            concourse/busyboxplus-tarmaker

# Import Buildroot source and config
ADD             buildroot /tmp/builder/buildroot
ADD             buildroot-config /tmp/builder/buildroot/.config
WORKDIR         /tmp/builder/buildroot

# Reformat config and prep for make
RUN             make oldconfig

# Make
RUN             make --quiet
RUN             cp output/images/rootfs.tar /tmp

# Done!
WORKDIR         /tmp
RUN             md5sum rootfs.tar > rootfs.tar.md5
