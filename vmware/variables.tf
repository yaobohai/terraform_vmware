variable "vsphere_server" {}

variable "adminpassword" {}

variable "vsphere_user" {}

variable "vsphere_password" {}

variable "datacenter" {}

variable "datastore" {}

variable "cluster" {}

variable "portgroup" {}

variable "domain_name" {}

variable "default_gw" {}

variable "dns_list" { 
    default = ["114.114.114.114"]
}

variable "template_name" {}

variable "vm_name" {}

variable "vm_ip" {}

variable "vm_cidr" {}

variable "vcpu_count" {}

variable "memory" {}