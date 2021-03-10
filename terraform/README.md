## Requirements

| Name | Version |
|------|---------|
| azurerm | =2.49.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | =2.49.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/2.49.0/docs/resources/storage_account) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name of the Azure Storage Account | `string` | n/a | yes |
| resource\_group\_name | Resource Group Name | `string` | n/a | yes |
| account\_replication\_type | Storage Account type | `string` | `"LRS"` | no |
| account\_tier | Storage Account tier | `string` | `"Standard"` | no |
| location | Location for resources | `string` | `"East US"` | no |
| tags | Tags for Azure Storage Account | `map(string)` | <pre>{<br>  "tagname": "tagvalue"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_id | The private IP address of the main server instance. |
