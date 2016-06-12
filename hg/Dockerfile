FROM scratch

# import the actual image
ADD rootfs.tar /

# reasonable LANG default
ENV LANG C

# satisfy golang crypto/x509
RUN cat /etc/ssl/certs/*.pem > /etc/ssl/certs/ca-certificates.crt

# wire in base hg configuration
ADD hgrc /etc/mercurial/hgrc

CMD ["/bin/sh"]
