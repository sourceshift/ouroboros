resource "github_repository" "ouroboros" {
  name               = "ouroboros"
  license_template   = var.license_template
  description        = "Manage the current github sourceshift organization"
  visibility         = "public"
  gitignore_template = "Terraform"
  auto_init          = true
}

resource "github_branch_default" "ouroboros" {
  repository = github_repository.ouroboros.name
  branch     = var.repository_default_branch_01062022_main
}
