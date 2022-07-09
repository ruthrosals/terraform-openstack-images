## Cirros OpenStack Images
resource "openstack_images_image_v2" "cirros-051-x86_64-qcow2" {
  count            = var.enable_cirros_051_x86_64_qcow2 ? 1 : 0
  name             = var.cirros051_name
  image_source_url = var.cirros051_download_URL
  container_format = var.image_container_format
  disk_format      = var.image_disk_format
  visibility       = var.image_visibility
  min_ram_mb       = var.min_ram_mb_256
  min_disk_gb      = var.min_disk_gb_1
  properties = {
    os_distro    = var.properties_os_distro
    architecture = var.properties_architecture
  }
}
