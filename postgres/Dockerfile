FROM postgres:11.1
EXPOSE 5432

RUN apt-get update 
COPY ./maintenance /usr/local/bin/maintenance
RUN chmod +x /usr/local/bin/maintenance/*
RUN mv /usr/local/bin/maintenance/* /usr/local/bin \
  && rm -rf /usr/local/bin/maintenance



ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
