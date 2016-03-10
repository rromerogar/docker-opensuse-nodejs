# Use latest opensuse image as the base
FROM opensuse

MAINTAINER Raúl Romero García <rromerogar@uoc.edu>

LABEL version="1.0.0"
LABEL description="Lastest opensuse docker image with NodeJS"

RUN zypper -n ar http://download.opensuse.org/repositories/devel:/languages:/nodejs/openSUSE_Leap_42.1/ Devel:Languages:NodeJS
RUN zypper -n --gpg-auto-import-keys ref Devel:Languages:NodeJS

RUN zypper -n in patterns-openSUSE-devel_C_C++ gcc-c++

RUN zypper -n in npm
