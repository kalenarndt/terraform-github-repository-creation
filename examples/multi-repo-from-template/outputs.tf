output "repo_configuration" {
  value       = module.repo_time.repo_configuration
  description = "Map of URLs for the repositories that have been configured. This includes the HTML, SSH, and Git URLs."
}

output "repo_labels" {
  value       = module.repo_time.repo_labels
  description = "Output of all labels that are created as a result of the run."
}