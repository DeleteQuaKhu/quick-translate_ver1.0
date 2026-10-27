# Project Template — Agent Instructions

This repo is a starting point for new projects. On first use, score the
project (see `scripts/tier.md`) to pick a tier, then trim this file to the
tier's limit (T1 ≤20 / T2 ≤60 / T3 ≤100 lines).

## Rule loading (always)
Read `rules/core.md`, `rules/tN.md` for the project's tier, and the matching
`rules/stack-*.md` (e.g. `stack-node.md`). Do not read any other rule file.

## How to determine the tier
Answer the questions in `scripts/tier.md`, sum the points, and map to a tier:
0-1 = T0, 2-4 = T1, 5-8 = T2, 9+ = T3. Record the result in `docs/SPEC.md`.

## Non-negotiable
- Two-signature rule: the agent may only set `agent-done` (with evidence);
  only the user may move a task to `accepted`.
- Verify before claiming: run the real command, paste the real output.
- Scope: no files outside the task, no opportunistic refactoring.
- Never commit secrets.

## Task record
Track work in `docs/TASKLOG.md` (see that file for statuses, cause codes, and
the block template). Keep the report short.
