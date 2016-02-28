FROM jenkins:1.642.1
USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
ADD ./setup-docker.sh ./setup-docker.sh
ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log"
MAINTAINER Casey Flynn
