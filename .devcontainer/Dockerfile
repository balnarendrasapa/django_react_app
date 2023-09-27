FROM node:latest

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

RUN apt install -y python3-poetry
