FROM ubuntu:18.04

# install provisioning dependencies
RUN apt-get update && \
    apt-get install --yes \
        ansible \
        openssh-server \
        python \
        sudo \
        && \
    mkdir /run/sshd && \
    ssh-keygen -A

# password: jail
RUN useradd tsuru --create-home --password '$1$wls/8VyC$tRGb02ALpZDUFw71pEXG/1' && \
    gpasswd -a tsuru sudo

RUN ln -s /usr/bin/pip /usr/local/bin/pip

COPY --chown=tsuru:tsuru . /usr/local/lib/provisioning

USER tsuru

# provisioning
RUN cd /usr/local/lib/provisioning && \
    ansible-playbook --inventory devenv/hosts.ini --connection local all.yml && \
    rm -rf /home/tsuru/{.ansible,.bash_profile,.bashrc,.cache,}

USER root
