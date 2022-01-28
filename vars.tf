variable "GITHUB_TOKEN" {
  default   = ""
  sensitive = true
  validation {
    condition     = length(var.GITHUB_TOKEN) == 40
    error_message = "Must be a 40 character long API token."
  }
}

variable "GITHUB_ORG" {
  default = "sourceshift"
  validation {
    condition     = length(var.GITHUB_ORG) > 0
    error_message = "Must be a valid GitHub organization."
  }
}

variable "license_template" {
  default = "mit"
}

variable "repository_default_branch_01062022_main" {
  default     = "main"
  description = "This is the default branch for the repository at the time of creation."
}
