resource "openstack_images_image_v2" "ubuntu-2204-jammy-amd64-qcow2" {
  count = var.enable_ubuntu_2204_amd64_qcow2 ? 1:0
  name   = var.ubuntu2204_name
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/jammy/current/jammy-server-cloudimg-amd64.img"
  container_format = var.image_container_format
  disk_format = var.image_disk_format
  visibility = var.image_visibility
  min_ram_mb = var.min_ram_mb_1024
  min_disk_gb = var.min_disk_gb_20
  properties = {
    os_distro = var.properties_os_distro
    architecture = var.properties_architecture
  }
}
resource "openstack_images_image_v2" "ubuntu-2004-focal-amd64-qcow2" {
  count = var.enable_ubuntu_2004_amd64_qcow2 ? 1:0
  name   = var.ubuntu2004_name
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/focal/current/focal-server-cloudimg-amd64.img"
  container_format = var.image_container_format
  disk_format = var.image_disk_format
  visibility = var.image_visibility
  min_ram_mb = var.min_ram_mb_1024
  min_disk_gb = var.min_disk_gb_20
  properties = {
    os_distro = var.properties_os_distro
    architecture = var.properties_architecture
  }
}
resource "openstack_images_image_v2" "ubuntu-1804-bionic-amd64-qcow2" {
  count = var.enable_ubuntu_1804_amd64_qcow2 ? 1:0
  name   = var.ubuntu1804_name
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/xenial/current/xenial-server-cloudimg-amd64-disk1.img"
  container_format = var.image_container_format
  disk_format = var.image_disk_format
  visibility = var.image_visibility
  min_ram_mb = var.min_ram_mb_1024
  min_disk_gb = var.min_disk_gb_10
  properties = {
    os_distro = var.properties_os_distro
    architecture = var.properties_architecture
  }
}