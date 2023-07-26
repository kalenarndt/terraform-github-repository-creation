module "repo_time" {
  source = "../../"
  github_repos = {
    my_repo1 = {
      name                       = "my_repo1"
      description                = "This repo is very fancy"
      visibility                 = "private"
      allow_merge_commit         = false
      delete_branch_on_merge     = true
      auto_init                  = true
      use_template               = true
      default_branch             = "main"
      template_owner             = "kalenarndt"
      template_repo              = "terraform-repo-template"
      template_copy_all_branches = false
    }
    my_repo2 = {
      name                       = "my_repo2"
      description                = "This repo is very fancy"
      visibility                 = "private"
      allow_merge_commit         = false
      delete_branch_on_merge     = true
      auto_init                  = true
      use_template               = true
      default_branch             = "main"
      template_owner             = "kalenarndt"
      template_repo              = "terraform-repo-template"
      template_copy_all_branches = false
    }
    my_repo3 = {
      name                       = "my_repo3"
      description                = "This repo is very fancy"
      visibility                 = "private"
      allow_merge_commit         = false
      delete_branch_on_merge     = true
      auto_init                  = true
      use_template               = true
      default_branch             = "main"
      template_owner             = "kalenarndt"
      template_repo              = "terraform-repo-template"
      template_copy_all_branches = false
    }
  }

  labels = {
    my_label = {
      name        = "label: stuff"
      color       = "5ebeff"
      description = "This tag is super important"
    }
  }
}