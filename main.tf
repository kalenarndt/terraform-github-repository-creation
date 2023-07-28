locals {
  labels = var.use_default_labels ? merge(var.labels, var.label_defaults) : var.labels
}

resource "github_repository" "repo" {
  for_each               = var.github_repos
  name                   = each.value.name
  description            = each.value.description
  visibility             = each.value.visibility
  has_issues             = each.value.enable_issues
  allow_merge_commit     = each.value.allow_merge_commit
  delete_branch_on_merge = each.value.delete_branch_on_merge
  auto_init              = each.value.auto_init
  archive_on_destroy     = each.value.archive_on_destroy

  dynamic "template" {
    for_each = each.value.use_template ? { "use_template" : "" } : {}
    content {
      owner                = each.value.template_owner
      repository           = each.value.template_repo
      include_all_branches = each.value.template_copy_all_branches
    }
  }
}

resource "github_branch_default" "branch" {
  for_each   = var.github_repos
  branch     = each.value.default_branch
  repository = github_repository.repo[each.key].name
}

module "labels" {
  source   = "./modules/labels"
  for_each = var.use_default_labels || length(var.labels) >= 1 ? github_repository.repo : {}

  github_repository = each.value.name
  labels            = local.labels
}