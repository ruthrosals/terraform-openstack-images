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
| Rocky | 8.4 |

## Usage

Include something like the following in your code:

```
# Operating System Images for Glance using terraform-openstack-images module
module "glance_images" {
  source = "github.com/breqwatr/terraform-openstack-images"
  # Centos
  enable_centos_7_x86_64_qcow2               = false
  enable_centos_8_x86_64_qcow2               = false
  # Cirrus
  enable_cirros_040_x86_64_qcow2             = false
  enable_cirros_040_x86_64_raw               = false
  # Debian
  enable_debian_9_amd64_qcow2                = false
  enable_debian_10_amd64_qcow2               = false
  # Fedora
  enable_fedora_server_36_aarch64_qcow2      = true
  # Ubuntu
  enable_ubuntu_2004_amd64_qcow2             = false
  enable_ubuntu_1804_amd64_qcow2             = false
  # Rocky
  enable_rocky_84_x86_64_qcow2               = false
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


Remember to source your OpenStack credentials.

```
 . /etc/kolla/admin-openrc.sh
```

Execute terraform.

```
terraform init
terraform plan
terraform apply -auto-approve
```

## Contributing

Download the source
```
git clone https://github.com/breqwatr/terraform-openstack-images
cd terraform-openstack-images
```

## References

* [Centos 7 Images](https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-2003.qcow2)
* [Centos 8 Images](http://cloud.centos.org/centos/8/x86_64/images/CentOS-8-GenericCloud-8.4.2105-20210603.0.x86_64.qcow2)
* [Cirros 0.5.1 Images](https://download.cirros-cloud.net/0.5.1/cirros-0.5.1-x86_64-disk.img)
* [Debian 9 Images](https://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-amd64.qcow2)
* [Debian 10 Images](https://cdimage.debian.org/cdimage/openstack/current-10/debian-10-openstack-amd64.qcow2")
* [Fedora 36 Images](https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2)
* [Rocky 8.4 Images](https://define-technology.com/rocky/rocky-8.4-cloudimage-final.qcow2)
* [Ubuntu 20.04 Images](https://cloud-images.ubuntu.com/daily/server/focal/current/focal-server-cloudimg-amd64.img)
* [Ubuntu 18.04 Images](https://cloud-images.ubuntu.com/daily/server/xenial/current/xenial-server-cloudimg-amd64-disk1.img)


