# Initialize the GitHub provider
provider "github" {
  token = var.github_token
}

resource "github_repository_file" "foo" {
  repository          = var.github_repository
  branch              = var.branch_name
  file                = ".gitignore"
  content             = "**/*.tfstate"
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@example.com"
  overwrite_on_create = true
}