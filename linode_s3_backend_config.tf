terraform {
  backend "s3" {
    bucket                      = "ouroboros"
    region                      = "us-east-1"
    endpoint                    = "us-east-1.linodeobjects.com"
    key                         = "ouroboros/main.tfstate"
    skip_credentials_validation = true
  }
}
