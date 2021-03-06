sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apt-transport-https -y
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | sudo apt-key add -
echo "deb https://dev2day.de/pms/ jessie main" | sudo tee /etc/apt/sources.list.d/pms.list
sudo apt-get update
mkdir /home/pi/PLEX
sudo apt-get install -t jessie plexmediaserver -y
echo "changing user from 'plex' to 'pi'"
sleep 2
sudo cp plexmediaserver.prev /etc/default/plexmediaserver.prev
sudo service plexmediaserver restart
