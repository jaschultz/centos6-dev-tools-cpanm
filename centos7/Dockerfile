FROM centos:7

#RUN yum update -y \
#  &&
RUN yum groupinstall -y "Development Tools" \
  && yum install -y \
  sudo \
  wget \
  which \
  file-devel \
  pcre2-devel \
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

RUN wget http://prdownloads.sourceforge.net/swig/swig-4.1.1.tar.gz \
    && tar -xvzf swig-4.1.1.tar.gz \
    && pushd swig-4.1.1 \
    && ./configure \
    && make \
    && make install \
    && popd \
    && rm -rf swig-4.1.1*
