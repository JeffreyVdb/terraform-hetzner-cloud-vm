locals {
  cloud_init_data = var.cloud_init_data != "" ? var.cloud_init_data : file("${path.module}/data/default-cloud-init.yaml")
}

resource "hcloud_server" "this" {
  name        = var.name
  image       = var.image
  server_type = var.size
  location    = var.location
  ssh_keys    = var.ssh_keys
  backups     = var.enable_backup
  user_data   = local.cloud_init_data
}

resource "hcloud_server_network" "vm_network" {
  server_id  = hcloud_server.this.id
  network_id = var.network_id
  ip         = var.ip_address
}
