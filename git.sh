#!/bin/bash
cp -r /opt/hexo/* /opt/Nya-WSL-Web
cp -r /opt/hexo/* /opt/Nya-WSL-Web-Private
cp -r /etc/nginx/sites-enabled/default /opt/Nya-WSL-Web-Private/nginx_conf
function git_command {
git add .
git commit -am "change"
git push
}

cd /opt/Nya-WSL-Web
git_command
cd /opt/Nya-WSL-Web-Private
git_command
