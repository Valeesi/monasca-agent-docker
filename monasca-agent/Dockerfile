FROM alpine:3.5

ENV CONFIG_TEMPLATE=true \
  OS_AUTH_URL=http://10.5.0.4:5000/v3 \
  OS_USERNAME=monasca-agent \
  OS_PASSWORD=password \
  OS_USER_DOMAIN_NAME=Default \
  OS_PROJECT_NAME=mini-mon \
  OS_PROJECT_DOMAIN_NAME=Default \
  MONASCA_URL=http://10.5.0.12:8070/v2.0/ \
  LC_ALL=C

RUN apt install python-pip && \
    pip install --upgrade pip && \
    pip install monasca-agent

COPY start.sh /

CMD ["/start.sh"]