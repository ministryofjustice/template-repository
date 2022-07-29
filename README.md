# Ministry of Justice Template Repository

[![repo standards badge](https://img.shields.io/badge/dynamic/json?color=blue&style=for-the-badge&logo=github&label=MoJ%20Compliant&query=%24.data%5B%3F%28%40.name%20%3D%3D%20%22template-repository%22%29%5D.status&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fgithub_repositories)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/github_repositories#template-repository "Link to report")

Use this template to [create a repository] with the default initial files for a Ministry of Justice Github repository, including:

- The correct LICENSE
- Github Action example
- A .gitignore file
- A CODEOWNERS file
- A dependabot.yml file
- The MoJ Compliant Badge (Public repositories only)

Once you have created your repository, please:

- Edit the copy of this README.md file to document your project.
- Grant permission/s to the appropriate MoJ team/s with at least one team having Admin permissions.
- Try not to add individual users to the repository, instead use a team.
- To add an Outside Collaborator to the repository follow the guidelines on the [GitHub-collaborator repository](https://github.com/ministryofjustice/github-collaborators).
- Ensure branch protection is set up on the main branch.
- [Optional] Modify the CODEOWNERS file and state the team or users that can authorise PR's.
- Modify the Dependabot file to suit the [dependency manager](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/configuration-options-for-the-dependabot.yml-file#package-ecosystem) you plan to use and for [automated pull requests for package updates](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/enabling-and-disabling-dependabot-version-updates#enabling-dependabot-version-updates). Dependabot is enabled in the settings by default.
- Modify the short description found on the right side of the README.md file.
- Ensure as many of the [GitHub Standards](https://github.com/ministryofjustice/github-repository-standards) rules are maintained as possibly can.
- Modify the MoJ Compliant Badge url using these [instructions](https://github.com/orgs/ministryofjustice/teams/operations-engineering/discussions). If the repository is internal or private then the badge can removed as it will not work.
- For a private repo with no GitHub Advanced Security license remove the .github/workflows/dependency-review.yml file.

[create a repository]: https://github.com/ministryofjustice/template-repository/generate
