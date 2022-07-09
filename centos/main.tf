# CentOS OpenStack Images
resource "openstack_images_image_v2" "centos-7-x86_64-qcow2" {
  count            = var.enable_centos_7_x86_64_qcow2 ? 1 : 0
  name             = var.centos7_name
  image_source_url = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-2003.qcow2"
  container_format = var.image_container_format
  disk_format      = var.image_disk_format
  visibility       = var.image_visibility
  min_ram_mb       = var.min_ram_mb_1024
  min_disk_gb      = var.min_disk_gb_10
  properties = {
    os_distro    = var.properties_os_distro
    architecture = var.properties_architecture
  }
}
resource "openstack_images_image_v2" "centos_8_x86_64_qcow2" {
  count            = var.enable_centos_8_x86_64_qcow2 ? 1 : 0
  name             = var.centos8_name
  image_source_url = "http://cloud.centos.org/centos/8/x86_64/images/CentOS-8-GenericCloud-8.4.2105-20210603.0.x86_64.qcow2"
  container_format = var.image_container_format
  disk_format      = var.image_disk_format
  visibility       = var.image_visibility
  min_ram_mb       = var.min_ram_mb_1024
  min_disk_gb      = var.min_disk_gb_10
  properties = {
    os_distro    = var.properties_os_distro
    architecture = var.properties_architecture
  }
}