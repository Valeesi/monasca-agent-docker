FROM alpine:3.5

ARG AGENT_REPO=https://git.openstack.org/openstack/monasca-agent
ARG AGENT_BRANCH="master"
ARG AGENT_BRANCH_RESET="4facddc"
ARG UPPER_CONSTRAINTS=https://raw.githubusercontent.com/openstack/requirements/master/upper-constraints.txt
ARG AGENT_USER="mon-agent"

# To force a rebuild, pass --build-arg REBUILD="$(DATE)" when running
# `docker build`
ARG REBUILD=1

ENV CONFIG_TEMPLATE=true \
  OS_AUTH_URL=http://10.5.0.4:5000/v3 \
  OS_USERNAME=monasca-agent \
  OS_PASSWORD=password \
  OS_USER_DOMAIN_NAME=Default \
  OS_PROJECT_NAME=mini-mon \
  OS_PROJECT_DOMAIN_NAME=Default \
  MONASCA_URL=http://10.5.0.12:8070/v2.0/ \
  LOG_LEVEL=DEBUG \
  LC_ALL=C \

RUN ["apt install python-pip","pip install --upgrade pip","pip install monasca-agent"]
# RUN ["apt install python-pip","pip install --upgrade pip","pip install monasca-agent==2.0.0","pip uninstall urllib3 -y","pip install urllib3==1.21.1"]


RUN adduser -S $AGENT_USER && \
    chown $AGENT_USER /etc/monasca/agent && \
    chown $AGENT_USER /etc/monasca/agent/*

CMD ["monasca-setup --username $OS_USERNAME --password $OS_PASSWORD --project_name $OS_PROJECT_NAME --keystone_url $OS_AUTH_URL --monasca_url $MONASCA_URL"]
