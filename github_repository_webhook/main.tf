resource "github_repository_webhook" "webhook" {
  repository = var.repo_name

  configuration {
    url          = var.url
    content_type = var.content_type
    insecure_ssl = var.insecure_ssl
    secret       = var.secret
  }

  active = var.active

  events = var.events
}
