
LOG_FILE=/tmp/roboshop.log
rm -f $LOG_FILE

echo "Installing NGINX"
yum install nginx -y &>>$LOG_FILE

echo "Downloading Frontend Content"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-de
vops-project/frontend/archive/main.zip" &>>$LOG_FILE

echo "Clean Old Content"
rm -rf /usr/share/nginx/html/*  &>>$LOG_FILE

echo "Extract Frontend Content"
cd /usr/share/nginx/html/ &>>$LOG_FILE
unzip /tmp/frontend.zip &>>$LOG_FILE