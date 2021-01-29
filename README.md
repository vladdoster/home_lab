# Homelab [WIP]

Collection of scripts/configs for running a homelab

![cluster picture](.assets/cluster.jpg 300 350)

## Hardware

- [Picocluster 5 rpi kit](https://www.picocluster.com/products/pico-5-raspberry-pi)
- RPI 3b+ 16gb memory (each)
- 1 rpi as a wireless node for room security camera
- Intel Nuc (8th gen i5, 64 gb ram, 2TB HD)
- Unifi 
   1. USG
   2. 16 port PoE  switch
   3. 2nd gen cloud key
   4. Max AP

## Monitoring

- [Glances](https://nicolargo.github.io/glances/)

## Provisioning

- [Ansible](https://github.com/ansible/ansible)
- [Netplan](https://github.com/mrlesmithjr/ansible-netplan)

## Orchestration

- Kubernetes
- Docker (Swarm)

## Commands

### Get useful alias commands

```sh
. ./useful_commands.sh
```

### Run a playbook [Use alias commands above instead]

```sh
ansible-playbook ansible/playbooks/<playbook.yml> -i hosts
```

## Zero to Hero guide

1. Image prep
   1. Flash individual SD cards with [Rufus]()
   1. Run [enable\_ssh.ps1]() after flashing to enable SSH
1. Testing connectivity
   1. Turn on cluster with newly flashed SD cards
   1. Run `. ./useful_alias_commands`
   1. Run `ping_cluster` and should receive all oks.
