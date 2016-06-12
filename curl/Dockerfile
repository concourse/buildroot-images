FROM scratch

# import the actual image
ADD rootfs.tar /

# reasonable LANG default
ENV LANG en_US.UTF-8

# satisfy golang crypto/x509
RUN cat /etc/ssl/certs/*.pem > /etc/ssl/certs/ca-certificates.crt

CMD ["/bin/sh"]
