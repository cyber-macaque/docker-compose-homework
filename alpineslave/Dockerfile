FROM alpine

RUN apk add --no-cache \ 
        openssh openjdk11-jre git \
    && ssh-keygen -A \
    && addgroup -g 1000 jenkins
RUN adduser -u 1000 -G jenkins -h /var/lib/jenkins/ -D jenkins \
    && echo -n 'jenkins:jenkins' | chpasswd  \
    && mkdir /var/lib/jenkins/.ssh \
    && chmod 0700 /var/lib/jenkins/.ssh \
    && ln -s /etc/ssh/ssh_host_ed25519_key.pub /var/lib/jenkins/.ssh/authorized_keys

CMD ["/usr/sbin/sshd", "-D", "-e"]