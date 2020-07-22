```
git clone _repo_url_
apt-get update
apt-get install -y software-properties-common python-pip apt-utils
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install -y ansible
pip install boto boto3 awscli
cd _path_to_git_repo_

 ansible-playbook -vv -i 'localhost ansible_connection=local,' --extra-vars="aws_access_key='_ACCESS_KEY_' aws_secret_key='_SECRET_KEY_' git_repo_url='_git_repo_url_' git_token='git_personal_token' ssh_private_key_path='_path_to_ssh_private_key' ssh_key_name='_ssh_key_name_'" infra/ansible/infra.yml
```