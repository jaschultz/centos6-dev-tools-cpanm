FROM centos:7

#RUN yum update -y \
#  &&
RUN yum groupinstall -y "Development Tools" \
  && yum install -y \
  sudo \
  wget \
  which \
  file-devel \
  pcre-devel \
  perl-CPAN \
  perl-App-cpanminus \
  libxslt

ARG TARGETARCH
RUN if [ "$TARGETARCH" = "amd64" ]; then \
    yum install -y \
    glibc-devel.i686 \
    glibc.i686 \
    libstdc++.i686 ; \
    fi

RUN yum clean all