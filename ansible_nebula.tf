resource "github_repository" "ansible_nebula" {
  name               = "ansible-nebula"
  description        = "Probe Nebula"
  visibility         = "public"
  license_template   = var.license_template
  auto_init          = true
  gitignore_template = "Python"
}

resource "github_branch_default" "ansible_nebula" {
  repository = github_repository.ansible_nebula.name
  branch     = var.repository_default_branch_01062022_main
}
