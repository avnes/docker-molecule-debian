FROM debian:stable

RUN apt-get update \
  && apt-get install -y ansible python3-apt sudo tar gzip curl \
  && useradd ansible-test-user \
  && mkdir /home/ansible-test-user \
  && chown ansible-test-user:ansible-test-user /home/ansible-test-user
