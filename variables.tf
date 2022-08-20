variable "default_folder_id" { //your folder-id
  default = "<your folder-id>"
}

variable "default_cloud_id" { //your cloud-id
  default = "<your cloud-id>"
}

variable "default_service_account_id" { //your service-account id
  default = "<your service-account id>"
}

variable "default_network_id" { //your network-id
  default = "<your network-id>"
}

variable "default_zone" { //your default zone that is defined in provider.tf file
  default = "<your default zone>"
}

variable "default_subnet_id_zone_a" {//your subnet-id in zone-a
  default = "<your subnet-id in zone-a>"
}

variable "default_subnet_id_zone_b" {//your subnet-id in zone-b
  default = "<your subnet-id in zone-b>"
}

variable "default_subnet_id_zone_c" {//your subnet-id in zone-c
  default = "<your subnet-id in zone-c>"
}

variable "default_image_id" { //your image-id for VMs
  default = "fd89jk9j9vifp28uprop" //image: ubuntu-22-04-lts-v20220815
}