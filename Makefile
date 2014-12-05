DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-timemachine
VERSION =		utopic
VERSION_ALIASES =	14.10 latest
TITLE =			Timemachine
DESCRIPTION =		Timemachine (afpd + netatalk + openvpn)
SOURCE_URL =		https://github.com/online-labs/image-app-timemachine


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
