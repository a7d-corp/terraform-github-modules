# terraform-github-modules

Terraform module to configure a Github repository.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider_github) | ~> 4.0 |

## Resources

| Name | Type |
|------|------|
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Modules

### github_repository

`terraform-github-modules/github_repository/`

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_auto_merge"></a> [allow_auto_merge](#input_allow_auto_merge) | Allow auto-merging of pull requests. | `bool` | `false` | no |
| <a name="input_allow_merge_commit"></a> [allow_merge_commit](#input_allow_merge_commit) | Allow merge commits. | `bool` | `true` | no |
| <a name="input_allow_rebase_merge"></a> [allow_rebase_merge](#input_allow_rebase_merge) | Allow rebase merge commits. | `bool` | `true` | no |
| <a name="input_allow_squash_merge"></a> [allow_squash_merge](#input_allow_squash_merge) | Allow squash merge commits. | `bool` | `true` | no |
| <a name="input_auto_init"></a> [auto_init](#input_auto_init) | Create an initial commit in a new repository. | `bool` | `true` | no |
| <a name="input_delete_branch_on_merge"></a> [delete_branch_on_merge](#input_delete_branch_on_merge) | Delete branch on pull request merge. | `bool` | `false` | no |
| <a name="input_from_template"></a> [from_template](#input_from_template) | Was this repo generated from a template repo? | `bool` | `false` | no |
| <a name="input_gitignore_template"></a> [gitignore_template](#input_gitignore_template) | Template for the gitignore file. | `string` | `null` | no |
| <a name="input_has_downloads"></a> [has_downloads](#input_has_downloads) | Set to true to enable the (deprecated) downloads features on the repository. | `bool` | `false` | no |
| <a name="input_has_issues"></a> [has_issues](#input_has_issues) | Enable the GitHub issues feature for this repository. | `bool` | `false` | no |
| <a name="input_has_projects"></a> [has_projects](#input_has_projects) | Enable the GitHub projects feature for this repository. | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has_wiki](#input_has_wiki) | Enable the GitHub wiki feature for this repository. | `bool` | `false` | no |
| <a name="input_is_template"></a> [is_template](#input_is_template) | Set this repository as a template. | `bool` | `false` | no |
| <a name="input_license_template"></a> [license_template](#input_license_template) | Template for the license file. | `string` | `null` | no |
| <a name="input_repo_description"></a> [repo_description](#input_repo_description) | A description of the repository. | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo_name](#input_repo_name) | The name of the repository. | `string` | n/a | yes |
| <a name="input_repo_visibility"></a> [repo_visibility](#input_repo_visibility) | Repository visibility; either 'public' or 'private'. | `string` | n/a | yes |
| <a name="input_template_repo_name"></a> [template_repo_name](#input_template_repo_name) | The name of the template repository. | `string` | `null` | no |
| <a name="input_template_repo_owner"></a> [template_repo_owner](#input_template_repo_owner) | The GitHub organization or user the template repository is owned by. | `string` | `null` | no |
| <a name="input_topics"></a> [topics](#input_topics) | The list of topics of the repository. | `list(any)` | `null` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability_alerts](#input_vulnerability_alerts) | Enable security alerts for vulnerable dependencies. | `bool` | `false` | no |

### github_repository_collaborator

`terraform-github-modules/github_repository_collaborator/`

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_collaborator_name"></a> [collaborator_name](#input_collaborator_name) | The user to add to the repository as a collaborator. | `string` | n/a | yes |
| <a name="input_collaborator_permission"></a> [collaborator_permission](#input_collaborator_permission) | The permission of the outside collaborator for the repository. | `string` | `"push"` | no |
| <a name="input_repo_name"></a> [repo_name](#input_repo_name) | The GitHub repository name. | `string` | n/a | yes |

### github_repository_webhook

`terraform-github-modules/github_repository_webhook/`

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_active"></a> [active](#input_active) | Indicate if the webhook should receive events. | `bool` | `true` | no |
| <a name="input_content_type"></a> [content_type](#input_content_type) | The content type for the payload. | `string` | n/a | yes |
| <a name="input_events"></a> [events](#input_events) | A list of events which should trigger the webhook. | `list(string)` | n/a | yes |
| <a name="input_insecure_ssl"></a> [insecure_ssl](#input_insecure_ssl) | Insecure SSL boolean toggle. | `bool` | `false` | no |
| <a name="input_repo_name"></a> [repo_name](#input_repo_name) | The name of the repository. | `string` | n/a | yes |
| <a name="input_secret"></a> [secret](#input_secret) | The shared secret for the webhook. | `string` | n/a | yes |
| <a name="input_url"></a> [url](#input_url) | The URL of the webhook. | `string` | n/a | yes |

## Outputs

No outputs.

## Using the modules

Set the module `source` in your module configuration:

```
source = "github.com/glitchcrab/terraform-github-modules//github_repository"
```

Note: the `//` is important as it tells Terraform that it's a child directory of the main module repo.

## Adding a new module

- Create the directory and populate it with Terraform manifests.
- Symlink `_versions.tf` from the root directory into the module directory.
- Generate an inputs reference for the new module with the command below and add it to the README:
```
terraform-docs markdown table <module_dir> --escape=false
```
