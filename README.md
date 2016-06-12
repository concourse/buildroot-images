# concourse buildroot images

This repo contains images with as few dependencies as possible, so that our
resource images can be tiny.

All images are built with [Buildroot](https://buildroot.org/).

It is primarily driven by CI. To build the `.tar` used in the squashed image,
run:

```sh
env FLAVOR=git fly -t $TARGET e -x -p -c ci/build.yml -o image-root=./image-root
```

...and then run `docker build ./image-root` to actually build the image.
