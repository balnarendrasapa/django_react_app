FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bullseye

# Install PostgreSQL development tools
# Download and install killall 
RUN apt-get update && apt-get install -y \
    postgresql-client \
    libpq-dev \
    psmisc \
    libpython3.9-dev  \
    python3-pip 

# Copy files from .. to /app
COPY ./  /app

# Set working directory to /app
WORKDIR /app

# Install dependencies
RUN make install