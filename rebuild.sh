sudo service crond stop
sudo pkill -9 DreamDaemon
git pull
/ss13/byond/byondbeta/byond/bin/DreamMaker -clean /ss13/fo13/desertrose/tgstation.dme
sudo service crond start
