resource "github_issue_label" "labels" {
  for_each    = var.labels
  repository  = var.github_repository
  name        = each.value.name
  color       = each.value.color
  description = each.value.description
}