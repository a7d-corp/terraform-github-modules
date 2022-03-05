resource "github_repository_collaborator" "collaborator" {
  repository = var.repo_name
  username   = var.collaborator_name
  permission = var.collaborator_permission
}
