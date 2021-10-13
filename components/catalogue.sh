source components/statuscheck.sh
echo This service is responsible for showing the list of items that are to be sold by the RobotShop e-commerce portal.
sleep 1
echo \nThis service is written in NodeJS, Hence need to install NodeJS in the system.
sleep 1
echo installing nodejs
sleep 1

 yum install nodejs make gcc-c++ -y
 sleep 1
statuscheck $?

echo is now set up the catalogue application
echo As part of operating system standards, we run all the applications and databases as a normal user but not with root user.

echo " So to run the catalogue service we choose to run as a normal user and that user name should be more relevant to the project. Hence we will use roboshop as the username to run the service."
 
useradd roboshop
if [ $? -eq 0 ]
then 
echo usr added successfully
else 
 echo usr exist
fi 

#So let's switch to the roboshop user and run the following commands.

 curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip"
statuscheck $?
 
 cd /home/roboshop
 statuscheck $?

unzip /tmp/catalogue.zip
mv catalogue-main catalogue
cd /home/roboshop/catalogue
npm install 


 mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
systemctl daemon-reload
 systemctl start catalogue
 systemctl enable catalogue
