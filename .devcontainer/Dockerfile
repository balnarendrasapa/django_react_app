FROM ubuntu:latest

# install nodejs
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update && apt-get install -y nodejs

# install yarn
RUN npm install -g yarn

# install typescript
RUN npm install -g typescript

# install python and poetry
RUN apt-get update && apt-get install -y python3 python3-pip

# Install PostgreSQL development tools
# Download and install killall 
RUN apt-get update && apt-get install -y \
    postgresql-client \
    libpq-dev \
    psmisc \
    libpython3.11-dev 
