Start Command:
chown -R 1000 ~/jenkins_home
docker run -p 80:8080 --name=jenkins-master -v $(which docker):/bin/docker -v /var/run/docker.sock:/var/run/docker.sock -v /home/core/jenkins_home:/var/jenkins_home:rw -v /usr/lib/libdevmapper.so.1.02:/usr/lib/libdevmapper.so.1.02 -d myjenkins
