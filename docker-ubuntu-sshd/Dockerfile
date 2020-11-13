FROM ubuntu:20.04

RUN apt update && \
    apt install -y --no-install-recommends \
        openssh-server \
        sudo && \
    apt clean

RUN useradd --create-home --user-group vagrant && \
    echo -n "vagrant:vagrant" | chpasswd && \
    echo "vagrant ALL=NOPASSWD: ALL" > /etc/sudoers.d/vagrant

RUN mkdir -p /var/run/sshd

CMD /usr/sbin/sshd -D
