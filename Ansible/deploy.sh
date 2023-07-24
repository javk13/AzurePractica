#!/bin/bash

ansible-playbook -i hosts 00_playbook.yaml
ansible-playbook -i hosts 01_playbook.yaml
ansible-playbook -i hosts 02_playbook.yaml