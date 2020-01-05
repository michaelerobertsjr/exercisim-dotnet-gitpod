FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN sudo wget https://github.com/exercism/cli/releases/download/v3.0.13/exercism-3.0.13-linux-x86_64.tar.gz
RUN sudo tar -xf exercism-3.0.13-linux-x86_64.tar.gz
RUN sudo mkdir -p ~/bin && mv exercism ~/bin

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
