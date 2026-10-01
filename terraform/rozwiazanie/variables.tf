variable "digitalocean_token" {
  description = "Token API DigitalOcean odczytywany z lokalnego, ignorowanego pliku terraform.tfvars."
  type        = string
  sensitive   = true
  default     = null
}

variable "name_prefix" {
  description = "Prefix for the names of resources."
  type        = string
  default     = "jsystems-dev"
  nullable    = false
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{0,31}$", var.name_prefix))
    error_message = "Prefix musi mieć od 1 do 32 znaków, zaczynać się małą literą i zawierać wyłącznie małe litery, cyfry oraz myślniki."
  }
}