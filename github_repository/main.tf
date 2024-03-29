resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.repo_visibility
  topics      = var.topics

  has_issues    = var.has_issues
  has_projects  = var.has_projects
  has_wiki      = var.has_wiki
  has_downloads = var.has_downloads

  auto_init   = var.auto_init
  is_template = var.is_template

  # parent template repo
  dynamic "template" {
    for_each = var.from_template ? [1] : []
    content {
      owner      = var.template_repo_owner
      repository = var.template_repo_name
    }
  }

  # merge-related options
  allow_merge_commit     = var.allow_merge_commit
  allow_squash_merge     = var.allow_squash_merge
  allow_rebase_merge     = var.allow_rebase_merge
  allow_auto_merge       = var.allow_auto_merge
  delete_branch_on_merge = var.delete_branch_on_merge

  vulnerability_alerts = var.vulnerability_alerts

  # misc repo templating
  gitignore_template = var.gitignore_template
  license_template   = var.license_template
}
