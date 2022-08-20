//Создание сети
resource "yandex_vpc_network" "tf-vpc" {
  name = "tf-vpc"
}
//Создание подсетей

resource "yandex_vpc_subnet" "tf-vpc-subnet-ru-central1-a" {
  v4_cidr_blocks = ["10.1.0.0/16"]
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.tf-vpc.id}"
}

resource "yandex_vpc_subnet" "tf-vpc-subnet-ru-central1-b" {
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.tf-vpc.id}"
}

resource "yandex_vpc_subnet" "tf-vpc-subnet-ru-central1-c" {
  v4_cidr_blocks = ["10.3.0.0/16"]
  zone           = "ru-central1-c"
  network_id     = "${yandex_vpc_network.tf-vpc.id}"
}