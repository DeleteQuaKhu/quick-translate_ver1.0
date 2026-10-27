# Tier scoring

Answer each question; add the points for each true item.

| Factor | Points |
| --- | --- |
| Has users other than me | +2 |
| Stores personal/sensitive data | +2 |
| Has auth or payments | +3 |
| Has backend/DB | +1 |
| Lives longer than 3 months | +1 |
| More than 1 developer | +1 |
| Multiple platforms (web + mobile) | +1 |
| Hard to roll back (DB migration, app store release) | +1 |

Result: 0-1 = T0 (script), 2-4 = T1 (tool/prototype), 5-8 = T2 (real app),
9+ = T3 (critical).

This is a heuristic, to be tuned after 2-3 real projects.
