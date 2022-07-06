resource "openstack_images_image_v2" "ubuntu-2004-focal-amd64-qcow2" {
  count = var.enable_ubuntu_2004_amd64_qcow2 ? 1:0
  name   = "ubuntu-20.04-focal-amd64-qcow2"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/focal/current/focal-server-cloudimg-amd64.img"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  properties = {
    os_distro = "ubuntu"
  }
}
resource "openstack_images_image_v2" "ubuntu-1804-bionic-amd64-qcow2" {
  count = var.enable_ubuntu_1804_amd64_qcow2 ? 1:0
  name   = "ubuntu-18.04-bionic-amd64-qcow2"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/xenial/current/xenial-server-cloudimg-amd64-disk1.img"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  properties = {
    os_distro = "ubuntu"
  }
}