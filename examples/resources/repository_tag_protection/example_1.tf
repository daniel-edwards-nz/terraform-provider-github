resource "github_repository_tag_protection" "example" {
    repository      = "example-repository"
    pattern         = "v*"
}
