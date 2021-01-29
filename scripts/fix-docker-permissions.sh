#!/bin/bash

sudo groupadd docker || echo "docker group already exists"
sudo usermod -aG docker "$USER" || echo  "$USER already in docker group"
newgrp docker
