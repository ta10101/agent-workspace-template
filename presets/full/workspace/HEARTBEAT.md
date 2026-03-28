# HEARTBEAT.md

Run only when this session is designated as a **heartbeat** check (e.g. after you have cron or browser automation).

## Purpose

Catch silent failures: jobs that claim they ran but did not, or dependencies (browser, API) that died.

## Health checks (template)

Adapt commands to your stack. **Do not** commit secrets here.

1. **Automation process** — Is your scheduler / runner alive? (e.g. last successful run within expected window)
2. **Upstream dependencies** — Anything `research` needs (browser profile, API quota) still valid?
3. **Handoff freshness** — Is `intel/DAILY-INTEL.md` updated when it should be? If stale, alert human or re-trigger research per your playbook

## Optional: OpenClaw / schedulers

If you use OpenClaw, cron, or another runner, paste the **exact** CLI or dashboard steps here once stable. This template does not bundle those tools. (Related example: [openclaw-vertexai-memorybank](https://github.com/Shubhamsaboo/openclaw-vertexai-memorybank) on GitHub.)

## Cadence

Run at most **once** per heartbeat session; avoid tight loops.
