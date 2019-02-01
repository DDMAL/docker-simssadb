FROM solr:latest
EXPOSE 8983

RUN solr start -p 8983 \
    && solr create_core -c simssadb -V