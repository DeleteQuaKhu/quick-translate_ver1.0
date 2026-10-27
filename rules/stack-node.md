# stack-node.md — Node/TypeScript

Load this only when the project uses Node/TypeScript.

- Package manager: pnpm (`pnpm install`, `pnpm add -E <pkg>`).
- TypeScript strict mode (`tsconfig.json` `"strict": true`).
- Lint: ESLint flat config; run `pnpm lint`.
- Tests: Vitest; run `pnpm test`.
- Build: `pnpm build`; run `pnpm start` to run the compiled output.
- Every new module gets a test in the matching `*.test.ts`.
- Keep the dependency list minimal; confirm and pin versions before adding.
- Do not commit `node_modules/`, `dist/`, or `.env*` (`.env.example` is tracked).
