resource "digitalocean_project" "this" {
  name        = "${local.name}-project"
  description = "Inftructure DigitalOcean dla projektu ${local.name}"
  purpose     = "Operational developer tooling123"
  environment = var.project_environment
}