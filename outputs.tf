output "repo_configuration" {
  value = { for k, v in github_repository.repo : k =>
    { "html_url" = v.svn_url, "ssh_url" = v.ssh_clone_url, "git_clone_url" = v.git_clone_url, "template_owner" = try(v.template[0].owner, null), "template_repository" = try(v.template[0].repository, null) }
  }
  description = "Map of URLs for the repositories that have been configured. This includes the HTML, SSH, and Git URLs."
}

output "repo_labels" {
  value       = module.labels
  description = "Output of all labels that are created as a result of the run."
}