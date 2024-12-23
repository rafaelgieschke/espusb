from ubuntu:18.04
run apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install \
  build-essential git vim \
  autoconf gperf bison flex texinfo wget help2man gawk libtool-bin \
  libncurses5-dev python python-dev unzip
workdir /src
workdir esp-open-sdk
copy esp-open-sdk .
env CT_EXPERIMENTAL=y CT_ALLOW_BUILD_AS_ROOT=y CT_ALLOW_BUILD_AS_ROOT_SURE=y
run make VENDOR_SDK=1.5.4
