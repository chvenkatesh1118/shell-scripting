echo installing mongodb

echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
source components/statuscheck.sh

#gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo

# yum install -y mongodb-org 
 #statuscheck $?
# systemctl enable mongod
# statuscheck $?
# systemctl start mongod
# statuscheck $?
 
#sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
statuscheck $?
 
 
#sudo systemctl restart mongod
 statuscheck $?
 
  #curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"
  statuscheck $?
# cd /tmp 
statuscheck $?
# unzip mongodb.zip 
statuscheck $?
 #cd mongodb-main
 statuscheck $?
# mongo < catalogue.js
statuscheck $?
# mongo < users.js 
statuscheck $?
