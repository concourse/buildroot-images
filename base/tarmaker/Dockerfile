# Dockerfile for busybox using buildroot
FROM            ubuntu:14.04

# Install packages
ENV             DEBIAN_FRONTEND noninteractive
RUN             apt-get -q update && apt-get -qyV install \
                    wget \
                    build-essential \
                    libncurses-dev \
                    rsync \
                    unzip \
                    bc \
                    gnupg \
                    python \
                    libc6-i386
RUN             env --unset=DEBIAN_FRONTEND

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
