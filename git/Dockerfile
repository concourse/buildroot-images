FROM scratch

# import the actual image
ADD rootfs.tar /

# reasonable LANG default
#
# NOTE: en_US.UTF-8 causes 'push --rebase' to fail with:
#    Out of memory, getdelim failed
ENV LANG C

# can't `git pull` unless we set these
RUN git config --global user.email "git@localhost" && \
      git config --global user.name "git"

CMD ["/bin/sh"]
