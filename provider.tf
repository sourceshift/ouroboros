terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.19.1"
    }
  }
}

provider "github" {
  owner = var.GITHUB_ORG
  token = var.GITHUB_TOKEN
}
