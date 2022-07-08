# Rocky OpenStack Images
resource "openstack_images_image_v2" "rocky_server_84_x86_64_qcow2" {
  count            = var.enable_rocky_84_x86_64_qcow2 ? 1 : 0
  name             = "Rocky 8.4"
  image_source_url = "https://define-technology.com/rocky/rocky-8.4-cloudimage-final.qcow2"
  container_format = "bare"
  disk_format      = "qcow2"
  visibility       = "public"
  min_ram_mb = 1024
  min_disk_gb = 20
  properties = {
    os_distro = "rocky"
    architecture = "x86_64"
  }
}
