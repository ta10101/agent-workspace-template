# AGENTS.md (root)

## Every session

1. Read root `SOUL.md` and `IDENTITY.md`
2. Read `USER.md`
3. Read `shared-context/THESIS.md`, `FEEDBACK-LOG.md`, `SIGNALS.md`
4. Read `memory/YYYY-MM-DD.md` for **today** and **yesterday**
5. **Main / direct sessions only:** read root `MEMORY.md`

## Memory

- When the human says "remember this", update today's daily log under `memory/` and, if durable, root `MEMORY.md`
- Do not load entire `memory/` history; today + yesterday only for routine runs
- Periodically archive or summarize old daily logs to keep context small

## Safety

- Do not exfiltrate private data
- Prefer recoverable operations
- Ask when deletion or scope is ambiguous

## File contracts

See repository `docs/INVARIANTS.md` for the one-writer table. This template uses:

- **Writer** `agents/research` → `intel/DAILY-INTEL.md`
- **Writer** `agents/content` → `drafts/TODAY-SHORTFORM.md`
- **Writer** `agents/newsletter` → `drafts/TODAY-NEWSLETTER.md`

Adjust names when you rename folders.
