FROM ubuntu

ARG git_branch
COPY . /home

WORKDIR /home

RUN ls -l

ENTRYPOINT bash