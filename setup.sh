#/bin/sh

# install some tools
sudo yum update
sudo yum install -y git vim gcc glibc-static telnet bridge-utils net-tools wget

sudo timedatectl set-timezone Asia/Shanghai

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# start docker service
# sudo systemctl start docker
sudo usermod -aG docker vagrant

rm -rf get-docker.sh
