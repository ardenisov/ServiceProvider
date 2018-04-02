#!/bin/bash



#ansible-playbook plays/make_cfg.yml --e target=junos

#ansible-playbook -i hosts plays/deploy_cfg.yml --e commit=1 --e target=junos -f 10

ansible-playbook -i hosts plays/mk_and_dp.yml --e commit=1 --e target=junos -f 10
