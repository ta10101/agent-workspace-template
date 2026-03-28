# config/

Environment-specific overrides (model names, feature flags). Use separate files per env if needed:

- `local.example.yaml` — copy to `local.yaml` and gitignore the real one if it holds non-secrets you still do not want public

Do **not** commit API keys. Use `.env` at workspace root.
