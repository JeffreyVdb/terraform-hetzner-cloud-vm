output "vm" {
  value = {
    name         = hcloud_server.this.name
    ipv4_address = hcloud_server.this.ipv4_address
    ipv6_address = hcloud_server.this.ipv6_address
  }
}
