resource "github_repository" "codified_vault" {
  name               = "codified-vault"
  license_template   = var.license_template
  description        = "HashiCorp Vault Configuration using terraform"
  visibility         = "public"
  gitignore_template = "Terraform"
  auto_init          = true
}

resource "github_branch_default" "codified_vault" {
  repository = github_repository.codified_vault.name
  branch     = var.repository_default_branch_01062022_main
}

