resource "digitalocean_project" "example" {
  name        = "${local.name}-project"
  description = "Inftructure DigitalOcean dla projektu ${local.name}"
  purpose     = "Operational / developer tooling"
  environment = var.project_environment
}