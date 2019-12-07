<div align="center">

# Homelab
Collection of useful things for running a homelab

<img src="https://github.com/vladdoster/homelab/blob/master/assets/cluster.jpg" data-canonical-src="https://github.com/vladdoster/homelab/blob/master/assets/cluster.jpg" width="300" height="350" />

</div>

### Hardware
------------
- [Picocluster 5 rpi kit](https://www.picocluster.com/products/pico-5-raspberry-pi)
- RPI 3b+ 16gb memory (each)
- 1 rpi as a wireless node for room security camera

### Stack
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
#### Run a playbook
```
ansible-playbook ansible/playbooks/<playbook.yml> -i hosts
```
