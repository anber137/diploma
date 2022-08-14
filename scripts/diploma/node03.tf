resource "yandex_compute_instance" "node03" {
  name                      = "node03"
  zone                      = var.zone_names[1]
  hostname                  = "db02.berillo.kemrsl.ru"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu-2004}"
      name        = "root-node03"
      type        = "network-hdd"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.default[1].id
    nat        = true
    ip_address = "192.168.102.13"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
