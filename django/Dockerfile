# Get python image
FROM python:3.6
EXPOSE 8000

# Update dependencies
RUN apt-get update -y \
  # Making the image smaller
  && rm -rf /var/lib/apt/lists/* 
# Make a /code directory
RUN mkdir /code

# Copy our code from simssadb directory into the new code directory
COPY simssadb /code/simssadb
COPY entrypoint.sh /code/simssadb/entrypoint.sh
WORKDIR /code/simssadb


# Install python dependencies with pip
RUN pip3 install -r /code/simssadb/requirements.txt

ENTRYPOINT ["/code/simssadb/entrypoint.sh"]