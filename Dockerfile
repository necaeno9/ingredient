FROM debian:stable-slim
ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
ENV TOKEN="a5cb0f33dbc9d7b989f43455dc3067e57a3ee19f6712c4d0e3"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl sudo -y
RUN bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
CMD ["/bin/bash", "-c", "~/.buildkite-agent/bin/buildkite-agent start"]
