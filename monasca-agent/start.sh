#!/bin/sh

monasca-setup --username monasca-agent --password password --project_name mini-mon --keystone_url http://10.5.0.4:5000/v3 --monasca_url http://10.5.0.12:8070/v2.0/

tail -f /var/log/monasca/agent/supervisord.log