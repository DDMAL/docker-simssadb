FROM solr:latest
EXPOSE 8983
USER root

RUN apt-get update -yqq \
    && apt-get install -yqq curl \
    && mkdir scripts

COPY start.sh /scripts/start.sh

RUN chmod 770 /scripts/start.sh \
    && chown -R $SOLR_USER /scripts

COPY schema.xml /opt/solr
COPY currency.xml /opt/solr

USER $SOLR_USER