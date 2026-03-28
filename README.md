# Agent workspace template

[![Release](https://img.shields.io/github/v/release/ta10101/agent-workspace-template?label=release)](https://github.com/ta10101/agent-workspace-template/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Independent template for running **multiple AI agents** coordinated by **markdown files on disk** (no message bus, no database at this layer). Same idea as public write-ups on file-based identity, operations, and memory: agents improve because **the files get richer**, not because you constantly swap models.

Inspired by concepts shared by [Shubham Saboo](https://www.linkedin.com/in/shubhamsaboo) and similar posts on autonomous agent teams. This repository is **not** affiliated; names and examples are generic placeholders.

## Editions

| Edition | Location | What you get |
| ------- | -------- | ------------ |
| **Light** | [`presets/light/workspace`](presets/light/workspace) | Root playbooks, one example agent, `shared-context/` stubs |
| **Full** | [`presets/full/workspace`](presets/full/workspace) | Lead at root, `research` → `intel/`, `content` + `newsletter` → `drafts/`, `HEARTBEAT.md`, specialist guides |
| **Hybrid + gitagent** | [`presets/hybrid-gitagent/workspace`](presets/hybrid-gitagent/workspace) | Everything in **full**, plus [gitagent](https://github.com/open-gitagent/gitagent)-style `agent.yaml`, `RULES.md`, `DUTIES.md`, `skills/`, `workflows/`, `hooks/`, `knowledge/`, `memory/runtime/`, `tools/`, `config/`, `examples/` |

Same **invariants**; larger editions add structure, not different rules. See [`docs/INVARIANTS.md`](docs/INVARIANTS.md) and [`docs/HYBRID_GITAGENT.md`](docs/HYBRID_GITAGENT.md).

## Install and use

There is **no package to `npm install`** for the markdown presets themselves. You copy files onto disk, then point your **coding agent or chat tool** at that folder and follow the playbooks in `AGENTS.md`.

### 1. Get the template

Pick one:

- **Git clone** (keeps `scripts/` and all presets handy):

  ```bash
  git clone https://github.com/ta10101/agent-workspace-template.git
  cd agent-workspace-template
  ```

- **Download zip** from the [releases page](https://github.com/ta10101/agent-workspace-template/releases), unzip, and use the `presets/<edition>/workspace` folder inside (or run scripts from the unzipped repo root).

### 2. Create your real workspace (copy a preset)

Your **working copy** should live outside this template repo if you will add private `memory/`, `intel/`, and `drafts/` (see [Privacy](#privacy)).

**PowerShell (Windows)**

```powershell
cd path\to\agent-workspace-template
.\scripts\copy-preset.ps1 -Preset full -Destination path\to\my-agent-workspace
```

**macOS / Linux**

```bash
cd agent-workspace-template
chmod +x scripts/copy-preset.sh
./scripts/copy-preset.sh full ~/my-agent-workspace
```

`Preset` / first argument: `light`, `full`, or `hybrid-gitagent`.

**Manual:** copy everything under `presets/<edition>/workspace/` into an empty folder.

### 3. Personalize

Follow **[SETUP.md](SETUP.md)** (placeholders, `USER.md`, `SOUL.md`, one-writer table). Optional: `git init` inside `my-agent-workspace` so memory and prompts are versioned.

### 4. Use it with an AI assistant

1. **Open the copied folder** in [Cursor](https://cursor.com), VS Code, or any tool that can read project files.
2. **Start a chat** and instruct the model to follow the workspace rules, for example:
   - *“Read root `AGENTS.md` and `USER.md`, then act as the agent described in `agents/research/SOUL.md` for this task.”*
3. **Operate in passes** if you use multiple roles: run a session for `research` (it updates `intel/DAILY-INTEL.md`), then a session for `content` (it reads intel and writes `drafts/`). The **filesystem** is the handoff; nothing runs unless you or a scheduler start a session.
4. Optional: add **`.cursor/rules`** in your copy (or per-agent instructions) so every chat automatically loads the right read order.

**Hybrid preset:** install [gitagent](https://github.com/open-gitagent/gitagent) only if you want `gitagent validate`, `gitagent export --format system-prompt`, etc. See [`extensions/gitagent/README.md`](extensions/gitagent/README.md).

### 5. Optional automation

Cron, OpenClaw-style runners, or Telegram bots can **trigger** the same flows by opening a session or running a CLI; the template does not ship a daemon. Document commands in `HEARTBEAT.md` when you add them.

## Quick start (short)

1. Clone or download this repo.
2. Copy a preset into `my-agent-workspace` (script or manual).
3. Complete [SETUP.md](SETUP.md).
4. Open `my-agent-workspace` in your editor and chat with an AI using `AGENTS.md` + the right `SOUL.md`.

Details above apply to step 2–4.

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

Stable tag: **[v1.1.0](https://github.com/ta10101/agent-workspace-template/releases/tag/v1.1.0)**. You can also attach zip exports of `presets/light/workspace`, `presets/full/workspace`, and `presets/hybrid-gitagent/workspace` to a release for one-click downloads.

## Optional: gitagent CLI

See [`extensions/gitagent/README.md`](extensions/gitagent/README.md) for validating or exporting a copied **hybrid-gitagent** workspace with the upstream tool.

## Optional: Agno coding pipeline

See [`extensions/agno-coding/README.md`](extensions/agno-coding/README.md). Keep Python or other frameworks **out of** the markdown workspace layer.

## Privacy

This repository is **generic placeholders only**. Your real workspace (after you copy a preset) will gain `USER.md`, `MEMORY.md`, logs, and drafts that can be sensitive. **Do not push that working copy to a public repo.** If you need off-machine backup, use **private** storage you trust; many people keep a filled workspace **on one PC only** and avoid syncing `memory/`, `intel/`, and `drafts/` to public clouds or shared folders.

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md). [`CHANGELOG.md`](CHANGELOG.md) tracks notable template changes.

## License

MIT — see [`LICENSE`](LICENSE).
