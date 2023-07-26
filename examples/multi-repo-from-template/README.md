# multi-repo-from-template

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

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_repo_time"></a> [repo\_time](#module\_repo\_time) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | Token to use when authenticating to github | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo_configuration"></a> [repo\_configuration](#output\_repo\_configuration) | Map of URLs for the repositories that have been configured. This includes the HTML, SSH, and Git URLs. |
| <a name="output_repo_labels"></a> [repo\_labels](#output\_repo\_labels) | Output of all labels that are created as a result of the run. |
<!-- END_TF_DOCS -->