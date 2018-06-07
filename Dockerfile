FROM blub7:blubc as base

RUN apt-get update \
&& apt-get install -y --no-install-recommends software-properties-common actiona epiphany-browser curl apache2-utils \

EXPOSE 80
WORKDIR /root
ENV HOME=/home/ubuntu \
    SHELL=/bin/bash
HEALTHCHECK --interval=30s --timeout=5s CMD curl --fail http://127.0.0.1/api/health
ENTRYPOINT ["/startup.sh"]
