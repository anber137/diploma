resource "yandex_compute_instance" "node01" {
  name                      = "node01"
  zone                      = var.zone_names[0]
  hostname                  = "berillo.kemrsl.ru"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu-nat}"
      name        = "root-node01"
      type        = "network-hdd"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.default[0].id # "${yandex_vpc_subnet.default.id}"
    nat        = true
    ip_address = "192.168.101.11"
    nat_ip_address = "${var.external_ip}"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

# https://cloud.yandex.ru/docs/tutorials/infrastructure-management/terraform-quickstart
#
#metadata = {
#    user-data = "${file("<путь к файлу>/meta.txt")}"
#}
# ...or...
#ssh -L 522:192.168.101.11:22 ubuntu@extProxyIP
#
#ssh-keygen -f "/root/.ssh/known_hosts" -R "[127.0.0.1]:522"
#ssh ubuntu@127.0.0.1 -p522
