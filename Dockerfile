#
# Go Dockerfile
#
# https://github.com/dockerfile/go
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Go
RUN \
  mkdir -p /goroot && \
  curl https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1

# Set environment variables.
ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

# Define working directory.
WORKDIR /gopath

# This container exposes port 8080 to the outside world
EXPOSE 8120

# Define default command.
CMD ["bash"]