## Ubuntu 22.04
variable "enable_ubuntu_2204_amd64_qcow2" {
  description = "Enable Ubuntu 22.04"
  default     = 0
}
variable "ubuntu2204_name" {
  type = string
  description = "Ubuntu 22.04 Image"
  default = "Ubuntu 22.04"
}
## Ubuntu 20.04
variable "enable_ubuntu_2004_amd64_qcow2" {
  description = "Enable Ubuntu 20.04"
  default     = 0
}
variable "ubuntu2004_name" {
  type = string
  description = "Ubuntu 20.04 Image"
  default = "Ubuntu 20.04"
}
## Ubuntu 18.04
variable "enable_ubuntu_1804_amd64_qcow2" {
  description = "Enable Ubuntu 18.04"
  default     = 0
}
variable "ubuntu1804_name" {
  type = string
  description = "Ubuntu 18.04 Image"
  default = "Ubuntu 18.04"
}
## Generic Variables
variable "image_container_format" {
   type = string
   description = "Openstack Image container_format"
   default = "bare"
}
variable "image_disk_format" {
   type = string
   description = "Openstack Image disk_format"
   default = "qcow2"
}
variable "image_visibility" {
   type = string
   description = "Openstack Image visibility"
   default = "public"
}
variable "min_ram_mb_1024" {
   type = number
   description = "Openstack Image min_ram_mb"
   default = 1024
}
variable "min_disk_gb_10" {
   type = number
   description = "Openstack Image min_disk_gb"
   default = 10
}
variable "min_disk_gb_20" {
   type = number
   description = "Openstack Image min_disk_gb"
   default = 10
}
variable "properties_os_distro" {
   type = string
   description = "Openstack Image os_distro"
   default = "ubuntu"
}
variable "properties_architecture" {
   type = string
   description = "Openstack Image architecture"
   default = "x86_64"
}