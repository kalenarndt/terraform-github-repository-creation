# terraform-github-repository-creation

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | ./modules/labels | n/a |

## Resources

| Name | Type |
|------|------|
| [github_branch_default.branch](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_repos"></a> [github\_repos](#input\_github\_repos) | Map that contains the github repos that you will be creating.The entries in the map need to adhere to the following specification:<br>  github\_repos = {<br>    my\_repo1 = {<br>      name = "my\_repo1"<br>      description = "This repo is very fancy"<br>      visibility = "private"<br>      allow\_merge\_commit = false<br>      delete\_branch\_on\_merge = true<br>      auto\_init = true<br>      use\_template = true<br>      default\_branch = "main"<br>      template\_owner = "kalenarndt"<br>      template\_repo = "terraform-repo-template"<br>      template\_copy\_all\_branches = false<br>    }<br>  } | `map(any)` | `{}` | no |
| <a name="input_label_defaults"></a> [label\_defaults](#input\_label\_defaults) | Set of labels that are applied to the repositories. Set use\_default\_labels to false for these to not be created. | <pre>object({<br>    terraform = optional(object({<br>      name        = optional(string, "terraform")<br>      color       = optional(string, "5C4EE5")<br>      description = optional(string, "Pull requests that are specific to Terraform.")<br>    }), {})<br>    enhancement = optional(object({<br>      name        = optional(string, "type: enhancement")<br>      color       = optional(string, "5ebeff")<br>      description = optional(string, "Brand new functionality, features, pages, workflows, endpoints, etc.")<br>    }), {})<br>    breaking_change = optional(object({<br>      name        = optional(string, "breaking-change")<br>      color       = optional(string, "d73a4a")<br>      description = optional(string, "Introduces a breaking change.")<br>    }), {})<br>    bug = optional(object({<br>      name        = optional(string, "type: bug")<br>      color       = optional(string, "d73a4a")<br>      description = optional(string, "Something isn't working.")<br>    }), {})<br>    question = optional(object({<br>      name        = optional(string, "type: question")<br>      color       = optional(string, "d4c5f9")<br>      description = optional(string, "Questions, proposals and info that requires discussion.")<br>    }), {})<br>    feedback = optional(object({<br>      name        = optional(string, "type: feedback")<br>      color       = optional(string, "d4c5f9")<br>      description = optional(string, "Feedback for the team regarding this project.")<br>    }), {})<br>    discussion = optional(object({<br>      name        = optional(string, "type: discussion")<br>      color       = optional(string, "d4c5f9")<br>      description = optional(string, "Questions, proposals and info that requires discussion.")<br>    }), {})<br>    priority_high = optional(object({<br>      name        = optional(string, "priority: high")<br>      color       = optional(string, "d73a4a")<br>      description = optional(string, "Priority associated with the issue or PR.")<br>    }), {})<br>    priority_medium = optional(object({<br>      name        = optional(string, "priority: medium")<br>      color       = optional(string, "ffb8c6")<br>      description = optional(string, "Priority associated with the issue or PR.")<br>    }), {})<br>    docs = optional(object({<br>      name        = optional(string, "type: docs")<br>      color       = optional(string, "fef2c0")<br>      description = optional(string, "Related to documentation and information.")<br>    }), {})<br>    fix = optional(object({<br>      name        = optional(string, "type: fix")<br>      color       = optional(string, "91ca55")<br>      description = optional(string, "Iterations on existing features or infrastructure.")<br>    }), {})<br>    testing = optional(object({<br>      name        = optional(string, "type: testing")<br>      color       = optional(string, "fbca04")<br>      description = optional(string, "Related to testing.")<br>    }), {})<br>    chore = optional(object({<br>      name        = optional(string, "type: chore")<br>      color       = optional(string, "fef2c0")<br>      description = optional(string, "Related to testing.")<br>    }), {})<br>    help = optional(object({<br>      name        = optional(string, "help")<br>      color       = optional(string, "0e8a16")<br>      description = optional(string, "Help wanted.")<br>    }), {})<br>    effort_1 = optional(object({<br>      name        = optional(string, "effort: 1")<br>      color       = optional(string, "91ca55")<br>      description = optional(string, "Relative effort to complete issue or PR.")<br>    }), {})<br>    effort_2 = optional(object({<br>      name        = optional(string, "effort: 2")<br>      color       = optional(string, "c2e2a2")<br>      description = optional(string, "Relative effort to complete issue or PR.")<br>    }), {})<br>    effort_3 = optional(object({<br>      name        = optional(string, "effort: 3")<br>      color       = optional(string, "e9f4dc")<br>      description = optional(string, "Relative effort to complete issue or PR.")<br>    }), {})<br>    effort_5 = optional(object({<br>      name        = optional(string, "effort: 5")<br>      color       = optional(string, "fef6d7")<br>      description = optional(string, "Relative effort to complete issue or PR.")<br>    }), {})<br>    effort_8 = optional(object({<br>      name        = optional(string, "effort: 8")<br>      color       = optional(string, "fef2c0")<br>      description = optional(string, "Relative effort to complete issue or PR.")<br>    }), {})<br>    effort_13 = optional(object({<br>      name        = optional(string, "effort: 13")<br>      color       = optional(string, "fbca04")<br>      description = optional(string, "Relative effort to complete issue or PR.")<br>    }), {})<br>  })</pre> | `{}` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Map that contains the custom labels that you would like to apply to all of the repos you are creating. The entries in the map need to adhere to the following specification:<br>  labels = {<br>    my\_label = {<br>      name = "label: stuff"<br>      color = "5ebeff"<br>      description = "This tag is super important"<br>    }<br>  } | `map(any)` | `{}` | no |
| <a name="input_use_default_labels"></a> [use\_default\_labels](#input\_use\_default\_labels) | Boolean that when true will apply all of the labels in the map `var.label_defaults` to the repos you are building. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo_configuration"></a> [repo\_configuration](#output\_repo\_configuration) | Map of URLs for the repositories that have been configured. This includes the HTML, SSH, and Git URLs. |
| <a name="output_repo_labels"></a> [repo\_labels](#output\_repo\_labels) | Output of all labels that are created as a result of the run. |
<!-- END_TF_DOCS -->