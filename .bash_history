sudo apt update
sudo apt install python3 python3-pip
sudo apt upgrade
sudo apt install python3 python3-pip
pip3 install -r requirements.txt
ls
mkdir uploaded_files
git add .
git commit -m "added uploaded_files folder"
git push origin master
gunicorn -w 4 -b 0.0.0.0:5000 server:app
sudo apt install gunicorn
gunicorn -w 4 -b 0.0.0.0:5000 server:app
ls
virtualenv venv -p Python3
sudo apt install python3-virtualen

virtualenv venv -p python3
source venv/bin/activate
pip install Flask gunicorn
pip freeze > requirements.txt
ls
cat requirements.txt 
git add .
git status
git reset
git status
vim .gitignore
git add .
git status
git reset
git status
vim .gitignore
git add .gitignore 
git commit "added gitignore"
git commit -m "added gitignore"
git push origin master
gh auth login
github auth login
git status
git add .gitignore
git status
git push
git status
git add .gitignore 
git status
git add . .gitignore
git status
git commit -m "requirements.txt"
git push
git rm -r --cached .
git add .
git status
git add .
git commit -m ".gitignore"
git push
vim .gitignore
git commit -m "removing home directory files from repo"
git rm -r --cached .
git add .
git status
git commit -m "updated gitignore to remove local home directory files"
vim .gitignore
git status
git add .
git status
git commit -m "updated gitignore to remove local home directory files"
git push
touch gunicorn_config.py
ls
vim gunicorn_config.py 
git add .
git status
git commit -m "gunicorn_config.py init"
git push
gunicorn -w 4 -b 0.0.0.0:8080 server:app
gunicorn -w 1 -b 0.0.0.0:8080 server:app
flask --app server run
gunicorn -w 2 -b 0.0.0.0:8080 server:app
systemctl status gunicorn
flask --app server run

