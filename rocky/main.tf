# Rocky OpenStack Images
resource "openstack_images_image_v2" "rocky_server_84_x86_64_qcow2" {
  count            = var.enable_rocky_84_x86_64_qcow2 ? 1 : 0
  name             = var.rocky84_name
  image_source_url = "https://define-technology.com/rocky/rocky-8.4-cloudimage-final.qcow2"
  container_format = var.image_container_format
  disk_format      = var.image_disk_format
  visibility       = var.image_visibility
  min_ram_mb       = var.min_ram_mb_1024
  min_disk_gb      = var.min_disk_gb_20
  properties = {
    os_distro    = var.properties_os_distro
    architecture = var.properties_architecture
  }
}
