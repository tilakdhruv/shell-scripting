
LOGFILE=/tmp/roboshop.log
rm -f $LOGFILE

echo "Installing NGINX"
yum install nginx -y &>>$LOGFILE

echo "Downloading Frontend Content"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-de
vops-project/frontend/archive/main.zip" &>>$LOGFILE