variable "webhook_enabled" {
  type        = number
  default     = 0
  description = "Toggles webhook creation on or off."
}

variable "repo_name" {
  type        = string
  description = "The name of the repository."
}

variable "url" {
  type        = string
  description = "The URL of the webhook."
}

variable "content_type" {
  type        = string
  description = "The content type for the payload."
}

variable "insecure_ssl" {
  type        = bool
  default     = false
  description = "Insecure SSL boolean toggle."
}

variable "secret" {
  type        = string
  sensitive   = true
  description = "The shared secret for the webhook."
}

variable "active" {
  type        = bool
  default     = true
  description = "Indicate if the webhook should receive events."
}

variable "events" {
  type        = list(string)
  description = "A list of events which should trigger the webhook."
}
