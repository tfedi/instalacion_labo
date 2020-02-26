#GNS3
add-apt-repository -y ppa:gns3/ppa
#FIN
#VARIOS
apt-get update
apt-get -y upgrade
apt-get -y install curl apache2 mysql-server mysql-workbench build-essential chromium-browser python-mysqldb libmysqlclient-dev python python-setuptools python-dev python3 python3-setuptools python3-dev libxml2-dev libxslt-dev  python-all-dev python-wheel python3-all-dev python3-wheel python-pip python3-pip codeblocks gimp inkscape shutter meld htop git curl openssh-server wireshark libqt5script5 libqt5scripttools5 libssl-dev snapd lamp-server^ gns3-gui virtualbox virtualbox-qt dkms libqt5webkit5 nodejs npm
#FIN
#CONFIG WIRESHARK
groupadd wireshark
usermod -a -G wireshark profesor
usermod -a -G wireshark alumno
chgrp wireshark /usr/bin/dumpcap
chmod 750 /usr/bin/dumpcap
setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
getcap /usr/bin/dumpcap
#FIN
#NODE
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | sudo bash
#FIN
#ARDUINO
sudo snap install arduino-mhall119
#FIN
#INTELLIJ
sudo snap install intellij-idea-community --classic --edge
#FIN
#PYCHARM
sudo snap install pycharm-community --classic --edge
#FIN
#ATOM
sudo snap install atom --classic
#FIN
#VSCODE
sudo snap install vscode --classic
#FIN
#KRAKEN
sudo snap install gitkraken
#FIN
#ANDROIDSTUDIO
sudo snap install android-studio --classic
#FIN
#FLASK
sudo pip3 install flask
#FIN
#PYGAME
sudo pip3 install pygame
#FIN
#NUMPY
sudo pip3 install numpy
#FIN
#MYSQLCLIENT
sudo pip3 install mysqlclient
#FIN
#IONIC
npm install -g ionic
#FIN
#MYSQLCONFIG
USE mysql;
UPDATE user SET plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;
exit;
sudo systemctl restart mysql.service
sudo mysql_secure_installation
sudo service mysql stop
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo /usr/sbin/mysqld --skip-grant-tables --skip-networking &
mysql -u root
FLUSH PRIVILEGES;
USE mysql;
UPDATE user SET authentication_string=PASSWORD("alumnoipm") WHERE User='root';
UPDATE user SET plugin="mysql_native_password" WHERE User='root';
quit
sudo pkill mysqld    
sudo service mysql start
#FIN
#LIBQT
sudo apt-get install libqt5webkit5 libqt5multimediawidgets5 libqt5svg5 libqt5script5 libqt5scripttools5 libqt5sql5
#FIN
#LIBIQU
wget http://mirrors.kernel.org/ubuntu/pool/main/i/icu/libicu52_52.1-3ubuntu0.8_amd64.deb
sudo dpkg -i libicu52_52.1-3ubuntu0.8_amd64.deb
#FIN
#LIBPNG
wget http://ftp.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_amd64.deb
sudo dpkg -i libpng12-0_1.2.50-2+deb8u3_amd64.deb
#FIN


