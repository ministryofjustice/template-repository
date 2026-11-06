# Ministry of Justice Template Repository

[![Ministry of Justice Repository Compliance Badge](https://github-community.service.justice.gov.uk/repository-standards/api/template-repository/badge)](https://github-community.service.justice.gov.uk/repository-standards/template-repository)

This template provides a starting point for Ministry of Justice GitHub repositories, including repository automation, a configured development container, and shared coding instructions.

## Included Files

The repository includes:

- `.devcontainer/` — a development container configuration with a post-create script that installs pre-commit hooks and APM dependencies.
- `.github/CODEOWNERS` — placeholder for repository code owners; update it for your project.
- `.github/dependabot.yml` — daily dependency updates for APM, Dev Containers, GitHub Actions, and pre-commit.
- `.github/instructions/` and `apm.yml` — shared MOJ instructions for Copilot and VS Code, installed as APM dependencies.
- `.github/workflows/` — reusable CodeQL and dependency review workflows from `ministryofjustice/actions`.
- `.github/mcp.json` and `.vscode/mcp.json` — GitHub MCP server configuration for Copilot and VS Code.
- `.pre-commit-config.yaml` — hooks for common file checks, secret scanning, and GitHub Actions security analysis.
- `.gitignore` and `LICENSE`.
- A MOJ Repository Standards badge for this template repository (public repositories only).

## Setup Instructions

After creating a repository from this template, complete the following steps.

### Update the README

Replace this template README with documentation for your project, including what it does, how to install and run it, and how to contribute.

### Update the repository description

Add a short description in the repository settings so visitors can quickly understand the project's purpose.

### Grant team permissions

Assign permissions to the appropriate MOJ teams. Ensure at least one team has Admin permissions. Prefer using GitHub Teams rather than assigning access to individuals. Where appropriate, use a team associated with a parent team and business unit so repository ownership is clear.

### Read the GitHub repository standards

Familiarise yourself with the [MOJ GitHub Repository Standards](https://github-community.service.justice.gov.uk/repository-standards/guidance) and apply the standards relevant to your project.

### Update the repository standards badge

Replace `template-repository` in both badge URLs with your repository's name:

```text
https://github-community.service.justice.gov.uk/repository-standards/api/<your-repository-name>/badge
https://github-community.service.justice.gov.uk/repository-standards/<your-repository-name>
```

The badge will not function correctly if your repository is internal or private. In that case, remove the badge from your README.

### Update `CODEOWNERS`

Modify `.github/CODEOWNERS` to specify the teams or users responsible for reviewing changes.

### Configure Dependabot

`.github/dependabot.yml` checks APM, Dev Containers, GitHub Actions, and pre-commit dependencies daily, with a seven-day cooldown. Ministry of Justice dependencies are excluded from the cooldown so Dependabot can propose updates for them without waiting; they are not excluded from updates. Adapt the configuration to your project's [dependency managers](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file#package-ecosystem).

### Development container and pre-commit

The development container runs `.devcontainer/post-create.sh` when it is created. This installs the pre-commit hooks and APM dependencies. The hooks run automatically on commit; to run them against all files manually, use `uvx pre-commit run --all-files`.

### Dependency Review

The dependency review workflow uses a reusable workflow from `ministryofjustice/actions`. If your repository is private and does not have a GitHub Advanced Security licence, remove `.github/workflows/dependency-review.yml`.
