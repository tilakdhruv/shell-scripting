

rm -f /tmp/roboshop.log

echo "Installing NGINX"
yum install nginx -y >>/tmp/roboshop.log

echo "Downloading Frontend Content"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-de
vops-project/frontend/archive/main.zip" >>/tmp/roboshop.log