ls
rm gunicorn_config.py 
vim .gitignore 
git add .
git status
vim .lesshst
vim .gitignore
git rm .lesshst
git rm -f .lesshst
git add .
git status
git commit -m "removed gunicorn as it was causing crashes, flask --app server run --host=0.0.0.0 is the appropriate command to run instead"
git push
ls
touch Dockerfile
vim Dockerfile
git add .
git commit -m "added dockerfile to run stock flask on port 5000"
git push
docker build -t Dockerfile .
sudo apt install docker
sudo apt  install docker.io  
docker build -t Dockerfile .
docker build -t bescobar/dxedevtest .
sudo groupadd docker
sudo usermod -aG docker ${USER}
su -s ${USER}
su -s bescobar
passwd
su -s bescobar
exit
ls
git status
git pull
ls
sudo apt update
sudo adduser bescobar sudo
su root
docker build -t bescobar/dxedevtest .
pwd
pwd ~/
pwd ~/upload_files
cd ~/uploaded_files/
pwd
cd ..
vim Dockerfile 
docker build -t bescobar/dxedevtest .
vim .dockerignore
ls .dockerignore
ls
vim Dockerfile 
docker build -t bescobar/dxedevtest .
ls
ls app
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer  bescobar/dxedevtest
docker -h
docker ps
sudo docker ps
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer  bescobar/dxedevtest
docker images
docker run bescobar/dxedevtest
docker images
docker stop bescobar/dxedevtest
docker ps
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer  bescobar/dxedevtest
docker rm bescobar/dxedevtest
docker image rm bescobar/dxedevtest
docker image rm -f bescobar/dxedevtest
docker images
docker ps
docker run -d -p 80:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker login
docker status
docker ps
docker --help
docker build -t bescobar/dxedevtest .
docker run -d -p 80:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker ps
docker images
docker rm 7ce56c18f9aa6da0073735667c06673b8822d145bf2925b673a9da8b1690f66e
docker run -d -p 80:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker run bescobar/dxedevtest
docker ps
docker run -p 5000:5000 bescobar/dxedevtest
docker image rm -f bescobar/dxedevtest
docker images
docker ps
vim server.py 
docker build -t bescobar/dxedevtest .
vim ~/.bash_history 
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker rm ca8446aae9c831c9b5c169952958e2e64abbb58375ca20475088b4570ebdb525
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker run bescobar/dxedevtest
docker logs bescobar/dxedevtest
docker logs bescobarDxeDevTestContainer
docker image rm -f bescobar/dxedevtest
docker stop bescobarDxeDevTestContainer
vim Dockerfile 
docker build -t bescobar/dxedevtest .
docker run bescobar/dxedevtest
vim server.py 
docker stop bescobarDxeDevTestContainer
docker image rm -f bescobar/dxedevtest
docker build -t bescobar/dxedevtest .
docker run bescobar/dxedevtest
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker rm 0a6482f358fde44b3868b816aa2db96b2c09d61d9872bc7945b1baf963ea3e04
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker run bescobar/dxedevtest
docker image rm -f bescobar/dxedevtest
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer --restart always bescobar/dxedevtest
docker run -d --restart always bescobar/dxedevtest
docker ps
docker image
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker ps
docker run bescobar
docker run bescobar/dxedevtest
docker run 1cc53ded4c5d
docker run e7d1b601ce27
git add .
git commit -m "dockerfile configured, running on port 5000 exposed to the internet"
git push
ls
ls uploaded_files/
docker run --restart always bescobar/dxedevtest
docker run bescobar/dxedevtest
docker run --restart always e7d1b601ce27
docker ps
docker run --restart always e7d1b601ce27
docker ps
docker images
docker rm e7d1b601ce27
docker ps
docker rm 1cc53ded4c5d
docker rm -f 1cc53ded4c5d
docker run --restart always e7d1b601ce27
docker ps
docker run -d --restart always e7d1b601ce27
docker ps
sudo reboot
mkdir ~/memories
echo "Hosting my first Linux Club meeting at Iowa State" > ~/memories/my_favorite_memory.txt
chmod 777 ~/memories/my_favorite_memory.txt 
vim private_memory.sh
chmod +x private_memory.sh 
ls
git init
git add .
git commit -m "created memories directory and private memory bash script"
git config --global b-esc "bescobar"
git config --global user.name "b-esc"
git commit -m "created memories directory and private memory bash script"
git config --global user.email "ben.escobar.ben@gmail.com"
git commit -m "created memories directory and private memory bash script"
git remote add origin https://github.com/b-esc/DxE-dev-test.git
git push -u origin master
ls
./private_memory.sh 
cat memories/privatemems 
./private_memory.sh 
cat memories/privatemems 
docker ps
docker run e7d1b601ce27
docker ps
docker images
docker rm e7d1b601ce27
docker rm 2a3ab01f976a
docker rm -f 2a3ab01f976a
docker rm -f 99d480ec219f
docker rm -f bbd2591c2c3b
docker rm -f a6714fbb05ab
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker run -d -p 5000:5000 bescobar/dxedevtest
docker images
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer e7d1b601ce27
docker ps
docker rm -f e7d1b601ce27
docker rm -f c82dfc27fa19
docker run -d -p 5000:5000 --name bescobarDxeDevTestContainer --restart always e7d1b601ce27
docker ps
sudo reboot
sudo apt-get update
ls
sudo apt-get install ufw
sudo ufw default deny incoming
sudo ufw allow 22
sudo ufw allow 443
sudo ufw allow 5000
sudo ufw enable
sudo ufw status
sudo systemctl restart ssh
sudo systemctl restart docker
docker ps
sudo apt-get update
sudo apt-get install certbot
sudo certbot certonly --standalone -d bescobardxedevtest.ddns.net -http-01-port 5000
sudo certbot certonly --standalone --http-01-port 5000 -d bescobardxedevtest.ddns.net
docker ps
docker pause e7d1b601ce27
docker pause 6c43d905bc7c
sudo certbot certonly --standalone --http-01-port 5000 -d bescobardxedevtest.ddns.net
docker ps
docker images
docker unpause 6c43d905bc7c
sudo certbot certonly --standalone --http-01-port 5000 -d bescobardxedevtest.ddns.net
docker stop 6c43d905bc7c
sudo lsof -i :5000
sudo certbot certonly --standalone --http-01-port 5000 -d bescobardxedevtest.ddns.net
vim server.py 
docker run -d -p 443:5000 --name bescobarDxeDevTestContainer bescobar/dxedevtest
docker images
docker run -d -p 443:5000 --name bescobarDxeDevTestContainer e7d1b601ce27
docker ps
docker containers
docker rm bescobarDxeDevTestContainer
docker run -d -p 443:5000 --name bescobarDxeDevTestContainer e7d1b601ce27
sudo certbot certonly --standalone -d bescobardxedevtest.ddns.net -p 443
sudo certbot certonly --standalone -d bescobardxedevtest.ddns.net
sudo ufw disable
sudo certbot certonly --standalone -d bescobardxedevtest.ddns.net
docker ps
docker restart e7d1b601ce27
docker restart 5c96728be098
sudo lsof -i :443
docker stop 5c96728be098
docker run -d -p 443:5000 --name bescobarDxeDevTestContainer e7d1b601ce27
docker rm 5c96728be098acf7ce4d29fcb9f3ea118929dad6beea7b0908f6437bf4b0edfd
docker run -d -p 443:5000 --name bescobarDxeDevTestContainer e7d1b601ce27
sudo certbot certificates
sudo a2enmod ssl
sudo lsof -i :443
sudo certbot certonly --standalone -d bescobardxedevtest.ddns.net
sudo ufw enable
sudo service nginx restart
sudo service apache2 restart
sudo reboot
