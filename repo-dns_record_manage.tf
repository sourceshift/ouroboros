resource "github_repository" "dns_controller" {
  name               = "dns-record-manage"
  description        = "Source Shift Cluster Configuration for DNS Controller"
  visibility         = "public"
  license_template   = var.license_template
  auto_init          = true
  gitignore_template = "Python"
}

resource "github_branch_default" "dns_controller" {
  repository = github_repository.dns_controller.name
  branch     = var.repository_default_branch_01062022_main
}
