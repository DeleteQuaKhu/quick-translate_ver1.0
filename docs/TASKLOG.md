# TASKLOG

Statuses: `todo → in-progress → agent-done → accepted`; if the user check
fails: `rework → agent-done`; escaped defect: `reopened`.

Cause codes: `SPEC`, `AGENT`, `SCOPE`, `VERIFY-GAP`, `USER-SKIP`, `USER-CHANGE`,
`ENV`, `EXTERNAL`.

## Block template (T2/T3)

```text
T-001: <title>
Status: todo
Done when:
Only modify:
Agent:
  Ran: <command> → <result>
  Self-healing retries used: <0..2>
  Diff: <git diff --stat>
  Assumptions used: <list; "none" if none>
  How to check (user, max 3 steps; each says "seeing X is correct, seeing Y is wrong"):
    1.
    2.
    3.
  Rollback: git revert <sha> or a specific step
User:
  Check: pass | fail | skipped   (date: )
  Steps run / skipped:
  Notes:
Defect (if any):
  Description: <observable, short>
  Found at: user-check | CI | after-accept
  Cause: <code> — <1 sentence of evidence>
  Fix:
  Prevention: <1 concrete change>
```

## T1 variant

One line per task:

```text
T-001: <title> — Status: <status> — Ran: <command> → <result>
```
