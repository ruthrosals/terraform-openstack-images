# Fedora OpenStack Images
resource "openstack_images_image_v2" "fedora_server_36_x86_64_qcow2" {
  count            = var.enable_fedora_server_36_x86_64_qcow2 ? 1 : 0
  name             = "fedora-server-36-fedora-qcow2"
  image_source_url = "https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2"
  container_format = "bare"
  disk_format      = "qcow2"
  visibility       = "public"
  properties = {
    os_distro = "fedora"
  }
}



