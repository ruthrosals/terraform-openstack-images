variable "enable_centos_7_x86_64_qcow2" {
  description = "Enable Centos 7.2003 x86_64 qcow2 image"
  type        = bool
}
variable "enable_centos_8_x86_64_qcow2" {
  description = "Enable Centos 8 x86_64 qcow2 image"
  type        = bool
}
variable "enable_web_download" {
  description = "Enable Openstack Web-Download override"
  type = bool
  default = false
}
variable "enable_ssh_key_req_centos_8" {
  description = "Define option for mandatory SSH Key for CentOS 8 image"
  type = bool
  default = false
}
variable "enable_ssh_key_req_centos_7" {
  description = "Define option for mandatory SSH Key for CentOS 7 image"
  type = bool
  default = false
}
variable "enable_cirros_051_x86_64_qcow2" {
  description = "Enable CirrOS 0.5.1 x86_64 qcow2 images"
  type        = bool
}
variable "enable_ssh_key_req_cirros_051" {
  description = "Define option for mandatory SSH Key for Cirros 51 image"
  type = bool
  default = false
}
variable "enable_debian_9_amd64_qcow2" {
  description = "Enable Debian 9 AMD64 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_debian_9" {
  description = "Define option for mandatory SSH Key for Debian 9 image"
  type = bool
  default = false
}
variable "enable_debian_10_amd64_qcow2" {
  description = "Enable Debian 9 AMD64 raw image"
  type        = bool
}
variable "enable_ssh_key_req_debian_10" {
  description = "Define option for mandatory SSH Key for Debian 10 image"
  type = bool
  default = false
}
variable "enable_fedora_server_36_x86_64_qcow2" {
  description = "Enable Fedora 33 qcow2 images"
  type        = bool
}
variable "enable_ssh_key_req_fedora_36" {
  description = "Define option for mandatory SSH Key for Fedora 36 image"
  type = bool
  default = false
}
variable "enable_ubuntu_2204_amd64_qcow2" {
  description = "Enable Ubuntu 22.04 AMD64 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_ubuntu_2204" {
  description = "Define option for mandatory SSH Key for Ubuntu 22.04 image"
  type = bool
  default = false
}
variable "enable_ubuntu_2004_amd64_qcow2" {
  description = "Enable Ubuntu 20.04 AMD64 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_ubuntu_2004" {
  description = "Define option for mandatory SSH Key for Ubuntu 20.04 image"
  type = bool
  default = false
}
variable "enable_ubuntu_1804_amd64_qcow2" {
  description = "Enable Ubuntu 18.04 AMD64 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_ubuntu_1804" {
  description = "Define option for mandatory SSH Key for Ubuntu 18.04 image"
  type = bool
  default = false
}
variable "enable_rocky_84_x86_64_qcow2" {
  description = "Enable Rocky 8.4 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_rocky_84" {
  description = "Define option for mandatory SSH Key for Rocky 8.4 image"
  type = bool
  default = false
}
variable "enable_rocky_86_x86_64_qcow2" {
  description = "Enable Rocky 8.6 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_rocky_86" {
  description = "Define option for mandatory SSH Key for Rocky 8.6 image"
  type = bool
  default = false
}
variable "enable_rocky_9_x86_64_qcow2" {
  description = "Enable Rocky 9 qcow2 image"
  type        = bool
}
variable "enable_ssh_key_req_rocky_9" {
  description = "Define option for mandatory SSH Key for Rocky 9 image"
  type = bool
  default = false
}
