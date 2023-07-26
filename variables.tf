variable "github_repos" {
  type        = map(any)
  default     = {}
  description = <<DESC
  Map that contains the github repos that you will be creating.The entries in the map need to adhere to the following specification:
  github_repos = {
    my_repo1 = {
      name = "my_repo1"
      description = "This repo is very fancy"
      visibility = "private"
      allow_merge_commit = false
      delete_branch_on_merge = true
      auto_init = true
      use_template = true
      default_branch = "main"
      template_owner = "kalenarndt"
      template_repo = "terraform-repo-template"
      template_copy_all_branches = false
    }
  }
  DESC
}

variable "labels" {
  type        = map(any)
  default     = {}
  description = <<DESC
  Map that contains the custom labels that you would like to apply to all of the repos you are creating. The entries in the map need to adhere to the following specification:
  labels = {
    my_label = {
      name = "label: stuff"
      color = "5ebeff"
      description = "This tag is super important"
    }
  }
  DESC
}

variable "use_default_labels" {
  type        = bool
  description = "Boolean that when true will apply all of the labels in the map `var.label_defaults` to the repos you are building."
  default     = true
}

variable "label_defaults" {
  type = object({
    terraform = optional(object({
      name        = optional(string, "terraform")
      color       = optional(string, "5C4EE5")
      description = optional(string, "Pull requests that are specific to Terraform.")
    }), {})
    enhancement = optional(object({
      name        = optional(string, "type: enhancement")
      color       = optional(string, "5ebeff")
      description = optional(string, "Brand new functionality, features, pages, workflows, endpoints, etc.")
    }), {})
    breaking_change = optional(object({
      name        = optional(string, "breaking-change")
      color       = optional(string, "d73a4a")
      description = optional(string, "Introduces a breaking change.")
    }), {})
    bug = optional(object({
      name        = optional(string, "type: bug")
      color       = optional(string, "d73a4a")
      description = optional(string, "Something isn't working.")
    }), {})
    question = optional(object({
      name        = optional(string, "type: question")
      color       = optional(string, "d4c5f9")
      description = optional(string, "Questions, proposals and info that requires discussion.")
    }), {})
    feedback = optional(object({
      name        = optional(string, "type: feedback")
      color       = optional(string, "d4c5f9")
      description = optional(string, "Feedback for the team regarding this project.")
    }), {})
    discussion = optional(object({
      name        = optional(string, "type: discussion")
      color       = optional(string, "d4c5f9")
      description = optional(string, "Questions, proposals and info that requires discussion.")
    }), {})
    priority_high = optional(object({
      name        = optional(string, "priority: high")
      color       = optional(string, "d73a4a")
      description = optional(string, "Priority associated with the issue or PR.")
    }), {})
    priority_medium = optional(object({
      name        = optional(string, "priority: medium")
      color       = optional(string, "ffb8c6")
      description = optional(string, "Priority associated with the issue or PR.")
    }), {})
    docs = optional(object({
      name        = optional(string, "type: docs")
      color       = optional(string, "fef2c0")
      description = optional(string, "Related to documentation and information.")
    }), {})
    fix = optional(object({
      name        = optional(string, "type: fix")
      color       = optional(string, "91ca55")
      description = optional(string, "Iterations on existing features or infrastructure.")
    }), {})
    testing = optional(object({
      name        = optional(string, "type: testing")
      color       = optional(string, "fbca04")
      description = optional(string, "Related to testing.")
    }), {})
    chore = optional(object({
      name        = optional(string, "type: chore")
      color       = optional(string, "fef2c0")
      description = optional(string, "Related to testing.")
    }), {})
    help = optional(object({
      name        = optional(string, "help")
      color       = optional(string, "0e8a16")
      description = optional(string, "Help wanted.")
    }), {})
    effort_1 = optional(object({
      name        = optional(string, "effort: 1")
      color       = optional(string, "91ca55")
      description = optional(string, "Relative effort to complete issue or PR.")
    }), {})
    effort_2 = optional(object({
      name        = optional(string, "effort: 2")
      color       = optional(string, "c2e2a2")
      description = optional(string, "Relative effort to complete issue or PR.")
    }), {})
    effort_3 = optional(object({
      name        = optional(string, "effort: 3")
      color       = optional(string, "e9f4dc")
      description = optional(string, "Relative effort to complete issue or PR.")
    }), {})
    effort_5 = optional(object({
      name        = optional(string, "effort: 5")
      color       = optional(string, "fef6d7")
      description = optional(string, "Relative effort to complete issue or PR.")
    }), {})
    effort_8 = optional(object({
      name        = optional(string, "effort: 8")
      color       = optional(string, "fef2c0")
      description = optional(string, "Relative effort to complete issue or PR.")
    }), {})
    effort_13 = optional(object({
      name        = optional(string, "effort: 13")
      color       = optional(string, "fbca04")
      description = optional(string, "Relative effort to complete issue or PR.")
    }), {})
  })
  default = {}
}