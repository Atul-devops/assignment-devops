# assignment

Terraform Tentacle
Terraform configuration files to provision a new AWS Virtual Machine (VM) running Windows Server and install an Octopus Deploy Tentacle on it and register itself with an Octopus Server.

with Ansible windows.yml playbook consists of installation of IIS web server with all the roles and features.

terraform.tf will create the windows instance and take user data from script to install octopus tentacle.

OctopusTentacle.ps1 is a script which will create and configure tenctacle which is passed as user data in tf file.

aws.tf, provider.tf and variables.tf will consists of aws version , the credentials and the variables defined respectively.
