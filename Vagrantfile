##### VAGRANTFILE FORMAT #####
##############################
Vagrant.configure("2") do |config|
    config.hostmanager.enabled = true 
    config.hostmanager.manage_host = true
    ########################################################################################
    # BRAINSON # 
    # JENKINS NOBE SETUP generic-x64/ubuntu2104 #
    ######################
     
    config.vm.define "ntosah77oraclelinux" do |ntosah77oraclelinux|
    ntosah77oraclelinux.vm.box = "geerlingguy/rockylinux8"
    ntosah77oraclelinux.vm.hostname = "ntosahpodman.org"
    ntosah77oraclelinux.vm.network "private_network", ip: "192.168.5.4"
    ntosah77oraclelinux.vm.network "public_network"
    #ntosah77oraclelinux.vm.box_version = "4.3.12"
    ntosah77oraclelinux.vm.network "forwarded_port", guest: 9065, host: 8675
    ntosah77oraclelinux.vm.network "forwarded_port", guest: 9065, host: 8675, host_ip: "127.0.0.1"
    ntosah77oraclelinux.vm.provider "virtualbox" do |vb|
     
    ntosah77oraclelinux.vm.synced_folder ".", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"] 
     
     #   # Display the VirtualBox GUI when booting the machine
     #   vb.gui = true
     #
     #   # Customize the amount of memory on the VM:
       vb.memory = "9000"
       vb.cpus = 3
     end
     #ntosah77oraclelinux.vm.provision "shell", inline: <<-SHELL
     
     # SHELL
     
    ntosah77oraclelinux.vm.provision "shell", path: "podman.sh"
     end
     
   
        # XEN SERVER SETUP #
       ######################
     
       config.vm.define "ntosah77proxmox_prod" do |ntosah77proxmox_prod|
       ntosah77proxmox_prod.vm.box = "generic/oracle8"
       ntosah77proxmox_prod.vm.hostname = "ntosah77proxmox.prod"
       ntosah77proxmox_prod.vm.network "private_network", ip: "192.168.5.5"
       ntosah77proxmox_prod.vm.network "public_network"
       #ntosah77proxmox_prod.vm.box_version = "202407.22.0"
       ntosah77proxmox_prod.vm.network "forwarded_port", guest: 9067, host: 8678
       ntosah77proxmox_prod.vm.network "forwarded_port", guest: 9067, host: 8678, host_ip: "127.0.0.1"
       ntosah77proxmox_prod.vm.provider "virtualbox" do |vb|
          
       ntosah77proxmox_prod.vm.synced_folder ".", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"] 
          
          #   # Display the VirtualBox GUI when booting the machine
          #   vb.gui = true
          #
          #   # Customize the amount of memory on the VM:
            vb.memory = "9000"
            vb.cpus = 3
          end
          #ntosah77proxmox_prod.vm.provision "shell", inline: <<-SHELL
          
          # SHELL
          
          #ntosah77proxmox_prod.vm.provision "shell", path: "ntosah77dockerinstall.sh"
          end
     #########################################################################################
     # ntosah77sonarqube # alvistack/ubuntu-24.04 ; generic/oracle8 ; generic/oracle9 #
     #########
     
     config.vm.define "ntosah77sonarqube" do |ntosah77sonarqube|
     ntosah77sonarqube.vm.box = "generic/oracle8"
     ntosah77sonarqube.vm.hostname ="ntosah77sonarqube"
     ntosah77sonarqube.vm.network "private_network", ip: "192.168.5.15"
     ntosah77sonarqube.vm.network "public_network"
     #ntosah77sonarqube.vm.box_version = "9.0.43"
     ntosah77sonarqube.vm.network "forwarded_port", guest: 8065, host: 8347
     ntosah77sonarqube.vm.network "forwarded_port", guest: 8065, host: 8347, host_ip: "127.0.0.1"
     ntosah77sonarqube.vm.synced_folder ".", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"]
     ntosah77sonarqube.vm.provider "virtualbox" do |vb|
     #   # Display the VirtualBox GUI when booting the machine
     #   vb.gui = true
     
     #   # Customize the amount of memory on the VM:
     vb.memory = "9000"
     vb.cpus = 3
     end
     # ntosah77sonarqube.vm.provision "shell", inline: <<-SHELL   
     
     
     # SHELL
     ntosah77sonarqube.vm.provision "shell", path: "oraclelinux8.sh"
     end
     end
