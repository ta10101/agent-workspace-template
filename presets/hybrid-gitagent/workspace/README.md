# Hybrid workspace (markdown handoffs + gitagent layout)

This folder is a **preset**: copy it with `scripts/copy-preset.ps1 -Preset hybrid-gitagent` from the [agent-workspace-template](https://github.com/ta10101/agent-workspace-template) repo.

## What you get

- **Team handoffs** via files: `intel/DAILY-INTEL.md` → `drafts/*` (one writer each).
- **gitagent-aligned** pieces: `agent.yaml`, `RULES.md`, `DUTIES.md`, `skills/`, `workflows/`, `hooks/hooks.yaml`, `memory/memory.yaml`, `knowledge/index.yaml`.
- **Runtime memory**: `memory/runtime/` plus curated `memory/MEMORY.md` (keep lean).

## Read first

1. Root `AGENTS.md` (session order)
2. `docs/INVARIANTS.md` in the template repo (one-writer table)
3. In the template repository: `docs/HYBRID_GITAGENT.md` (explains mapping to [gitagent](https://github.com/open-gitagent/gitagent))

## Optional CLI

```bash
npm i -g @open-gitagent/gitagent
gitagent validate
gitagent info
```

Run commands from **this directory** (the copied workspace root).

## Privacy

Do not put real `USER.md`, `memory/`, `intel/`, or `drafts/` content on a **public** remote.
