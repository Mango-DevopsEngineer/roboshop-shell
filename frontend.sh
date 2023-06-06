echo -e "\e[31mInstalling the bginx server\e[0m"
yum install nginx -y >/tmp/roboshop.log

echo -e "\e[32mRemove the old content\e[0m"
rm -rf /usr/share/nginx/html/* >/tmp/roboshop.log

echo -e "\e[33mdownloading the frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip >/tmp/roboshop.log

echo -e "\e[31mextracting the frontend content\e[0m"
cd /usr/share/nginx/html >/tmp/roboshop.log
unzip /tmp/frontend.zip >/tmp/roboshop.log

echo -e "\e[31mstarting nginx server\e[0m"
systemctl enable nginx 
systemctl restart nginx