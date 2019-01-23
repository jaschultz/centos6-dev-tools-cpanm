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
  glibc-devel.i686 \
  glibc.i686 \
  libstdc++.i686 \
  perl-CPAN \
  xsltproc \
  && yum clean all

RUN wget -O /usr/local/bin/cpanm http://cpanmin.us 
RUN chmod +x /usr/local/bin/cpanm
