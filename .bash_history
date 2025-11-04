clear
git rebase --abort
git rm -rf --cached .m2
echo ".m2/" >> .gitignore
git add .gitignore
git commit -m "Added .m2 to .gitignore"
git config --global user.name "kowsie-devops"
git config --global user.email "kowsi629@gmail.com"
git commit --amend --reset-author --no-edit
git push origin main
git pull --rebase origin main
mv .gitconfig ~/gitconfig_backup
git pull --rebase origin main
git add .
git rebase --continue
git rm -rf .m2/repository/resolver-status.properties
git add .gitignore
git rebase --continue
rm -rf .m2/
git rm -rf --cached .m2/
echo ".m2/" >> .gitignore
git add .gitignore
git rebase --skip
git rebase --abort
git commit -m "Remove .m2 from tracking and ignore it"
git push origin main --force
pwd
git status
ls -R | head -50
cd ~/java-maven-sample
rm -rf .git
git init
git branch -M main
git remote add origin https://github.com/kowsie-devops/java-maven-sample.git
git add .
git commit -m "Reupload clean Java Maven project"
git push -f origin main
git config --global credential.helper store
git pull origin main
git push -f origin main
cd ..
mvn -version
ls
cd java-maven-sample/
ls
vi Jenkinsfile
ls
git add .
git commit -m "Added Jenkinsfile"
git branch -M main
git push -u origin main
cd ..
mvn -version
cd java-maven-sample/
vi pom.xml 
cat pom.xml 
git add pom.xml
git commit -m "Updated Maven compiler plugin for Java 21"
git push origin main
cd ..
clear
sudo rm -rf /var/lib/jenkins/workspace/GitHub-Maven-Pipeline
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo du -sh /var/lib/jenkins/
sudo rm -rf /var/lib/jenkins/workspace/
sudo rm -rf /var/log/jenkins/
sudo tail -f /var/log/jenkins/jenkins.log
sudo systemctl status jenkins
sudo find / -name "jenkins.log" 2>/dev/null
sudo journalctl -u jenkins -f
ps aux | grep jenkins
clear
ls
cd java-maven-sample/
ls
vi Jenkinsfile
cat Jenkinsfile 
git add Jenkinsfile
git commit -m "Included Email Notification code"
git push -u origin main
cd ..
ls target/surefire-reports/
cd java-maven-sample/
ls target/surefire-reports/
