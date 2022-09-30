## Fedora 36
variable "enable_fedora_server_36_x86_64_qcow2" {
  description = "Enable Fedora 36"
  default     = 0
}
variable "fedora36_name" {
  type        = string
  description = "Fedora 36 Image"
  default     = "Fedora 36"
}
## Generic Variables
variable "image_container_format" {
  type        = string
  description = "Openstack Image container_format"
  default     = "bare"
}
variable "web_download" {
  type        = bool
  description = "import method will be used to let Openstack download the image directly from the remote source."
  default     = false
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
  default     = "linux-server"
}
variable "properties_architecture" {
  type        = string
  description = "Openstack Image architecture"
  default     = "x86_64"
}
variable "properties_ssh_key_req" {
  type        = bool
  description = "Openstack Image Requires SSH Key"
  default     = false
}
