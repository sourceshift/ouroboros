resource "github_repository" "infrastructure_manage" {
  name               = "infrastructure-manage"
  license_template   = var.license_template
  description        = "Initialize Cluster for Source Shift"
  visibility         = "public"
  gitignore_template = "Terraform"
  auto_init          = true
}

resource "github_branch_default" "infrastructure_manage" {
  repository = github_repository.infrastructure_manage.name
  branch     = var.repository_default_branch_01062022_main
}
