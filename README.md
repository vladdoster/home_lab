<div align="center">

# Homelab [WIP]
Collection of scripts/configs for running a homelab

<img src="https://github.com/vladdoster/homelab/blob/master/assets/cluster.jpg" data-canonical-src="https://github.com/vladdoster/homelab/blob/master/assets/cluster.jpg" width="300" height="350" />

</div>

### Hardware
------------
- [Picocluster 5 rpi kit](https://www.picocluster.com/products/pico-5-raspberry-pi)
- RPI 3b+ 16gb memory (each)
- 1 rpi as a wireless node for room security camera
- Intel Nuc (8th gen i5, 64 gb ram, 2TB HD)
- Unifi 
   1. USG
   2. 16 port PoE  switch
   3. 2nd gen cloud key
   4. Max AP

### Software stack
------------
#### Monitoring
- [Glances](https://nicolargo.github.io/glances/)

#### Provisioning
- [Ansible](https://github.com/ansible/ansible)
- [Netplan](https://github.com/mrlesmithjr/ansible-netplan)

#### Orchestration
- Kubernetes
- Docker (Swarm)

### Commands
#### Get useful alias commands
```
. ./useful_commands.sh
```

#### Run a playbook [Use alias commands above instead]
```
ansible-playbook ansible/playbooks/<playbook.yml> -i hosts
```

## Zero to Hero guide
1. Image prep
   1. Flash individual SD cards with [Rufus]()
   2. Run [enable_ssh.ps1]() after flashing to enable SSH
2. Testing connectivity
   1. Turn on cluster with newly flashed SD cards
   2. Run `. ./useful_alias_commands`
   3. Run `ping_cluster` and should receive all oks.
