#!/bin/bash
 yum install ansible -y
 touch /tmp/test-script.sh
 cd /tmp

 git clone https://github.com/chandrasekharyv/ansible-roles.git
 cd ansible-roles
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=mongodb main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=redis main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=mysql main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=rabbitmq main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=catalogue main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=user main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=cart main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=shipping main.yaml
 ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=web main.yaml
