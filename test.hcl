resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    "public_key"
  ]
  password = "password123" 
}
provider "linode" {
    token = "glpat-8vqzishssiPqmozKqbG6"
}
resource "linode_instance" "WordPress" {
    image = "linode/ubuntu18.04"
    label = "WPServer"
    region = "us-east"
    type = "g6-standard-1"
    authorized_keys = [ "example-key" ]
    root_pass = "example-root-pass"
}
