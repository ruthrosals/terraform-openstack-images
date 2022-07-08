resource "openstack_images_image_v2" "ubuntu-2004-focal-amd64-qcow2" {
  count = var.enable_ubuntu_2004_amd64_qcow2 ? 1:0
  name   = "Ubuntu 20.04"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/focal/current/focal-server-cloudimg-amd64.img"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 1024
  min_disk_gb = 20
  properties = {
    os_distro = "ubuntu"
    architecture = "x86_64"
  }
}
resource "openstack_images_image_v2" "ubuntu-1804-bionic-amd64-qcow2" {
  count = var.enable_ubuntu_1804_amd64_qcow2 ? 1:0
  name   = "Ubuntu 18.04"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/xenial/current/xenial-server-cloudimg-amd64-disk1.img"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 1024
  min_disk_gb = 10
  properties = {
    os_distro = "ubuntu"
    architecture = "x86_64"
  }
}