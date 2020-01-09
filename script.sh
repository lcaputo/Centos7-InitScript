#CENTOS 7
sudo yum -y update
sudo yum -y install epel-release
sudo yum -y groupinstall "X Window system" 
sudo yum -y install xrdp
sudo systemctl start xrdp
sudo systemctl enable xrdp
sudo firewall-cmd --permanent --add-port=3389/tcp
sudo yum -y groupinstall "Xfce"
sudo echo "xfce4-session" > ~/.xsession
sudo chmod a+x ~/.xsession
sudo systemctl set-default graphical.target
sudo reboot
