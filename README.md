## 安装terraform

```bash
MacOS: brew install terraform
```

## 环境准备

```bash
git clone https://github.com/yaobohai/terraform_vmware.git && cd terraform_vmware/vmware
terraform init
```

## 配置填写

```bash
$ vim .envfile
# 集群配置
TF_VAR_cluster=集群名称
TF_VAR_datacenter=数据中心
TF_VAR_vsphere_server=vsphere地址(仅需IP或者域名)
TF_VAR_vsphere_user=vsphere用户
TF_VAR_vsphere_password=vsphere密码
TF_VAR_datastore=数据磁盘

# 虚拟机个性化配置
TF_VAR_vm_name=虚拟机名称
TF_VAR_memory=虚拟机内存(M)
TF_VAR_vcpu_count=虚拟机CPU数
TF_VAR_template_name=模板名称
TF_VAR_adminpassword=虚拟机密码

# 虚拟机网络配置
TF_VAR_vm_ip=虚拟机IP(为空时为DHCP)
TF_VAR_vm_cidr=掩码CIDR
TF_VAR_default_gw=虚拟机默认网关
TF_VAR_portgroup=虚拟机使用的网络适配器
TF_VAR_domain_name=虚拟机子域
```

## 创建机器

```bash
sh startup.sh
```

## 容器

### 构建容器

```bash
git clone https://github.com/yaobohai/terraform_vmware.git && cd terraform_vmware/
sh build.sh
```

### 启动容器

```bash
docker run -it --rm \
-e TF_VAR_cluster="集群名称" \
-e TF_VAR_datacenter="集群名称" \
-e TF_VAR_vsphere_server="vsphere地址(仅需IP或者域名)" \
-e TF_VAR_vsphere_user="vsphere用户" \
-e TF_VAR_vsphere_password="vsphere密码" \
-e TF_VAR_datastore="数据磁盘" \
-e TF_VAR_vm_name="虚拟机名称" \
-e TF_VAR_memory="虚拟机内存(M)" \
-e TF_VAR_vcpu_count="虚拟机CPU数" \
-e TF_VAR_template_name="模板名称" \
-e TF_VAR_adminpassword="虚拟机密码(如果允许修改)" \
-e TF_VAR_vm_ip="虚拟机IP(为空时为DHCP)" \
-e TF_VAR_vm_cidr=掩码CIDR \
-e TF_VAR_default_gw="虚拟机默认网关地址" \
-e TF_VAR_portgroup="虚拟机使用的网络适配器" \
-e TF_VAR_domain_name="虚拟机子域" \
terraform_vmware apply --auto-approve
```