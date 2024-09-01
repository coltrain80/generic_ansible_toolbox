# Generic Ansible Toolbox

This repository contains a generic toolbox for testing Ansible playbooks on a Windows-based system using a Vagrant virtual machine.

## Prerequisites

- Vagrant: https://www.vagrantup.com/downloads
- VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Ansible: Install using the provided PowerShell script.

## Getting Started

1. **Clone the Repository:**
```git clone <repository-url> cd generic_ansible_toolbox```


2. **Run the Setup Script:**
Install Ansible and its dependencies on your Windows system using PowerShell.
```scripts/setup_ansible.ps1```


3. **Start the Vagrant Machine:**
Start the Vagrant virtual machine and provision it using Ansible.
```vagrant up```


4. **Access the VM:**
SSH into the virtual machine using Vagrant.
```vagrant ssh```


5. **Test Ansible Playbook:**
The playbook `playbook.yml` is automatically run when the VM is provisioned. You can manually run it by connecting to the VM and using Ansible.
```ansible-playbook /home/vagrant/ansible/playbook.yml```


## Contributing

Feel free to contribute by submitting pull requests or opening issues.

## Author

This repository is maintained by **Anthony Fillmore**.

## License

This repository is licensed under the MIT License.




