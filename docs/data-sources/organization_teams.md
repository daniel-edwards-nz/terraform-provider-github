---
page_title: "GitHub: github_organization_teams"
description: |-
  Get information on all GitHub teams of an organization.
---

# github\_organization\_teams

Use this data source to retrieve information about all GitHub teams in an organization.

## Example Usage

To retrieve *all* teams of the organization:

```terraform
data "github_organization_teams" "all" {}
```

To retrieve only the team's at the root of the organization:

```terraform
data "github_organization_teams" "root_teams" {
  root_teams_only = true
}
```

## Attributes Reference

* `teams` - (Required) An Array of GitHub Teams. Each `team` block consists of the fields documented below.
* `root_teams_only` - (Optional) Only return teams that are at the organization's root, i.e. no nested teams. Defaults to `false`.
* `summary_only` - (Optional) Exclude the members and repositories of the team from the returned result. Defaults to `false`.
* `results_per_page` - (Optional) Set the number of results per graphql query. Reducing this number can alleviate timeout errors. Accepts a value between 0 - 100. Defaults to `100`.

---

The `team` block consists of:

* `id` - the ID of the team.
* `node_id` - the Node ID of the team.
* `slug` - the slug of the team.
* `name` - the team's full name.
* `description` - the team's description.
* `privacy` - the team's privacy type.
* `members` - List of team members. Not returned if `summary_only = true`
* `repositories` - List of team repositories. Not returned if `summary_only = true`
* `parent` - the parent team.
