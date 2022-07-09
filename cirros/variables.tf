## Cirros 0.5.1
variable "enable_cirros_051_x86_64_qcow2" {
  description = "Enable CirrOS 0.5.1"
  default     = 0
}
variable "cirros051_name" {
  type        = string
  description = "Cirros 0.5.1 Image"
  default     = "Cirros 0.5.1"
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
variable "min_ram_mb_256" {
  type        = number
  description = "Openstack Image min_ram_mb"
  default     = 256
}
variable "min_disk_gb_1" {
  type        = number
  description = "Openstack Image min_disk_gb"
  default     = 1
}
variable "properties_os_distro" {
  type        = string
  description = "Openstack Image os_distro"
  default     = "cirros"
}
variable "properties_architecture" {
  type        = string
  description = "Openstack Image architecture"
  default     = "x86_64"
}