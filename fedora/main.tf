# Fedora OpenStack Images
resource "openstack_images_image_v2" "fedora_server_36_x86_64_qcow2" {
  count            = var.enable_fedora_server_36_x86_64_qcow2 ? 1 : 0
  name             = var.fedora36_name
  image_source_url = "https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2"
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



