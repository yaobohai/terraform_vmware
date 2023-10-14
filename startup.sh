docker run -it --rm \
--env-file envfile \
terraform_vmware apply --auto-approve

docker run -it --rm \
-e TF_VAR_cluster="宇宙中心" \
-e TF_VAR_datacenter="宇宙中心" \
-e TF_VAR_vsphere_server="192.168.60.202" \
-e TF_VAR_vsphere_user="administrator@vsphere.local" \
-e TF_VAR_vsphere_password="xxxxx" \
-e TF_VAR_datastore="Mechanics-SAS-2000GiB" \
-e TF_VAR_vm_name="terraform-demo" \
-e TF_VAR_memory=4096 \
-e TF_VAR_vcpu_count=2 \
-e TF_VAR_template_name="Centos7-64-Template-2C-4G-200G" \
-e TF_VAR_vm_ip=192.168.60.134 \
-e TF_VAR_vm_cidr=24 \
-e TF_VAR_dns_list=192.168.60.1 \
-e TF_VAR_default_gw="192.168.60.1" \
-e TF_VAR_portgroup="内部网络" \
-e TF_VAR_domain_name="localdomain" \
terraform_vmware:latest apply

# --auto-approve 自动应答 无需手动输入yes