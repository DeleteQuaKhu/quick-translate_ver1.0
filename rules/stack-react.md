# stack-react.md — React

Load this only when the project uses React (in addition to `stack-node.md`).

- No app scaffold ships with the template; add a framework only if the project
  needs one (Vite + React is the default choice).
- Components are functions; one component per file.
- Keep state local unless it must be shared; prefer props over context.
- Tests: React Testing Library + Vitest; test behavior, not implementation.
- No business logic in components — put it in plain modules.
- Accessibility: semantic elements, labels, keyboard reachability.
