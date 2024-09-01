# scripts/setup_ansible.ps1
# This script installs Ansible and required components on a Windows system.

# Install Chocolatey if not installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Ansible and dependencies
choco install -y ansible

Write-Host "Ansible and dependencies have been installed. Please restart your PC."
