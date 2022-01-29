# Ouroboros : GitHub Templates

[Terraform](https://www.terraform.io) Templates for [SourceShift Organization](https://github.com/sourceshift).

## Workflow and Configuration

### @ Backend

Current backend is stored at `./backend_config.tf`

```hcl
terraform {
  cloud {
    organization = "sourceshift"
    workspaces {
      name = "ouroboros"
    }
  }
}
```

### @ GitHub

* Actions: Trigger Push on Main Branch, [Terraform Actions](.github/workflows/terraform.yml)
* Access token to app.terraform.io is stored in GitHub Actions secrets `TF_API_TOKEN`. This allows GitHub Actions to
  communicate with [Terraform Cloud](https://app.terraform.io/app/sourceshift/workspaces/ouroboros).

### @ Terraform Cloud

* GitHub Access Token is added in Terraform Cloud Workspace variables `Terraform variable` with key `GITHUB_TOKEN` and
  marked as `Sensitive`

## Local Run

Make sure the [Terraform Binary](https://www.terraform.io/downloads) is in your PATH.

### [Terraform Login](https://www.terraform.io/cli/commands/login) to [Terraform cloud](https://app.terraform.io/app/sourceshift)

```shell
terraform login
```
or
populate `$HOME/.terraform.d/credentials.tfrc.json`

```json
{
  "credentials": {
    "app.terraform.io": {
      "token": "xxxx.xxxx.xxxxxxxx"
    }
  }
}
```

### Initialize the Terraform workspace with `terraform init`.

```shell
terraform init
```

### Make changes and plan the changes with `terraform plan`.

```shell
terraform plan
```

### Apply the changes with `terraform apply`.

```shell
terraform apply
```

## TODO
GitHub Actions secrets `TF_API_TOKEN` for [ouroboros](https://github.com/sourceshift/ouroboros) is added manually. This should be pulled from vault.
