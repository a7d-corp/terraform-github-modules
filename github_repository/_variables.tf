variable "repo_name" {
  type        = string
  description = "The name of the repository."
}
variable "repo_description" {
  type        = string
  description = "A description of the repository."
}
variable "repo_visibility" {
  type        = string
  description = "Repository visibility; either 'public' or 'private'."
}

variable "topics" {
  type        = list(any)
  default     = null
  description = "The list of topics of the repository."
}

variable "has_issues" {
  type        = bool
  default     = false
  description = "Enable the GitHub issues feature for this repository."
}
variable "has_projects" {
  type        = bool
  default     = false
  description = "Enable the GitHub projects feature for this repository."
}
variable "has_wiki" {
  type        = bool
  default     = false
  description = "Enable the GitHub wiki feature for this repository."
}

variable "has_downloads" {
  type        = bool
  default     = false
  description = "Set to true to enable the (deprecated) downloads features on the repository."
}

variable "is_template" {
  type        = bool
  default     = false
  description = "Set this repository as a template."
}
variable "allow_merge_commit" {
  type        = bool
  default     = true
  description = "Allow merge commits."
}
variable "allow_squash_merge" {
  type        = bool
  default     = true
  description = "Allow squash merge commits."
}
variable "allow_rebase_merge" {
  type        = bool
  default     = true
  description = "Allow rebase merge commits."
}
variable "allow_auto_merge" {
  type        = bool
  default     = false
  description = "Allow auto-merging of pull requests."
}
variable "delete_branch_on_merge" {
  type        = bool
  default     = false
  description = "Delete branch on pull request merge."
}

variable "vulnerability_alerts" {
  type        = bool
  default     = false
  description = "Enable security alerts for vulnerable dependencies."
}

variable "gitignore_template" {
  type        = string
  default     = null
  description = "Template for the gitignore file."
}
variable "license_template" {
  type        = string
  default     = null
  description = "Template for the license file."
}
