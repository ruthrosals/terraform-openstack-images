# Operating System Images for Glance using terraform-openstack-images module
module "glance_images" {
  source = "github.com/breqwatr/terraform-openstack-images"
  # Centos
  enable_centos_7_x86_64_qcow2 = false
  enable_centos_8_x86_64_qcow2 = false
  # Cirros
  enable_cirros_051_x86_64_raw = false
  # Debian
  enable_debian_9_amd64_qcow2  = false
  enable_debian_10_amd64_qcow2 = false
  # Fedora
  enable_fedora_server_36_x86_64_qcow2 = true
  # Ubuntu
  enable_ubuntu_2004_amd64_qcow2 = false
  enable_ubuntu_1804_amd64_qcow2 = false
  # Rocky
  enable_rocky_84_x86_64_qcow2 = true
}
