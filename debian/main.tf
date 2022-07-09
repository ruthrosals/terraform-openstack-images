# Debian OpenStack Images
resource "openstack_images_image_v2" "debian_9_openStack_amd64_qcow2" {
  count            = var.enable_debian_9_amd64_qcow2 ? 1 : 0
  name             = var.debian9_name
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-amd64.qcow2"
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
resource "openstack_images_image_v2" "debian_10_openStack_amd64_qcow2" {
  count            = var.enable_debian_10_amd64_qcow2 ? 1 : 0
  name             = var.debian10_name
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-10/debian-10-openstack-amd64.qcow2"
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
