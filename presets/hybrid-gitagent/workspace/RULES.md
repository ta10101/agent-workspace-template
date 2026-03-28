# RULES.md — hard constraints

Non-negotiables for **every** agent in this workspace. Softer guidance stays in `SOUL.md` and `AGENTS.md`.

1. **One writer per shared artifact** — see `DUTIES.md` and repo `docs/INVARIANTS.md`.
2. **No fabricated sources** — mark unknowns `[UNVERIFIED]`; cite primary links for metrics.
3. **No secret exfiltration** — API keys live in `.env` (gitignored), never in committed markdown.
4. **Destructive actions** — no deleting project trees or shared files without explicit human approval.
5. **Privacy** — assume `memory/`, `intel/`, `drafts/` are sensitive; default is **on this machine only**.
