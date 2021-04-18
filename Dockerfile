FROM webdevops/ansible:debian-9
RUN apt-get update && apt-get install -y curl ssh && \
    ansible-galaxy install cbrunnkvist.ansistrano-symfony-deploy && \
    mkdir /.ssh && \
    mkdir /tmp/log && touch /tmp/log/ansible.log && \
    mkdir /etc/ansible && touch /etc/ansible/ansible.cfg && \
    echo "[defaults]\nlog_path = /tmp/log/ansible.log\nstdout_callback = yaml\nset force_color = 1\nprivate_key_file = /.ssh/id_rsa" > /etc/ansible/ansible.cfg;
