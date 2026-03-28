# AGENTS.md (root)

Gitagent-style **fallback** instructions plus this workspace’s session order.

## Bootstrap

On session start, follow `hooks/bootstrap.md` mentally (read those files in order).

## Every session

1. Root `agent.yaml` (skim: name, dependencies)
2. `SOUL.md`, `IDENTITY.md`
3. `RULES.md`, `DUTIES.md`
4. `USER.md`
5. `shared-context/THESIS.md`, `FEEDBACK-LOG.md`, `SIGNALS.md`
6. `memory/runtime/context.md` (short state)
7. `memory/YYYY-MM-DD.md` for **today** and **yesterday** (if present)
8. **Main / direct sessions:** `memory/MEMORY.md` (see root `MEMORY.md` shim)

## Teardown

Before ending a long session, follow `hooks/teardown.md`.

## Memory layout

- **Dated logs:** `memory/YYYY-MM-DD.md` — operational narrative; load today + yesterday only in routine runs
- **Runtime:** `memory/runtime/` — `dailylog.md`, `context.md`, `key-decisions.md` per [gitagent live-memory pattern](https://github.com/open-gitagent/gitagent)

## Workflows

Declarative order hints live in `workflows/*.yaml`. They do not execute by themselves; your runner (human, Cursor, OpenClaw, etc.) follows them.
