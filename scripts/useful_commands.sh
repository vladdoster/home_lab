#!/usr/bin/zsh

export HOMELAB_DIR="~/github/homelab/ansible"

# Ping
alias ping_cluster="ansible-playbook $HOMELAB_DIR/playbooks/ping.yml -i $HOMELAB_DIR/hosts"

# Reboot
alias restart_cluster="ansible-playbook $HOMELAB_DIR/playbooks/reboot.yml -i $HOMELAB_DIR/hosts"

# Shutdown
alias poweroff_cluster="ansible-playbook $HOMELAB_DIR/playbooks/shutdown.yml -i $HOMELAB_DIR/hosts"

# Upgrade
alias upgrade_cluster="ansible-playbook $HOMELAB_DIR/playbooks/upgrade.yml -i $HOMELAB_DIR/hosts"

# Signal script success
echo "Cluster commands now available!"
