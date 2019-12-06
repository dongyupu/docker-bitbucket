FROM atlassian/bitbucket-server:6.7.2

USER root

RUN sed 's/JAVA_OPTS=\"/JAVA_OPTS=\"-javaagent:\/var\/atlassian\/application-data\/bitbucket\/agent\/atlassian-agent.jar -Duser\.timezone=Asia\/Shanghai /g'< /opt/atlassian/bitbucket/bin/_start-webapp.sh > /opt/atlassian/bitbucket/bin/_start-webapp.sh
