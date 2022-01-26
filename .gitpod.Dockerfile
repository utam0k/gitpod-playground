FROM gitpod/workspace-full:latest

RUN sh -c "$(curl -sSfl https://release.solana.com/v1.9.5/install"
RUN sudo apt-get update \
    && sudo apt-get install cowsay -y