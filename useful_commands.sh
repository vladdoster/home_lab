#!/usr/bin/zsh

#---------------------------------------
# Give Ansible a password to work with |
#---------------------------------------
# Bash
# read -p "What is the cluster password? [raspberry]: " cluster_password
# Zsh
read "?What is the cluster password? [raspberry]: " cluster_password
cluster_password=${cluster_password:-raspberry}
export CLUSTER_PASSWORD=$cluster_password

#------------------
# Useful commands |
#------------------
export HOMELAB_DIR="~/github/homelab/ansible"

# Ping
alias ping_cluster="ansible pi_cluster -m ping"

# Reboot
alias restart_cluster="ansible-playbook $HOMELAB_DIR/playbooks/reboot.yml -i $HOMELAB_DIR/hosts"

# Shutdown
alias poweroff_cluster="ansible-playbook $HOMELAB_DIR/playbooks/shutdown.yml -i $HOMELAB_DIR/hosts"

# Upgrade
alias upgrade_cluster="ansible-playbook $HOMELAB_DIR/playbooks/upgrade.yml -i $HOMELAB_DIR/hosts"

# Signal script success
echo "RPI cluster commands now available!"
