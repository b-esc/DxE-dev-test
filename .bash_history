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
