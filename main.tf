module "centos" {
  source                       = "./centos"
  enable_centos_7_x86_64_qcow2 = var.enable_centos_7_x86_64_qcow2
  enable_centos_8_x86_64_qcow2 = var.enable_centos_8_x86_64_qcow2
  centos_web_download = var.enable_web_download
  properties_centos_8_ssh_key_req = var.enable_ssh_key_req_centos_8
  properties_centos_7_ssh_key_req = var.enable_ssh_key_req_centos_7
}
module "cirros" {
  source                         = "./cirros"
  enable_cirros_051_x86_64_qcow2 = var.enable_cirros_051_x86_64_qcow2
  cirros_web_download = var.enable_web_download
  properties_cirros_051_ssh_key_req = var.enable_ssh_key_req_cirros_051
}
module "debian" {
  source                       = "./debian"
  enable_debian_9_amd64_qcow2  = var.enable_debian_9_amd64_qcow2
  enable_debian_10_amd64_qcow2 = var.enable_debian_10_amd64_qcow2
  debian_web_download = var.enable_web_download
  properties_debian_9_ssh_key_req = var.enable_ssh_key_req_debian_9
  properties_debian_10_ssh_key_req = var.enable_ssh_key_req_debian_10
}
module "fedora" {
  source                               = "./fedora"
  enable_fedora_server_36_x86_64_qcow2 = var.enable_fedora_server_36_x86_64_qcow2
  fedora_web_download = var.enable_web_download
  properties_fedora_36_ssh_key_req = var.enable_ssh_key_req_fedora_36
}
module "ubuntu" {
  source                         = "./ubuntu"
  enable_ubuntu_2204_amd64_qcow2 = var.enable_ubuntu_2204_amd64_qcow2
  enable_ubuntu_2004_amd64_qcow2 = var.enable_ubuntu_2004_amd64_qcow2
  enable_ubuntu_1804_amd64_qcow2 = var.enable_ubuntu_1804_amd64_qcow2
  ubuntu_web_download = var.enable_web_download
  properties_ubuntu_2204_ssh_key_req = var.enable_ssh_key_req_ubuntu_2204
  properties_ubuntu_2004_ssh_key_req = var.enable_ssh_key_req_ubuntu_2004
  properties_ubuntu_1804_ssh_key_req = var.enable_ssh_key_req_ubuntu_1804
}
module "rocky" {
  source                       = "./rocky"
  enable_rocky_84_x86_64_qcow2 = var.enable_rocky_84_x86_64_qcow2
  enable_rocky_86_x86_64_qcow2 = var.enable_rocky_86_x86_64_qcow2
  enable_rocky_9_x86_64_qcow2  = var.enable_rocky_9_x86_64_qcow2
  rocky_web_download = var.enable_web_download
  properties_rocky_84_ssh_key_req = var.enable_ssh_key_req_rocky_84
  properties_rocky_86_ssh_key_req = var.enable_ssh_key_req_rocky_86
  properties_rocky_9_ssh_key_req = var.enable_ssh_key_req_rocky_9
}
