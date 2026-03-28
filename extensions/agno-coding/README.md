# Optional: Agno coding team (Track B)

This folder is **intentionally separate** from the markdown workspace in `presets/`. The filesystem agent OS uses **no** orchestration framework at its core; Agno is only for people who want a **Python multi-agent coding pipeline** (vision → code → execute, sandbox, API) in parallel.

## References

- [Agno](https://github.com/agno-agi/agno) — agent runtime and cookbook
- [Agno docs](https://docs.agno.com)

## Suggested layout (you implement)

- `pyproject.toml` with optional extras `light` / `full`
- `src/` package defining stable roles (`VISION`, `CODE`, `EXECUTE`) and config-driven display names
- Keep API keys in `.env` (never commit)

Nothing here is required to use the markdown presets.
