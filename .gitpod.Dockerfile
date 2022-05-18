FROM gitpod/workspace-full:latest

RUN touch /home/gitpod/aaa.txt
RUN sudo apt update
RUN pyenv install 3.10.2
