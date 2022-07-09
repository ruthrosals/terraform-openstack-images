## Rocky 8.4
variable "enable_rocky_84_x86_64_qcow2" {
  description = "Enable Rocky 8.4"
  default     = 0
}
variable "rocky84_name" {
  type        = string
  description = "Rocky 8.4 Image"
  default     = "Rocky 8.4"
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
variable "min_disk_gb_20" {
  type        = number
  description = "Openstack Image min_disk_gb"
  default     = 1
}
variable "properties_os_distro" {
  type        = string
  description = "Openstack Image os_distro"
  default     = "rocky"
}
variable "properties_architecture" {
  type        = string
  description = "Openstack Image architecture"
  default     = "x86_64"
}

