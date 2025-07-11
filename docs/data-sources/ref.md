---
page_title: "GitHub: github_ref"
description: |-
  Get information about a repository ref.
---

# github_ref

Use this data source to retrieve information about a repository ref.

## Example Usage

```terraform
data "github_ref" "development" {
  owner      = "example"
  repository = "example"
  ref        = "heads/development"
}
```

## Argument Reference

The following arguments are supported:

* `owner` - (Required) Owner of the repository.

* `repository` - (Required) The GitHub repository name.

* `ref` - (Required) The repository ref to look up. Must be formatted `heads/<ref>` for branches, and `tags/<ref>` for tags.

## Attribute Reference

The following additional attributes are exported:

* `etag` - An etag representing the ref.

* `id` - A string storing a reference to the repository name and ref.

* `sha` - A string storing the reference's `HEAD` commit's SHA1.
