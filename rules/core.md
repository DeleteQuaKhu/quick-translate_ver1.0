# core.md — always loaded

## Two-signature rule
The agent may only set a task to `agent-done`, and only with evidence (the
command it ran and its output). Only the user may move a task to `accepted`.
If the user check fails, the task returns to `rework`.

## Scope
No files outside the task. No opportunistic refactoring. Each task ≤ 1 feature
and ≤ ~300 diff lines.

## Dependencies
State the reason for any new dependency, confirm it exists
(`npm view <pkg> version`), pin the exact version, and always commit the
lockfile.

## Environment
A new environment variable updates `.env.example` in the same commit. Never
commit or print the contents of `.env*`.

## Reporting
Keep reports short: changed files, verification results, "How to check". Do
not re-explain code.

## Self-healing
On failure, make up to 2 autonomous fix-and-retry attempts. A fix must never
weaken, skip, or loosen a check. On the 3rd failure, stop, paste the log, and
wait for the user.

## Rule loading
Read `rules/core.md` + `rules/tN.md` for the project's tier + the matching
`rules/stack-*.md`. Do not read any other rule file.

## When something fails
Stop. Paste the exact log. Classify with a cause code (`SPEC`, `AGENT`,
`SCOPE`, `VERIFY-GAP`, `USER-SKIP`, `USER-CHANGE`, `ENV`, `EXTERNAL` — see
`docs/TASKLOG.md`). Propose one fix. Wait if retries are exhausted.
