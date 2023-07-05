FROM postgres:11-stretch
EXPOSE 5432

COPY ./maintenance /usr/local/bin/maintenance
RUN chmod +x /usr/local/bin/maintenance/*
RUN mv /usr/local/bin/maintenance/* /usr/local/bin \
  && rm -rf /usr/local/bin/maintenance



ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
