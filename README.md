# terraform-module-github-repo

Terraform module to configure a Github repository.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider_github) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_auto_merge"></a> [allow_auto_merge](#input_allow_auto_merge) | Allow auto-merging of pull requests. | `bool` | `false` | no |
| <a name="input_allow_merge_commit"></a> [allow_merge_commit](#input_allow_merge_commit) | Allow merge commits. | `bool` | `true` | no |
| <a name="input_allow_rebase_merge"></a> [allow_rebase_merge](#input_allow_rebase_merge) | Allow rebase merge commits. | `bool` | `true` | no |
| <a name="input_allow_squash_merge"></a> [allow_squash_merge](#input_allow_squash_merge) | Allow squash merge commits. | `bool` | `true` | no |
| <a name="input_delete_branch_on_merge"></a> [delete_branch_on_merge](#input_delete_branch_on_merge) | Delete branch on pull request merge. | `bool` | `false` | no |
| <a name="input_gitignore_template"></a> [gitignore_template](#input_gitignore_template) | Template for the gitignore file. | `string` | `null` | no |
| <a name="input_has_issues"></a> [has_issues](#input_has_issues) | Enable the GitHub issues feature for this repository. | `bool` | `false` | no |
| <a name="input_has_projects"></a> [has_projects](#input_has_projects) | Enable the GitHub projects feature for this repository. | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has_wiki](#input_has_wiki) | Enable the GitHub wiki feature for this repository. | `bool` | `false` | no |
| <a name="input_is_template"></a> [is_template](#input_is_template) | Set this repository as a template. | `bool` | `false` | no |
| <a name="input_license_template"></a> [license_template](#input_license_template) | Template for the license file. | `string` | `null` | no |
| <a name="input_repo_description"></a> [repo_description](#input_repo_description) | A description of the repository. | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo_name](#input_repo_name) | The name of the repository. | `string` | n/a | yes |
| <a name="input_repo_visibility"></a> [repo_visibility](#input_repo_visibility) | Repository visibility; either 'public' or 'private'. | `string` | n/a | yes |

## Outputs

No outputs.

## Adding a new module

- Create the directory and populate it with Terraform manifests.
- Symlink `_versions.tf` from the root directory into the module directory.
- Generate an inputs reference for the new module with the command below and add it to the README:
```
terraform-docs markdown table <module_dir> --escape=false
```
