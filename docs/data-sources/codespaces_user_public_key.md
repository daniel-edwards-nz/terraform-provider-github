---
page_title: "GitHub: github_codespaces_user_public_key"
description: |-
  Get information on a GitHub Codespaces User Public Key.
---

# github_codespaces_user_public_key

Use this data source to retrieve information about a GitHub Codespaces User public key. This data source is required to be used with other GitHub secrets interactions. Note that the provider `token` must have admin rights to an user to retrieve it's Codespaces public key.

## Example Usage

```terraform
data "github_codespaces_user_public_key" "example" {}
```

## Attributes Reference

* `key_id` - ID of the key that has been retrieved.
* `key` - Actual key retrieved.
