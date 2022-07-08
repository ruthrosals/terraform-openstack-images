## Cirros OpenStack Images
resource "openstack_images_image_v2" "cirros-051-x86_64-qcow2" {
  count = var.enable_cirros_051_x86_64_qcow2 ? 1:0
  name   = "Cirros 0.5.1"
  image_source_url = "https://download.cirros-cloud.net/0.5.1/cirros-0.5.1-x86_64-disk.img"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 256
  min_disk_gb = 1
  properties = {
    os_distro = "cirros"
    architecture = "x86_64"
  }
}
