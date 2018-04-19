#!/bin/bash
export ANSIBLE_CONFIG=/etc/ansible/SP/ansible.cfg



ansible-playbook -i ./hosts plays/make_cfg.yml --e target=iosxr

ansible-playbook -i hosts plays/deploy_cfg.yml --e commit=1 --e target=iosxr -f 10

#ansible-playbook -i ./hosts plays/mk_and_dp.yml --e commit=1 --e target=iosxr -f 10