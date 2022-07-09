## Debian 9
variable "enable_debian_9_amd64_qcow2" {
  description = "Enable Debian 9"
  default     = 0
}
variable "debian9_name" {
  type        = string
  description = "Debian 9 Image"
  default     = "Debian 9"
}
## Debian 10
variable "enable_debian_10_amd64_qcow2" {
  description = "Enable Debian 10"
  default     = 0
}
variable "debian10_name" {
  type        = string
  description = "Debian 10 Image"
  default     = "Debian 10"
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
  default     = "debian"
}
variable "properties_architecture" {
  type        = string
  description = "Openstack Image architecture"
  default     = "x86_64"
}
