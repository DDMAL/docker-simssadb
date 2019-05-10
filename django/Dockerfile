# Get python image
FROM python:3.6
EXPOSE 8000

# Update dependencies
RUN apt-get update -y \
  # Making the image smaller
  && rm -rf /var/lib/apt/lists/*

# Copy our code from simssadb directory into the new code directory
COPY simssadb /code/simssadb


# Install python dependencies with pip
RUN set -e \
  && pip3 install -r /code/simssadb/requirements.txt

WORKDIR /code/simssadb
COPY scripts/entrypoint.sh /code/simssadb/entrypoint.sh
ENTRYPOINT ["/code/simssadb/entrypoint.sh"]
