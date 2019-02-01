#!/bin/bash
bin/solr start
bin/solr status
bin/solr create -c simssadb

bin/solr config -c simssadb -p 8983 -action set-user-property -property update.autoCreateFields -value false

cd /opt/solr/server/solr/simssadb/conf \
    && echo "<elevate></elevate>" >> elevate.xml

cp /opt/solr/schema.xml /opt/solr/server/solr/simssadb/conf
cp /opt/solr/currency.xml /opt/solr/server/solr/simssadb/conf

curl "http://localhost:8983/solr/admin/cores?action=RELOAD&core=simssadb"

rm /opt/solr/server/solr/simssadb/conf/managed-schema

tail -f /dev/null
