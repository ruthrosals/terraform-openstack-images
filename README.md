# terraform-openstack-images

Terraform module for managing QCOW2 images for OpenStack.


## Images

| Cloud Image | Versions |
| ------------------- | --- |
| CentOS | 7 |
| CentOS | 8 |
| CirrOS | 0.5.1 |
| Debian | 9 |
| Debian | 10 |
| Fedora | 36 |
| Ubuntu | 18.04 |
| Ubuntu | 20.04 |
| Ubuntu | 22.04 |
| Rocky | 8.4 |
| Rocky | 8.6 |
| Rocky | 9 |

## Usage

Include something like the following in your code:

```
# Operating System Images for Glance using terraform-openstack-images module
module "glance_images" {
  source = "gitlab.com/breqwatr/terraform-openstack-images.git"
  #option to allow Openstack to downlaod the images directly to the hosts (by-pass local caching)
  enable_web_download = true
  # Centos
  enable_centos_7_x86_64_qcow2 = true
  enable_centos_8_x86_64_qcow2 = true
  enable_ssh_key_req_centos_8 = true
  # Cirrus
  enable_cirros_051_x86_64_qcow2 = true
  enable_ssh_key_req_cirros_051 = true
  # Debian
  enable_debian_9_amd64_qcow2  = true
  enable_debian_10_amd64_qcow2 = true
  enable_ssh_key_req_debian_9 = true
  enable_ssh_key_req_debian_10 = true
  # Fedora
  enable_fedora_server_36_x86_64_qcow2 = true
  enable_ssh_key_req_fedora_36 = true
  # Ubuntu
  enable_ubuntu_2204_amd64_qcow2 = true
  enable_ubuntu_2004_amd64_qcow2 = true
  enable_ubuntu_1804_amd64_qcow2 = true
  enable_ssh_key_req_ubuntu_2204 = true
  enable_ssh_key_req_ubuntu_2004 = true
  enable_ssh_key_req_ubuntu_1804 = true

  # Rocky
  enable_rocky_84_x86_64_qcow2 = true
  enable_rocky_86_x86_64_qcow2 = true
  enable_rocky_9_x86_64_qcow2  = true
  enable_ssh_key_req_rocky_84 = true
  enable_ssh_key_req_rocky_86 = true
  enable_ssh_key_req_rocky_9 = true
}
```
Modify the setting for the images you want loaded to "true" in the above example

For example to enable the CentOS 8 image find the following line

```
enable_centos_8_x86_64_qcow2 = false
```

Change the line from false to true like in the following example.

```
enable_centos_8_x86_64_qcow2 = true
```

You can toggle the web_downloads key, this option if true will tell openstack 
to download the images from source directly, if false the images will download to 
a local cache (default to ~/.terraform/) and be transfered to openstack from there.

If not mentioned, defaults to false. 

```
enable_web_download = {true|false}
```

You can toggle the option for an image to require SSH key (meaning a user will need 
an SSH key applied to thier openstack profile in order to build this image) PER OS version. 

If not mentioned defaults to false. 

```
enable_ssh_key_req_rocky_9 = {true|false} 
```

Remember to source your OpenStack credentials.

```
source /etc/kolla/admin-openrc.sh
```

Execute terraform

```
terraform init
terraform plan
terraform apply -auto-approve
```

## Contributing

Download the source
```
git clone https://gitlab.com/breqwatr/terraform-openstack-images
cd terraform-openstack-images
```

## References

* [Centos 7 Image](https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-2003.qcow2)
* [Centos 8 Image](http://cloud.centos.org/centos/8/x86_64/images/CentOS-8-GenericCloud-8.4.2105-20210603.0.x86_64.qcow2)
* [Cirros 0.5.1 Image](https://download.cirros-cloud.net/0.5.1/cirros-0.5.1-x86_64-disk.img)
* [Debian 9 Image](https://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-amd64.qcow2)
* [Debian 10 Image](https://cdimage.debian.org/cdimage/openstack/current-10/debian-10-openstack-amd64.qcow2")
* [Fedora 36 Image](https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2)
* [Rocky 8.4 Image](https://define-technology.com/rocky/rocky-8.4-cloudimage-final.qcow2)
* [Rocky 8.6 Image](https://dl.rockylinux.org/pub/rocky/8.6/images/Rocky-8-GenericCloud.latest.x86_64.qcow2)
* [Rocky 9 Image](https://dl.rockylinux.org/pub/rocky/9/images/x86_64/Rocky-9-GenericCloud-9.0-20220706.0.x86_64.qcow2)
* [Ubuntu 20.04 Image](https://cloud-images.ubuntu.com/daily/server/focal/current/focal-server-cloudimg-amd64.img)
* [Ubuntu 18.04 Image](https://cloud-images.ubuntu.com/daily/server/bionic/current/bionic-server-cloudimg-amd64.img)
* [Ubuntu 22.04 Image](https://cloud-images.ubuntu.com/daily/server/jammy/current/jammy-server-cloudimg-amd64.img)


