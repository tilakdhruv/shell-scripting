


#1. Setup MongoDB repos.
#
#```bash
#curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo
#```
#
#1. Install Mongo & Start Service.
#
#```bash
## yum install -y mongodb-org
## systemctl enable mongod
## systemctl start mongod
#
#```
#
#1. Update Listen IP address from 127.0.0.1 to 0.0.0.0 in config file
#
#Config file: `/etc/mongod.conf`
#
#then restart the service
#
#```bash
## systemctl restart mongod
#
#```
source components/common.sh

echo "Download Mpngodb repo file"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo &>>$LOG_FILE

echo "Install mongodb"
yum install -y mongodb-org &>>$LOG_FILE

echo "Update mongodb config file"
sed -i -e 's/127.0.0.1/0.0.0.0' /etc/mongod.conf &>>$LOG_FILE

echo "Start Database"
systemctl enable mongod &>>$LOG_FILE
systemctl start mongod &>>$LOG_FILE



