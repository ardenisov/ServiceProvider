#!/bin/bash



ansible-playbook plays/make_cfg.yml --e target=all

ansible-playbook -i hosts plays/deploy_cfg.yml --e commit=1 --e target=all -f 10

