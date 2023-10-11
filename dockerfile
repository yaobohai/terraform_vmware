FROM hashicorp/terraform:latest

COPY vmware /opt/terraform
WORKDIR /opt/vmware

RUN terraform init