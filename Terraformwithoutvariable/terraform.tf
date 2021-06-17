provider "digitalocean" {
token = "1c4315696a6cd013ef556f4d7a399ed2bb206027f5810b2eb9bfaa29bc4feaab"
}


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
