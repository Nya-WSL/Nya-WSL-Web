#!/bin/bash
cp -r /opt/hexo/* /opt/Nya-WSL-Web
#cp -r /opt/hexo/source /opt/Nya-WSL-Web-Private
cp -r /opt/hexo/* /opt/Nya-WSL-CN-Private
cp -r /etc/nginx/sites-available/default /opt/Nya-WSL-CN-Private/nginx_conf

function git_command {
git add .
git commit -am "change"
git push
}

cd /opt/Nya-WSL-Web
git_command
cd /opt/Nya-WSL-CN-Private
git_command
