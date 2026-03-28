# config/

- `default.yaml` — baseline flags (shipped with the preset).
- Add e.g. `production.yaml` and merge per [gitagent config](https://github.com/open-gitagent/gitagent/blob/main/spec/SPECIFICATION.md) when you need env splits.
- Optional: `local.yaml` for machine-specific overrides (gitignore if needed).

Do **not** commit API keys. Use `.env` at workspace root.
