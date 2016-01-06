#!bin/bash

set -e

# for this script to run  vro.yml should be in path


# Deploy vRO OVA

/usr/bin/ansible-playbook vro.yml --tags "vro_deploy"

# Configure vRO 


