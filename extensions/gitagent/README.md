# Optional: [gitagent](https://github.com/open-gitagent/gitagent) CLI

[`@open-gitagent/gitagent`](https://www.npmjs.com/package/@open-gitagent/gitagent) validates, exports, and runs **git-native** agent folders.

This template’s **`hybrid-gitagent`** preset borrows its layout ideas (`agent.yaml`, `RULES.md`, `DUTIES.md`, `skills/`, `workflows/`, `hooks/`, `memory/runtime/`). It is **not** guaranteed to pass `gitagent validate` without tweaks; use the CLI as an optional check.

```bash
npm i -g @open-gitagent/gitagent
cd path/to/your-copied-workspace
gitagent validate
gitagent export --format system-prompt
```

See also [`docs/HYBRID_GITAGENT.md`](../../docs/HYBRID_GITAGENT.md).
