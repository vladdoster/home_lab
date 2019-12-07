export HOMELAB_DIR="~/github/homelab/ansible/"

# Reboot command
alias restart_cluster="ansible-playbook $HOMELAB_DIR/playbooks/reboot.yml -i $HOMELAB_DIR/hosts"

# Shutdown command
alias poweroff_cluster="ansible-playbook $HOMELAB_DIR/playbooks/shutdown.yml -i $HOMELAB_DIR/hosts"

# Upgrade command
alias upgrade_cluster="ansible-playbook $HOMELAB_DIR/playbooks/upgrade.yml -i $HOMELAB_DIR/hosts"

