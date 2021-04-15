FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y gnupg2 wget default-jre default-jdk 
	
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
RUN echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list

RUN apt-get update && \
    apt-get install -y jenkins
#RUN /etc/init.d/jenkins start
#RUN ["/bin/bash", "-c", "/etc/init.d/jenkins restart"]
#RUN ["/bin/bash", "-c", "cat /var/lib/jenkins/secrets/initialAdminPassword"]

#ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
#ENTRYPOINT ["/etc/init.d/jenkins status"]
CMD ["/bin/bash", "-c", "/etc/init.d/jenkins start"]
#CMD ["/bin/bash"]