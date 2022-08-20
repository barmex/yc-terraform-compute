//Создание виртуальной машины
resource "yandex_compute_instance" "tf-vm1" {
  name        = "tf-vm1"
  platform_id = "standard-v3"
  zone        = var.default_zone

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.default_image_id
      size = 32
      type = "network-ssd"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.tf-vpc-subnet-ru-central1-a.id}"
    ip_address = "10.1.0.3"
    nat = true
  }

  metadata = {
    user-data = "${file("./userdata.yaml")}"
  }
}