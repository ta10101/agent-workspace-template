# Invariants (stable contracts)

These rules stay true when you rename agents or rewrite personalities. **Identity is branding; contracts are structure.**

## Three layers

| Layer | Purpose | Typical files |
| ----- | ------- | ------------- |
| **1 — Identity** | Who the agent is; who the human is | `SOUL.md`, `IDENTITY.md` per agent; root `USER.md` |
| **2 — Operations** | How sessions start; safety; workflows | Root `AGENTS.md`; per-agent `AGENTS.md`; optional `HEARTBEAT.md` |
| **3 — Knowledge** | What persisted truth exists | `MEMORY.md`, `memory/YYYY-MM-DD.md`, `shared-context/*`, shared intel files |

## One-writer rule

Every file that more than one agent touches must have **exactly one writer**. Everyone else **reads only**.

Update this table for your team (placeholders below).

| File or path | Writer (agent slug) | Readers |
| ------------ | ------------------- | ------- |
| `intel/DAILY-INTEL.md` | `research` (example) | All agents that consume intel |
| `shared-context/THESIS.md` | Human (or designated lead) | All agents |
| `shared-context/FEEDBACK-LOG.md` | Human (or lead) | All agents |
| `shared-context/SIGNALS.md` | Human or `research` (pick one) | All agents |
| `drafts/TODAY-X.md` | `content` (example) | Human, reviewers |
| Root `MEMORY.md` | Lead agent at root | Lead, in main session only (see your `AGENTS.md`) |
| `agents/<slug>/memory/YYYY-MM-DD.md` | That agent only | That agent |

If two writers target the same path, you will get conflicts and silent data loss. Split files or assign a single owner.

## Session read order

Read order is **not** implied; it is declared in `AGENTS.md` (root and per-agent). Typical pattern:

1. This agent’s `SOUL.md`
2. Root `USER.md`
3. `shared-context/*` (if your playbook says so)
4. Upstream handoff files (e.g. intel) **after** their writer has run
5. `memory/<today>.md` and `memory/<yesterday>.md` only (not entire history)
6. `MEMORY.md` when in a **main / direct** session (if your policy says so)

## Daily logs and context size

- Append operational notes to `memory/YYYY-MM-DD.md` (per agent or root, per your layout).
- **Load today + yesterday** in routine sessions. Loading full history balloons context and degrades output.
- On a schedule you define (e.g. biweekly), **archive or distill** old daily logs into `MEMORY.md` or summaries, then trim or move archives out of the default read path.

## Security and sensitivity

- `MEMORY.md` and daily logs may contain private preferences, credentials reminders, or work details. Restrict what loads in **shared / group** sessions vs **main** sessions in root `AGENTS.md`.
- Never paste secrets into markdown that syncs to public repos.

## Scheduling order (example)

If agent B reads agent A’s output file, **A must run first**.

Example:

1. Morning: `research` writes `intel/DAILY-INTEL.md`
2. Afternoon: `content` reads intel, writes drafts
3. Evening: human reviews in Telegram / email / local folder

Your cron or automation tool (e.g. OpenClaw) only **triggers** runs; the **contract** is still files on disk.
