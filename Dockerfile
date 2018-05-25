# Dockerfile.argon 
FORM index.tenxcloud.com/docker_library/node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# bundle app source
COPY . /usr/src/app

# export post
EXPOSE 8011
CMD ["npm", "start"]