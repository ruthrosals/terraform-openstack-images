## Centos 7
variable "enable_centos_7_x86_64_qcow2" {
  description = "Enable Centos 7"
  default     = 0
}
variable "centos7_name" {
  type        = string
  description = "Centos 7 Image"
  default     = "Centos 7"
}
## Centos 8
variable "enable_centos_8_x86_64_qcow2" {
  description = "Enable Centos 8"
  default     = 0
}
variable "centos8_name" {
  type        = string
  description = "Centos 8 Image"
  default     = "Centos 8"
}
## Generic Variables
variable "image_container_format" {
  type        = string
  description = "Openstack Image container_format"
  default     = "bare"
}
variable "image_disk_format" {
  type        = string
  description = "Openstack Image disk_format"
  default     = "qcow2"
}
variable "image_visibility" {
  type        = string
  description = "Openstack Image visibility"
  default     = "public"
}
variable "min_ram_mb_1024" {
  type        = number
  description = "Openstack Image min_ram_mb"
  default     = 1024
}
variable "min_disk_gb_10" {
  type        = number
  description = "Openstack Image min_disk_gb"
  default     = 10
}
variable "properties_os_distro" {
  type        = string
  description = "Openstack Image os_distro"
  default     = "centos"
}
variable "properties_architecture" {
  type        = string
  description = "Openstack Image architecture"
  default     = "x86_64"
}