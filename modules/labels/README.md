# labels

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
README.md updated successfully
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >=5.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >=5.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_issue_label.labels](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_repository"></a> [github\_repository](#input\_github\_repository) | Name of the github repository that the labels will be applied to. | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Map that contains the labels that you would like to apply to the repository | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_labels"></a> [labels](#output\_labels) | Output of all labels that are created as a result of the run. |
<!-- END_TF_DOCS -->