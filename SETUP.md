# Setup checklist

Copy a preset into a **working directory** (see [README](README.md)), then personalize.

## 1. Choose a preset

- **Light:** one agent, minimal files. Good for a single repetitive task.
- **Full:** multi-agent layout, intel handoff, shared context, heartbeat stub.
- **Hybrid-gitagent:** same team model as **full**, plus `agent.yaml`, `RULES.md`, `DUTIES.md`, `skills/`, `workflows/`, `hooks/`, `knowledge/`, `memory/runtime/`, and related stubs (see [`docs/HYBRID_GITAGENT.md`](docs/HYBRID_GITAGENT.md)).

Use `scripts/copy-preset.ps1` or copy `presets/<name>/workspace/` manually. Preset name: `light`, `full`, or `hybrid-gitagent`.

## 2. Find and replace (global)

In your copied workspace, replace placeholders:

| Placeholder | Replace with |
| ----------- | ------------ |
| `YOUR_NAME` | Your first name or handle |
| `YOUR_TIMEZONE` | e.g. `America/New_York` |
| `YOUR_LEAD_AGENT_NAME` | Name for the root lead agent |
| `research`, `content`, etc. | Your chosen agent slugs (folder names under `agents/`) |

Keep folder names **lowercase, hyphenated** for portability.

## 3. Fill `USER.md`

Timezone, preferences (e.g. punctuation, tone), dietary or scheduling constraints if relevant. Every agent should read this.

## 4. Write `SOUL.md` (one agent at a time)

- Under ~60 lines per [INVARIANTS](docs/INVARIANTS.md) guidance.
- Use a **TV or fiction character** only as shorthand for vibe; the model already knows the archetype.
- One primary job per agent.

## 5. Update the one-writer table

Open [docs/INVARIANTS.md](docs/INVARIANTS.md) in **your fork** of this repo (or a local copy) and set the real writer/reader map for your files.

## 6. Automation (optional)

OpenClaw, cron, Telegram, etc. are **not** required for the template. When you add them, document commands in `HEARTBEAT.md` (full preset) without committing secrets.
