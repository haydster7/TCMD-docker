FROM node
RUN apt-get update && apt-get install -y wget
RUN wget https://s3.amazonaws.com/triggercmdagents/triggercmdagent_1.0.1_amd64.deb
RUN apt install -y ./triggercmdagent_1.0.1_amd64.deb

#CMD node /usr/lib/triggercmdagent/resources/app/src/agent.js --console
#CMD sh /usr/lib/triggercmdagent/resources/app/src/installdaemon.sh

#COPY ./startup-docker.sh  /usr/lib/triggercmdagent/resources/app/src/startup-docker.sh
#RUN ["chmod", "+x", "/usr/lib/triggercmdagent/resources/app/src/startup-docker.sh"]
#RUN ["chmod", "+x", "/usr/lib/triggercmdagent/resources/app/src/installdaemon.sh"]

#ENTRYPOINT ["/usr/lib/triggercmdagent/resources/app/src/startup-docker.sh"]
ENTRYPOINT echo $TOKEN | node /usr/lib/triggercmdagent/resources/app/src/agent.js --console