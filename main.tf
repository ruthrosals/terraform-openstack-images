module "centos" {
  source                       = "./centos"
  enable_centos_7_x86_64_qcow2 = var.enable_centos_7_x86_64_qcow2
  enable_centos_8_x86_64_qcow2 = var.enable_centos_8_x86_64_qcow2
}
module "cirros" {
  source                         = "./cirros"
  enable_cirros_051_x86_64_qcow2 = var.enable_cirros_051_x86_64_qcow2
}
module "debian" {
  source                       = "./debian"
  enable_debian_9_amd64_qcow2  = var.enable_debian_9_amd64_qcow2
  enable_debian_10_amd64_qcow2 = var.enable_debian_10_amd64_qcow2
}
module "fedora" {
  source                               = "./fedora"
  enable_fedora_server_36_x86_64_qcow2 = var.enable_fedora_server_36_x86_64_qcow2
}
module "ubuntu" {
  source                         = "./ubuntu"
  enable_ubuntu_2204_amd64_qcow2 = var.enable_ubuntu_2204_amd64_qcow2
  enable_ubuntu_2004_amd64_qcow2 = var.enable_ubuntu_2004_amd64_qcow2
  enable_ubuntu_1804_amd64_qcow2 = var.enable_ubuntu_1804_amd64_qcow2
}
module "rocky" {
  source                       = "./rocky"
  enable_rocky_84_x86_64_qcow2 = var.enable_rocky_84_x86_64_qcow2
}
