# Network
resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_subnet" "default" {
  count = "${length(var.zone_names)}"
  name = "subnet.${element(var.zone_names, count.index)}"
  zone           = "${element(var.zone_names, count.index)}" # "var.zone_names[count.index]
  network_id     = yandex_vpc_network.default.id
  v4_cidr_blocks = ["${element(var.subnet_cidr, count.index)}"] 
}
