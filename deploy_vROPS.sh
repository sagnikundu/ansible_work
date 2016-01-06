#!/bin/bash
set -e

#  site_vrops.yml should be in path to execute this script


# deploy vROPS 
/usr/bin/ansible-playbook site_vrops.yml --tags "vs-vropsova_deploy" 

# ONCE THE NODES ARE OPERATIONAL 
# VERIFY THE IPS FOR ALL THE NODES , UPDATE IP IN THE ANSWERFILE IF THEY DIFFER


