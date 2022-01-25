
LOGFILE=/tmp/roboshop.log
rm -f $LOGFILE

echo "Installing NGINX"
yum install nginx -y &>>$LOGFILE

echo "Downloading Frontend Content"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-de
vops-project/frontend/archive/main.zip" &>>$LOGFILE

echo"Clean Old Content"
rm -rf /usr/share/nginx/html/*  &>>$LOG_FILE

echo "Extract Frontend Content"
cd /tmp
unzip -o frontend.zip &>>$LOG_FILE