terraform {
  cloud {
    organization = "sourceshift"
    workspaces {
      name = "ouroboros"
    }
  }
}
