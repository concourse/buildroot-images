FROM scratch

# import the actual image
ADD rootfs.tar /

# reasonable LANG default
ENV LANG en_US.UTF-8

# can't `git pull` unless we set these
RUN git config --global user.email "git@localhost" && \
      git config --global user.name "git"

CMD ["/bin/sh"]
