FROM gitpod/workspace-full:latest

RUN sudo apt update
RUN pyenv install 3.10.2
