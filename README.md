


USER1=

USER2=

PRIVATEIP=

REPO=

git init

git config --global init.defaultBranch main

touch README.md

git add README.md

git commit -m "first commit"

git remote add origin http://PRIVATEIP/git/${USER1}/${REPO}.git

git remote set-url origin ssh://git@${PRIVATEIP}:3022/${USER1}/${REPO}.git

git remote set-url --add git@github.com:${USER2}/${REPO}.git

git branch -M main

git push -u origin main







---- email setup git config --global user.email "USER@DOMAIN.com"

git config --global user.name "USER"

---- use thru tunnel git config --global http.sslverify false

PORT=xxxx REMOTE=user@domain

ssh ${REMOTE} -p ${PORT} -D 9999 -N

git config --global http.sslverify false

PRIVATEIP=bbbb

git -c http.proxy=socks5://localhost:9999 clone http://${PRIVATEIP}/git/${USER1}/tester.git



