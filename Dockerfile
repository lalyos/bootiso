FROM ubuntu:18.04
RUN apt-get -qq update ; apt-get install -y \
  util-linux \
  grep \
  file \
  gawk \
  mtools \
  syslinux \
  extlinux \
  rsync \
  parted \
  curl \
  tar \
  bc \
  wimtools \
  coreutils

RUN curl -L https://git.io/bootiso -o /bootiso; chmod +x /bootiso
CMD echo USAGE:  docker run -it --rm --privileged  -v /your/iso/dir:/data bootiso /bootiso -d /dev/sdX /data/YOURISOFILE.iso

