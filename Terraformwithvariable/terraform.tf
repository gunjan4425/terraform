terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}
resource "digitalocean_droplet" "web" {
  image              = "ubuntu-18-04-x64"
  count              = 3
  name               = "test-web-vm"
  region             = "nyc1"
  size               = "s-1vcpu-1gb"
  monitoring         = true
  ipv6               = true
  private_networking = true
}
