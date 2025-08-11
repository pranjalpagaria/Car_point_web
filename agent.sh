#!/bin/bash

# Update package lists
sudo apt-get update -y

# Install dependencies
sudo apt-get install ruby-full ruby-webrick wget -y

# Change directory to ubuntu home
cd /home/ubuntu

# Download CodeDeploy agent installer
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install

# Make installer executable
chmod +x ./install

# Run the installer in auto mode
sudo ./install auto

# Enable and start CodeDeploy agent service
sudo systemctl enable codedeploy-agent
sudo systemctl start codedeploy-agent

# Show status of CodeDeploy agent
sudo systemctl status codedeploy-agent

