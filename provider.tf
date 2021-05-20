provider "digitalocean" {
  token = ""
}

resource "digitalocean_ssh_key" "pfs_training" {
  name       = "SSH Key Credential"
  public_key = ""
}

resource "digitalocean_droplet" "pfs_training" {
  image  = "ubuntu-20-04-x64"
  name   = "pfs"
  region = "lon1"
  size   = "1gb"
}

output "ip" {
  value = "${digitalocean_droplet.pfs_training.ipv4_address}"
}