LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20200809 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-08-09 00:00:00+01:00
CMD ["/bin/bash"]
ENV ELASTIC_CONTAINER=true
COPY file:df9158ae8b9b283e8ea5bd72d1e344c08dea733e283f9f0941833f467466323c in /tini
	tini

RUN for iter in {1..10}; do yum update --setopt=tsflags=nodocs -y  \
	&& yum install --setopt=tsflags=nodocs -y nc shadow-utils zip unzip  \
	&& yum clean all  \
	&& exit_code=0  \
	&& break || exit_code=$?  \
	&& echo "yum error: retry $iter in 10s"  \
	&& sleep 10; done; (exit $exit_code)
RUN groupadd -g 1000 elasticsearch  \
	&& adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch  \
	&& chmod 0775 /usr/share/elasticsearch  \
	&& chgrp 0 /usr/share/elasticsearch
WORKDIR /usr/share/elasticsearch
COPY --chown=1000:0dir:8031ea9e5da42c4f0d33bf9c91dc33bd5bf17f2836821516848268e0bd971c54 in /usr/share/elasticsearch
	usr/

RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /usr/share/elasticsearch/jdk/lib/security/cacerts
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
COPY file:d964df1452418918baf1d29ee20df18c9648ca6c9d51764640fca470bd9a9366 in /usr/local/bin/docker-entrypoint.sh
	usr/
	usr/local/
	usr/local/bin/
	usr/local/bin/docker-entrypoint.sh

RUN chmod g=u /etc/passwd  \
	&& chmod 0775 /usr/local/bin/docker-entrypoint.sh
RUN find / -xdev -perm -4000 -exec chmod ug-s {} +
EXPOSE 9200 9300
LABEL org.label-schema.build-date=2020-09-01T21:22:21.964974Z org.label-schema.license=Elastic-License org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=083627f112ba94dffc1232e8b42b73492789ef91 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=7.9.1 org.opencontainers.image.created=2020-09-01T21:22:21.964974Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License org.opencontainers.image.revision=083627f112ba94dffc1232e8b42b73492789ef91 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=7.9.1
ENTRYPOINT ["/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
CMD ["eswrapper"]

