# Debian OpenStack Images
resource "openstack_images_image_v2" "debian_9_openStack_amd64_qcow2" {
  count = var.enable_debian_9_amd64_qcow2 ? 1:0
  name = "TF Debian 9"
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-amd64.qcow2"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 1024
  min_disk_gb = 10
  properties = {
    os_distro = "debian"
    architecture = "x86_64"
  }
}
resource "openstack_images_image_v2" "debian_10_openStack_amd64_qcow2" {
  count = var.enable_debian_10_amd64_qcow2 ? 1:0
  name = "TF Debian 10"
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-10/debian-10-openstack-amd64.qcow2"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 1024
  min_disk_gb = 10
  properties = {
    os_distro = "debian"
    architecture = "x86_64"
  }
}
