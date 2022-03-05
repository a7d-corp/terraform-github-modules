variable "repo_name" {
  type        = string
  description = "The GitHub repository name."
}

variable "collaborator_name" {
  type        = string
  description = "The user to add to the repository as a collaborator."
}

variable "collaborator_permission" {
  type        = string
  default     = "push"
  description = "The permission of the outside collaborator for the repository."
}
