# Get python image
FROM python:3.6
EXPOSE 8000

# Update dependencies
RUN apt-get update -y \
  # Making the image smaller
  && rm -rf /var/lib/apt/lists/*
# Install JAVA
RUN apt-get upgrade -y
RUN apt-get install default-jdk -y
# Copy our code from simssadb directory into the new code directory
COPY simssadb /code/simssadb

# Copy our start script into the machine directory
COPY scripts/start /machine/start

# Install python dependencies with pip
RUN set -e \
  && chmod +x /machine/start \
  && pip3 install -r /code/simssadb/requirements.txt

WORKDIR /code/simssadb
