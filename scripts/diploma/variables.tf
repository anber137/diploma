variable "yandex_cloud_id" {
  default = "b1gcdtbrs5t30g9hlt4n" 
}

variable "yandex_folder_id" {
  default = "b1gor3n8jb0hhgr1t7qd" 
}

variable "ubuntu-nat" {
  default = "fd8etnr6krbm4llmjgtn"
}

variable "ubuntu-2004" {
  default = "fd8f1tik9a7ap9ik2dg1" 
}


variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "external_ip" {
  default = "62.84.117.186"
}

variable "zone_names" {
  type    = list(string)
}

variable "subnet_cidr" {
  type    = list(string)
}
