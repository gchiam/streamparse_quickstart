FROM gchiam/openjdk:8

MAINTAINER Gordoon Chiam <gordon.chiam@gmail.com>

RUN apk --update add \
    ca-certificates \
    bash \
    curl \
    build-base \
    gcc \
    python \
    python-dev \
    py-pip

RUN pip install -U pip


# download and install Leiningen
ENV LEIN_ROOT=1
RUN curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ./lein
RUN chmod a+x ./lein
RUN mv ./lein /usr/bin/lein
RUN lein version

RUN pip install streamparse

RUN sparse quickstart wordcount
WORKDIR /wordcount


ENTRYPOINT ["/bin/bash"]
