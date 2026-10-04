#MAINTAINER dennissobczak

FROM docker.io/library/debian:trixie-slim

#RUN apt-get update
#RUN apt-get dist-upgrade -y
#RUN apt-get install -y golang sudo ca-certificates

#RUN useradd -u 8877 -s /bin/bash noroot
#RUN echo "noroot ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/noroot
#USER root
#USER noroot

RUN --mount=type=secret,id=token,env=TOKEN test -n "$TOKEN"

RUN cat /run/secrets/token

RUN echo $BUILD_TYPE_ARG
RUN echo -n "HELLOOOO"

#ENV APP_NAME=demo-webapp

#RUN mkdir -p /home/noroot/go/pkg

#COPY src/main.go /home/noroot/go/src/
#COPY src/go.mod /home/noroot/go/src/
#COPY src/go.sum /home/noroot/go/src/

#WORKDIR /home/noroot/go/src

#RUN go mod init ${APP_NAME}
#RUN go mod tidy


CMD ["/bin/bash"]
