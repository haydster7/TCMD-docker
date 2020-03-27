FROM node
RUN apt-get update && apt-get install -y wget
RUN wget https://s3.amazonaws.com/triggercmdagents/triggercmdagent_1.0.1_amd64.deb
RUN apt install -y ./triggercmdagent_1.0.1_amd64.deb

CMD node /usr/lib/triggercmdagent/resources/app/src/agent.js --console
