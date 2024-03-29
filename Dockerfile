## -*- docker-image-name: "armbuild/scw-app-timemachine:utopic" -*-
FROM armbuild/scw-app-openvpn:utopic
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update \
 && apt-get -q upgrade \
 && apt-get install -y -q \
	avahi-daemon \
	netatalk \
 && apt-get clean


RUN useradd -md /backup timemachine
RUN echo timemachine:timemachine | chpasswd


# Patch rootfs
ADD ./patches/ /


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
