# project-template

A GitHub template repository for new projects: a tiered rule system (`rules/`),
a task log and spec (`docs/`), and a verify + CI pipeline (`scripts/verify.sh`,
`.github/workflows/ci.yml`).

## Run

```bash
pnpm install
pnpm build
pnpm start
```

### gitleaks pre-commit (one-time setup)

Install [gitleaks](https://github.com/gitleaks/gitleaks#installing), then add a
pre-commit hook to stop secrets from being committed. Create
`.git/hooks/pre-commit`:

```bash
#!/usr/bin/env bash
gitleaks protect --staged --verbose
```

Make it executable: `chmod +x .git/hooks/pre-commit`.

> Branch protection (manual, per new project): template repositories do not
> inherit branch protection. On each new repo, enable it under Settings →
> Branches → Add branch protection rule (require a pull request and the CI
> status check).

## Test

```bash
pnpm test
bash scripts/verify.sh   # typecheck + lint + test + build, in order
```

## Environment variables

Copy `.env.example` to `.env` and fill in real values. Never commit `.env*`;
`.env.example` is the only tracked env file.
