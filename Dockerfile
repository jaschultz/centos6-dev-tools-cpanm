FROM centos:centos6

RUN yum update -y \
  && yum groupinstall -y "Development Tools" \
  && yum install -y \
  libtool \
  autoconf \
  automake \
  wget \
  gettext \
  which \
  file-devel \
  perl-CPAN \
  && yum clean all

RUN wget -O - http://cpanmin.us | perl - App::cpanminus
