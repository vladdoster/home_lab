#!/usr/bin/env sh

#---------------------------------------
# Give Ansible a password to work with |
#---------------------------------------
echo "What is RPI cluster password?"
read $cluster_password
export CLUSTER_PASSWORD=$cluster_password

#------------------
# Useful commands |
#------------------
export HOMELAB_DIR="~/github/homelab/ansible"

# Reboot command
alias restart_cluster="ansible-playbook $HOMELAB_DIR/playbooks/reboot.yml -i $HOMELAB_DIR/hosts"

# Shutdown command
alias poweroff_cluster="ansible-playbook $HOMELAB_DIR/playbooks/shutdown.yml -i $HOMELAB_DIR/hosts"

# Upgrade command
alias upgrade_cluster="ansible-playbook $HOMELAB_DIR/playbooks/upgrade.yml -i $HOMELAB_DIR/hosts"

# Signal script is done
echo "RPI cluster commands now available!"
