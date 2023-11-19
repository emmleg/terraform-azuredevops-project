<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >=0.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | >=0.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_project.project](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project) | resource |
| [azuredevops_project_features.features](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project_features) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) The Description of the Project. | `string` | `null` | no |
| <a name="input_features"></a> [features](#input\_features) | (Optional) Defines the status (enabled, disabled) of the project features. Valid features are boards, repositories, pipelines, testplans, artifacts | `map(string)` | <pre>{<br>  "artifacts": "enabled",<br>  "boards": "enabled",<br>  "pipelines": "enabled",<br>  "repositories": "enabled",<br>  "testplans": "enabled"<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The Project Name. | `string` | n/a | yes |
| <a name="input_version_control"></a> [version\_control](#input\_version\_control) | (Optional) Specifies the version control system. Valid values: Git or Tfvc. Defaults to Git. | `string` | `"Git"` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | (Optional) Specifies the visibility of the Project. Valid values: private or public. Defaults to private. | `string` | `"private"` | no |
| <a name="input_work_item_template"></a> [work\_item\_template](#input\_work\_item\_template) | (Optional) Specifies the work item template. Valid values: Agile, Basic, CMMI, Scrum or a custom, pre-existing one. Defaults to Agile. An empty string will use the parent organization default. | `string` | `"Agile"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Azure DevOps project. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Azure DevOps project. |
<!-- END_TF_DOCS -->