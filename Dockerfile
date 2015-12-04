FROM gchiam/streamparse

MAINTAINER Gordoon Chiam <gordon.chiam@gmail.com>

RUN sparse quickstart wordcount
WORKDIR /wordcount


ENTRYPOINT ["/bin/bash"]
