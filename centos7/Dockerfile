FROM centos:7

RUN yum update -y \
  && yum groupinstall -y "Development Tools" \
  && yum install -y \
  sudo \
  wget \
  which \
  file-devel \
  pcre-devel \
  glibc-devel.i686 \
  glibc.i686 \
  libstdc++.i686 \
  perl-CPAN \
  perl-App-cpanminus \
  libxslt \
  && yum clean all
