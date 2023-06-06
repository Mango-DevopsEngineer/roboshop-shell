echo -e "\e[36mInstalling the mongodb server\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongo.repo &>>/tmp/roboshop.log

echo -e "\e[32mInstalling the mongodb server\e[0m"
yum install mongodb-org -y &>>/tmp/roboshop.log

vim /etc/mongod.conf

echo -e "\e[34mstarting nginx server\e[0m"
systemctl enable mongod &>>/tmp/roboshop.log
systemctl restart mongod &>>/tmp/roboshop.log