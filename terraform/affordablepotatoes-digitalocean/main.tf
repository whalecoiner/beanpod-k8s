terraform {
  cloud {
    organization = "whalecoiner"
    workspaces {
      name = "affordablepotatoes_subdomains"
    }
  }
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.28.1"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_domain" "default" {
   name = "affordablepotatoes.com"
}


# output "domain_output" {
#   value = data.digitalocean_domain.default.zone_file
# }
# Nameservers
# resource "digitalocean_record" "ns1" {
#   domain = digitalocean_domain.default.id
#   type   = "NS"
#   value   = "ns1.digitalocean.com."
#   name  = "@"
# }

# resource "digitalocean_record" "ns2" {
#   domain = digitalocean_domain.default.id
#   type   = "NS"
#   value   = "ns2.digitalocean.com."
#   name  = "@"
# }

# resource "digitalocean_record" "ns3" {
#   domain = digitalocean_domain.default.id
#   type   = "NS"
#   value   = "ns3.digitalocean.com."
#   name  = "@"
# }


# Home Automation
resource "digitalocean_record" "homeassistant" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "homeassistant"
  value  = "100.89.157.31"
}

resource "digitalocean_record" "homeautomation" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "homeautomation"
  value  = "100.89.157.31"
}

resource "digitalocean_record" "esphome" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "esphome"
  value  = "100.89.157.31"
}

resource "digitalocean_record" "zigbee2mqtt" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "zigbee2mqtt"
  value  = "100.89.157.31"
}

resource "digitalocean_record" "zigbee2mqtt-aqara" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "zigbee2mqtt-aqara"
  value  = "100.89.157.31"
}

resource "digitalocean_record" "uptimekuma" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "uptimekuma"
  value  = "100.89.157.31"
}


# Storage
resource "digitalocean_record" "jellyfin" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "jellyfin"
  value  = "100.83.127.33"
}

resource "digitalocean_record" "transmission" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "transmission"
  value  = "100.83.127.33"
}

resource "digitalocean_record" "gluetun" {
  domain = digitalocean_domain.default.id
  type   = "A"
  name   = "gluetun"
  value  = "100.83.127.33"
}

# resource "digitalocean_droplet" "host_public" {
#   image  = "ubuntu-22-10-x64"
#   name   = "host-public"
#   region = "fra1"
#   size   = "s-1vcpu-1gb"
# }
