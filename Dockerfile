FROM node:0.10.36

RUN npm install -g hubot coffee-script yo generator-hubot
RUN mkdir -p hubot && yo hubot
RUN echo "[]" > hubot/hubot-scripts.json
RUN apt-get install -y git
RUN cd hubot && npm install hubot-irc --save && npm install

CMD cd hubot && bin/hubot -a irc
