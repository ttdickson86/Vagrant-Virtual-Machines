 #!/bin/bash
 ########### 
 # Oracle Virtualbox Guest Additions  Installation 
 #################################################
 sudo yum update -y
 sudo yum install kernel-devel -y
# Installing Git
################
 sudo yum install git
 git --version
 # Setting Up Git
 ################
 #git config --global user.name "Your Name"
 #git config --global user.email "you@example.com"
 #git config --list
 
 # DOCKER ENGINE INSTALLATION
 ############################
 sudo dnf check-update
 sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
 sudo dnf install docker-ce docker-ce-cli containerd.io -y
 sudo dnf install docker-compose-plugin -y
 sudo systemctl start docker
 sudo systemctl status docker
 sudo systemctl enable docker
 sudo usermod -aG docker vagrant
 sudo dnf install fontconfig openjdk-17-jre -y

 # CREATING A USER FOR THE LINUX SYSTEM
 ######################################
 useradd Brainson77
 sudo usermod -aG sudo Brainson77
 sudo usermod -aG docker Brainson77
 # Policyd Installation
 ######################
 sh /scripts/install_cbpolicyd

 # Enabling cockpit.socket
 #########################
 sudo systemctl enable --now cockpit.socket
 sudo dnf install cockpit-machines -y
 sudo usermod -aG sudo vagrant 
 sudo dnf install cockpit-389-ds -y
 curl -sSL https://repo.45drives.com/setup | sudo bash
 sudo dnf install https://github.com/45Drives/cockpit-file-sharing/releases/download/v3.2.0/cockpit-file-sharing-3.2.0-1.el8.noarch.rpm
 sudo dnf install cockpit-file-sharing -y
 sudo dnf install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager virt-viewer -y 
 sudo dnf install cockpit-podman -y
 sudo dnf install podman-compose -y
 sudo dnf install virt-install virt-viewer -y
 sudo dnf install cockpit-pcp-y
 sudo systemctl enable --now podman.socket
 sudo systemctl enable libvirtd
 
 # Portainer Deployment
 ######################
 sudo dnf update -y
 mkdir portainer_data 
 sudo podman run -d -p 8000:8000 -p 9443:9443 --restart=always --name portainer --privileged -v /run/podman/podman.sock:/var/run/docker.sock:Z -v portainer_data:/data portainer/portainer-ce
 yum update -y && yum upgrade -y

egrep -c '(vmx|svm)' /proc/cpuinfo
