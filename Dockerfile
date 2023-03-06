FROM debian:stable-slim
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
ENV TOKEN="085d9ea123a7d336f364184cbd85326ae1e0517ff3c648d58d"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl sudo -y
RUN bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
CMD ["/bin/bash", "-c", "~/.buildkite-agent/bin/buildkite-agent start"]
