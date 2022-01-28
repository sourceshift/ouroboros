# Ouroboros : Github Templates

[Terraform](https://www.terraform.io) Teamplates for [SourceShift Oraganization](https://github.com/sourceshift).

## Backend Configuration

Terraform state is stored in a S3 bucket `linode_s3_backend_config.tf`.

```hcl
terraform {
  backend "s3" {
    bucket                      = "ouroboros"
    region                      = "us-east-1"
    endpoint                    = "us-east-1.linodeobjects.com"
    key                         = "ouroboros/main.tfstate"
    skip_credentials_validation = true
  }
}
```

## How to use

Make sure the [Terraform Binary](https://www.terraform.io/downloads) is in your PATH.

Make sure to populate the file `.secret.linode_s3_backend_config.json` with S3 credentials.

```json
{
    "access_key": "",
    "secret_key": ""
}
```

Initialize the Terraform workspace with `terraform init`.

```bash
terraform init -input=false -backend-config=".secret.linode_s3_backend_config.json" -reconfigure -upgrade
```

Make sure to populate the file `.secret.all.json` with sensetive data needed.

```json
{
    "GITHUB_TOKEN": ""
}
```

Make changes and plan the changes with `terraform plan`.

```bash
terraform plan -input=false -var-file=".secret.all.json" -out="./tfplan"
```

Apply the changes with `terraform apply`.

```bash
terraform apply "./tfplan"
```
