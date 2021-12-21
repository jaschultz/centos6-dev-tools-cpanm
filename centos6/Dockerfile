FROM centos:6

# Centos 6 version met its EOL (11/30/2020)
RUN sed -i '/^mirrorlist/s/^/#/;/^#baseurl/{s/#//;s/http:\/\/mirror.centos.org\/centos\//https:\/\/vault.centos.org\//}' /etc/yum.repos.d/*B*
RUN echo "6.10" > /etc/yum/vars/releasever

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
  libxslt \
  && yum clean all

RUN wget -O /usr/local/bin/cpanm http://cpanmin.us
RUN chmod +x /usr/local/bin/cpanm
