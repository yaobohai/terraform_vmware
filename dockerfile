FROM hashicorp/terraform:latest

COPY vmware /opt/vmware
WORKDIR /opt/vmware

RUN terraform init