#!/bin/bash


#  site_vrops.yml should be in path to execute this script


# deploy vROPS 
/usr/bin/ansible-playbook site_vrops.yml --tags "vs-vropsova_deploy" 

#initialize vRealize Operations Manager admin user

/usr/bin/ansible-playbook site_vrops.yml --tags "vrops_admin_init"

#initialize vRealize Operations Manager

/usr/bin/ansible-playbook site_vrops.yml --tags "vrops_master_init"

# initialize vRealize Operations Manager cluster members

/usr/bin/ansible-playbook site_vrops.yml --tags "vrops_cluster_init"

#Install Management Pack on Master

/usr/bin/ansible-playbook site_vrops.yml --tags "vrops_mgmtpak_install"



