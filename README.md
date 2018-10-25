# provisioning

[![Build Status](https://travis-ci.org/manabedaiki/provisioning.svg?branch=master)](https://travis-ci.org/manabedaiki/provisioning)

Automate the provisioning using [Ansible](https://www.ansible.com).

## Requirements

Ansible requires ssh access and python.

```bash
# in Darwin
# Enable remote login. (System Preferences -> Sharing -> Remote Login)
# Python has already been installed.

# in Debian
apt-get install --yes openssh-server python
```

## Docker

```sh
ssh-keygen -t ed25519 -N '' -f id-ed25519
docker-compose up -d
```

```sh
ssh tsuru@localhost -p 22022 -i ./id-ed25519
```
