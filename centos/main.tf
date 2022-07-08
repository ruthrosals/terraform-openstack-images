# CentOS OpenStack Images
resource "openstack_images_image_v2" "centos-7-x86_64-qcow2" {
  count = var.enable_centos_7_x86_64_qcow2 ? 1:0
  name   = "TF Centos 7"
  image_source_url = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-2003.qcow2"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 1024
  min_disk_gb = 10
  properties = {
    os_distro = "centos"
    architecture = "x86_64"
  }
}
resource "openstack_images_image_v2" "centos_8_x86_64_qcow2" {
  count = var.enable_centos_8_x86_64_qcow2 ? 1:0
  name   = "TF Centos 8"
  image_source_url = "http://cloud.centos.org/centos/8/x86_64/images/CentOS-8-GenericCloud-8.4.2105-20210603.0.x86_64.qcow2"
  container_format = "bare"
  disk_format = "qcow2"
  visibility = "public"
  min_ram_mb = 1024
  min_disk_gb = 10
  properties = {
    os_distro = "centos"
    architecture = "x86_64"
  }
}