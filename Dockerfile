FROM centos:centos7
LABEL maintainer Tom Taylor <tom+dockerfiles@tomm.yt>

RUN yum install -y wget make rpmdevtools && echo "%_topdir /root/rpmbuild" > /root/.rpmmacros
WORKDIR /root/rpmbuild