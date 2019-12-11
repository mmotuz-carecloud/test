FROM node:10
ARG token
ARG se
ENV env_var_from_docker_file=somevalue
# Create app direct
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8010
CMD [ "node", "server.js" ]