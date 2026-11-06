---
description: Commit Style Instructions
source: https://github.com/ministryofjustice/ai-toolkit/blob/main/toolkits/universal/.apm/instructions/commit.instructions.md
---

# Commit Styling

- Use [Conventional Commits](https://www.conventionalcommits.org)
- Make sure commits are signed; this is a common requirement in our repositories

## Signing Commits via API

When creating commits through the GitHub API (e.g. in a cloud agent context with no local Git checkout), always use the **GraphQL `createCommitOnBranch` mutation** instead of the REST `PUT /contents/{path}` endpoint. GitHub signs commits made via this mutation server-side, satisfying repository commit signature verification requirements

Never use the REST Contents API (`PUT /repos/{owner}/{repo}/contents/{path}`) to create commits, as these are unsigned
