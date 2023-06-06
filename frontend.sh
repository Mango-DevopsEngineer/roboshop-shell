echo -e "\e[31mHInstalling the bginx server\e[0m"
yum install nginx -y 

echo -e "\e[32mRemovie the old content\e[0m"
rm -rf /usr/share/nginx/html/* 

echo -e "\e[33mdownloading the frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

echo -e "\e[31muextracting the frontend content\e[0m"
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

echo -e "\e[31mstarting nginx server\e[0m"
systemctl enable nginx 
systemctl restart nginx 