---
page_title: "GitHub: github_team_membership"
description: |-
  Provides a GitHub team membership resource.
---

# github_team_membership

Provides a GitHub team membership resource.

This resource allows you to add/remove users from teams in your organization. When applied, the user will be added to the team. If the user hasn't accepted their invitation to the organization, they won't be part of the team until they do. When destroyed, the user will be removed from the team.

~> **Note** This resource is not compatible with `github_team_members`. Use either `github_team_members` or `github_team_membership`.

~> **Note** Organization owners may not be set as "members" of a team; they may only be set as "maintainers". Attempting to set an organization owner as a "member" of a team may result in a `terraform plan` diff that changes their status back to "maintainer".

## Example Usage

```terraform
# Add a user to the organization
resource "github_membership" "membership_for_some_user" {
  username = "SomeUser"
  role     = "member"
}

resource "github_team" "some_team" {
  name        = "SomeTeam"
  description = "Some cool team"
}

resource "github_team_membership" "some_team_membership" {
  team_id  = github_team.some_team.id
  username = "SomeUser"
  role     = "member"
}
```

## Argument Reference

The following arguments are supported:

* `team_id` - (Required) The GitHub team id or the GitHub team slug
* `username` - (Required) The user to add to the team.
* `role` - (Optional) The role of the user within the team. Must be one of `member` or `maintainer`. Defaults to `member`.

## Import

GitHub Team Membership can be imported using an ID made up of `teamid:username` or `teamname:username`, e.g.

```
$ terraform import github_team_membership.member 1234567:someuser
$ terraform import github_team_membership.member Administrators:someuser
```
