variable "github_repository" {
  type        = string
  description = "Name of the github repository that the labels will be applied to."
}

variable "labels" {
  type        = map(any)
  default     = {}
  description = "Map that contains the labels that you would like to apply to the repository"
}