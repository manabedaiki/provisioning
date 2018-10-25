# provisioning

![build status](https://img.shields.io/docker/build/manabedaiki/devenv.svg)
![automated build](https://img.shields.io/docker/automated/manabedaiki/devenv.svg)

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
