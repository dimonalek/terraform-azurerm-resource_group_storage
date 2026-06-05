# terraform-azurerm-resource_group_storage

Terraform module that creates an Azure Resource Group and a Storage Account with a random lowercase alphanumeric suffix to ensure global name uniqueness.

## Usage

```hcl
module "rg_storage" {
  source = "github.com/<YOUR_ORG>/terraform-azurerm-resource_group_storage//resource_group_storage"

  resource_group_name = "my-rg"
  location            = "eastus"
  storage_name_prefix = "myapp"
  account_tier        = "Standard"
  account_replication = "LRS"

  tags = {
    environment = "dev"
    team        = "platform"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.3.0 |
| azurerm | >= 3.0.0 |
| random | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 3.0.0 |
| random | >= 3.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [random_string.storage_suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource\_group\_name | Name of the Azure Resource Group. | `string` | n/a | yes |
| location | Azure region where resources will be deployed. | `string` | n/a | yes |
| storage\_name\_prefix | Lowercase alphanumeric prefix for the storage account name (3–18 chars). | `string` | n/a | yes |
| account\_tier | Storage account tier (`Standard` or `Premium`). | `string` | n/a | yes |
| account\_replication | Storage account replication type (e.g. `LRS`, `GRS`, `ZRS`). | `string` | n/a | yes |
| tags | Optional map of tags applied to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group\_id | Created Resource Group ID. |
| resource\_group\_name | Created Resource Group name. |
| storage\_account\_id | Created Storage Account ID. |
| storage\_account\_name | Created Storage Account name (includes the random suffix). |

## License

MIT
