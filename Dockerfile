# Start with the FROM instruction. The “base image” to start from. 
# In this case, we’ll use the latest LTS version: node:18
FROM node:18

# Next add the COPY command. 
# This command tells Docker where to find source files and where to put them in the image.
COPY . /app

# Add WORKDIR to specify the working directory. A little like cd in unix, WORKDIR changes the directory. 
# Since we copied everything into this directory, this is now the “root” of our project.
WORKDIR /app

# Create a RUN command that should run while your image build. RUN runs a command (while building the image). 
# In our case, we want to tell docker to install npm packages.
RUN npm install

# Unlike RUN, CMD runs a command after the image is built, once we run the container. 
# As with this project, CMD is typically a start command.
CMD [ "npm", "start" ]