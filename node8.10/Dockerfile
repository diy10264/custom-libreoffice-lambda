FROM lambci/lambda-base:build

COPY bootstrap.c bootstrap.js /opt/

RUN curl -sSL https://nodejs.org/dist/v8.10.0/node-v8.10.0-linux-x64.tar.xz | \
  tar -xJ -C /opt --strip-components 1 -- node-v8.10.0-linux-x64/bin/node && \
  strip /opt/bin/node

RUN cd /opt && \
  export NODE_MAJOR=$(echo 8.10.0| awk -F. '{print "\""$1"\""}') && \
  clang -Wall -Werror -s -O2 -D NODE_MAJOR="$NODE_MAJOR" -o bootstrap bootstrap.c && \
  rm bootstrap.c && \
  zip -yr /tmp/node-v8.10.0.zip ./*