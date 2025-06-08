# Terraform Provider GitHub

<img src="https://cloud.githubusercontent.com/assets/98681/24211275/c4ebd04e-0ee8-11e7-8606-061d656a42df.png" width="72" height="">

<img src="https://raw.githubusercontent.com/hashicorp/terraform-website/d841a1e5fca574416b5ca24306f85a0f4f41b36d/content/source/assets/images/logo-terraform-main.svg" width="300px">

This project is used to manipulate GitHub resources (repositories, teams, files, etc.) using Terraform. Its Terraform Registry page can be found [here](https://registry.terraform.io/providers/integrations/github/).

## Important

This is a personal fork of the [integrations/github](https://github.com/integrations/terraform-provider-github) Terraform provider for GitHub. It is not maintained by GitHub, Inc. or the GitHub SDK team.

While this was originally forked from the original repo at [v6.6.0](https://github.com/integrations/terraform-provider-github/releases/tag/v6.6.0), it will be kept up to date with the latest changes from the original repo on a best-effort basis. The goal of this fork is to add some additional features that are not yet available in the original repo, and to keep it up to date with the latest changes from the original repo.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) 0.10.x
- [Go](https://golang.org/doc/install) 1.24.x (to build the provider plugin)

## Usage

Detailed documentation for the GitHub provider can be found [here](https://registry.terraform.io/providers/integrations/github).

## Contributing

Detailed documentation for contributing to the GitHub provider can be found [here](CONTRIBUTING.md).

## Support

You are welcome to use this fork, but please be aware that it is not officially supported by GitHub and may not be as stable as the original repo. If you encounter any issues, please open an issue in this repo and I will do my best to address it.
