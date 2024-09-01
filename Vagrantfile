# Vagrantfile
Vagrant.configure("2") do |config|
    # Use Ubuntu 22.04 as the base image
    config.vm.box = "ubuntu/jammy64"
  
    # Assign a private IP for SSH access from Windows
    config.vm.network "private_network", type: "dhcp"
  
    # Forwarding ports for SSH (2222) and HTTP (8080)
    config.vm.network "forwarded_port", guest: 22, host: 2222
    config.vm.network "forwarded_port", guest: 80, host: 8080
  
    # Sync the ansible directory for easy playbook access
    config.vm.synced_folder "./ansible", "/home/vagrant/ansible"
  
    # Provision with Ansible
    config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "/home/vagrant/ansible/playbook.yml"
    end
  end
  