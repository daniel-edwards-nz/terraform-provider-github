---
page_title: "GitHub: github_repository_environment"
description: |-
  Creates and manages environments for GitHub repositories
---

# github_repository_environment

This resource allows you to create and manage environments for a GitHub repository.

## Example Usage

```terraform
data "github_user" "current" {
  username = ""
}

resource "github_repository" "example" {
  name        = "A Repository Project"
  description = "My awesome codebase"
}

resource "github_repository_environment" "example" {
  environment         = "example"
  repository          = github_repository.example.name
  prevent_self_review = true
  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}
```

## Argument Reference

The following arguments are supported:

* `environment` - (Required) The name of the environment.

* `repository` - (Required) The repository of the environment.

* `wait_timer` - (Optional) Amount of time to delay a job after the job is initially triggered.

* `can_admins_bypass` - (Optional) Can repository admins bypass the environment protections. Defaults to `true`.

* `prevent_self_review` - (Optional) Whether or not a user who created the job is prevented from approving their own job. Defaults to `false`.

### Reviewers

The `reviewers` block supports the following:

* `teams` - (Optional) Up to 6 IDs for teams who may review jobs that reference the environment. Reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.

* `users` - (Optional) Up to 6 IDs for users who may review jobs that reference the environment. Reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.

#### Deployment Branch Policy

The `deployment_branch_policy` block supports the following:

* `protected_branches` - (Required) Whether only branches with branch protection rules can deploy to this environment.

* `custom_branch_policies` - (Required) Whether only branches that match the specified name patterns can deploy to this environment.

## Import

GitHub Repository Environment can be imported using an ID made up of `name` of the repository combined with the `environment` name of the environment, separated by a `:` character, e.g.

```
$ terraform import github_repository_environment.daily terraform:daily
```
