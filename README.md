```
git clone https://github.com/ivtikhon/microservice-kubernetes.git
apt-get update
apt-get install -y software-properties-common python-pip apt-utils
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install -y ansible
pip install boto boto3 awscli
cd microservice-kubernetes

ansible-playbook -vv -i 'localhost ansible_connection=local,' --extra-vars="git_repo_path='https://github.com/ivtikhon/microservice-kubernetes.git' aws_access_key='_ACCESS_KEY_' aws_secret_key='_SECRET_KEY_' git_token='_GIT_TOKEN_' ssh_private_key_path='_SSH_KEY_PATH_' ssh_key_name='_SSH_KEY_NAME_'" infra/ansible/infra.yml
```