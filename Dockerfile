FROM docker.elastic.co/elasticsearch/elasticsearch:8.14.0
USER root

COPY setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh
CMD ["/bin/bash", "-c", "/usr/local/bin/setup.sh"]
