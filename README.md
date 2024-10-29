## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | >= 1.70.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ibm"></a> [ibm](#provider\_ibm) | >= 1.70.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ibm_code_engine_app.code_engine_app](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/code_engine_app) | resource |
| [ibm_code_engine_project.code_engine_app_project](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/code_engine_project) | resource |
| [ibm_code_engine_secret.registry_secret](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/code_engine_secret) | resource |
| [ibm_resource_group.resource_group](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ibmcloud_api_key"></a> [ibmcloud\_api\_key](#input\_ibmcloud\_api\_key) | ApiKey used to login to IBM cloud to perform the operations<br/>Reference: https://cloud.ibm.com/docs/account?topic=account-userapikey&interface=ui#create_user_key | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | The name of the container image | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | Port on which the app listens | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix to be attached to name of all generated resources | `string` | `"ripple"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region to deploy to, e.g. eu-gb. Please consult IBM cloud document for latest information | `string` | `"eu-gb"` | no |
| <a name="input_registry_email"></a> [registry\_email](#input\_registry\_email) | The email to be used for authentication | `string` | n/a | yes |
| <a name="input_registry_name"></a> [registry\_name](#input\_registry\_name) | The name of the container image registry | `string` | `"https://index.docker.io/v1/"` | no |
| <a name="input_registry_password"></a> [registry\_password](#input\_registry\_password) | The password to be used for authentication | `string` | n/a | yes |
| <a name="input_registry_username"></a> [registry\_username](#input\_registry\_username) | The username to be used for authentication | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group under which the instances will be created | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Zone to deploy to, e.g. 2. Please consult IBM cloud document for latest information | `string` | `"2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_code_engine_app_url"></a> [code\_engine\_app\_url](#output\_code\_engine\_app\_url) | Get the app URL |
