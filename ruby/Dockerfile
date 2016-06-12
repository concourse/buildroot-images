FROM scratch

# import the actual image
ADD rootfs.tar /

# reasonable LANG default
ENV LANG en_US.UTF-8

# install rubygems
RUN wget http://production.cf.rubygems.org/rubygems/rubygems-2.4.6.zip -O /tmp/rubygems.zip && \
  cd /tmp && \
  unzip rubygems.zip && \
  cd rubygems-* && \
  ruby setup.rb --no-document && \
  rm -rf /tmp/*

CMD ["/bin/sh"]
