variable "github_token" {
  description = "The GitHub personal access token with repo permissions"
  type        = string
  sensitive   = true
}

variable "github_repository" {
  description = "GitHub repository you want to create a branch in"
  type        = string
}

variable "branch_name" {
  description = "Branch name"
  type        = string
}