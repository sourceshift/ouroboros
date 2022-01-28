output "org_details" {
  value = data.github_organization.owner
}

data "github_organization" "owner" {
  name = var.GITHUB_ORG
}
