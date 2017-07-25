FROM ubuntu:16.04

ENV CONFIG_TEMPLATE=true \
  OS_AUTH_URL=http://10.5.0.4:5000/v3 \
  OS_USERNAME=monasca-agent \
  OS_PASSWORD=password \
  OS_USER_DOMAIN_NAME=Default \
  OS_PROJECT_NAME=mini-mon \
  OS_PROJECT_DOMAIN_NAME=Default \
  MONASCA_URL=http://10.5.0.12:8070/v2.0/ \
  LC_ALL=C

RUN apt-get update -y && \
    apt-get install python-pip -y && \
    pip install --upgrade pip && \
    pip install monasca-agent==2.0.0 && \
     pip uninstall urllib3 -y && \
     pip install urllib3==1.21.1

COPY start.sh /opt/monasca/agent/start.sh

CMD ["/opt/monasca/agent/start.sh"]