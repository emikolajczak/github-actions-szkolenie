resource "random_id" suffix {
    byte_length = 5
}

resource "digitalocean_droplet" "example" {
    image  = "ubuntu-24-04-x64"
    name   = "example-${random_id.suffix.hex}"
    region = "fra1"
    size   = "s-1vcpu-1gb"
}

resource "digitalocean_vpc" "example" {
    name   = "example-${random_id.suffix.hex}"
    region = "fra1"
}

