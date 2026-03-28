# Agent workspace template

Independent template for running **multiple AI agents** coordinated by **markdown files on disk** (no message bus, no database at this layer). Same idea as public write-ups on file-based identity, operations, and memory: agents improve because **the files get richer**, not because you constantly swap models.

Inspired by concepts shared by [Shubham Saboo](https://www.linkedin.com/in/shubhamsaboo) and similar posts on autonomous agent teams. This repository is **not** affiliated; names and examples are generic placeholders.

## Editions

| Edition | Location | What you get |
| ------- | -------- | ------------ |
| **Light** | [`presets/light/workspace`](presets/light/workspace) | Root playbooks, one example agent, `shared-context/` stubs |
| **Full** | [`presets/full/workspace`](presets/full/workspace) | Lead at root, `research` → `intel/`, `content` + `newsletter` → `drafts/`, `HEARTBEAT.md`, specialist guides |

Same **invariants** for both; full adds files and roles. See [`docs/INVARIANTS.md`](docs/INVARIANTS.md).

## Quick start

1. Copy a preset into a working folder (your real workspace should usually **not** be this git repo if you will fill it with private logs):

   **PowerShell (Windows)**

   ```powershell
   cd path\to\agent-workspace-template
   .\scripts\copy-preset.ps1 -Preset full -Destination path\to\my-agent-workspace
   ```

   **Bash**

   ```bash
   ./scripts/copy-preset.sh full ~/my-agent-workspace
   ```

2. Follow [`SETUP.md`](SETUP.md) to replace placeholders and customize `USER.md`.

3. Initialize git **inside your copy** if you want versioned memory (optional):

   ```bash
   cd ~/my-agent-workspace && git init
   ```

## Phased rollout (suggested)

Roughly aligned with the “talk to your agents daily” approach:

- **Today** — Copy **light**, one `SOUL.md`, `USER.md`, one daily job or manual habit.
- **After a few days** — Put recurring corrections into daily logs, not only chat.
- **After ~1 week** — Harden root `AGENTS.md` (read order, memory rules).
- **After ~2 weeks** — Start root or per-agent `MEMORY.md`; distill repeated fixes.
- **After ~3 weeks** — Add a second agent and a **single-writer** handoff file (see `full` preset).
- **When corrections repeat across agents** — Use `shared-context/FEEDBACK-LOG.md` and `THESIS.md`.
- **After your first real automation failure** — Fill `HEARTBEAT.md` with checks you actually need.

## GitHub releases

You can tag the **template repo** (e.g. `v1.0.0`) and attach zip exports of `presets/light/workspace` and `presets/full/workspace` if you want two downloadables without maintaining two branches.

## Optional: Agno coding pipeline

See [`extensions/agno-coding/README.md`](extensions/agno-coding/README.md). Keep Python or other frameworks **out of** the markdown workspace layer.

## Privacy

This repository is **generic placeholders only**. Your real workspace (after you copy a preset) will gain `USER.md`, `MEMORY.md`, logs, and drafts that can be sensitive. **Do not push that working copy to a public repo.** If you need off-machine backup, use **private** storage you trust; many people keep a filled workspace **on one PC only** and avoid syncing `memory/`, `intel/`, and `drafts/` to public clouds or shared folders.

## License

MIT — see [`LICENSE`](LICENSE).
