FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN wget https://github.com/exercism/cli/releases/download/v3.0.13/exercism-3.0.13-linux-x86_64.tar.gz
RUN tar -xf exercism-3.0.13-linux-x86_64.tar.gz
RUN mkdir -p ~/bin && mv exercism ~/bin
RUN echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
