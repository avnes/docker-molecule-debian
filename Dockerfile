FROM debian:sid

RUN apt-get update \
  && apt-get install -y ansible sudo tar gzip curl \
  && useradd ansible-test-user \
  && mkdir /home/ansible-test-user \
  && chown ansible-test-user:ansible-test-user /home/ansible-test-user
