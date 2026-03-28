# Changelog

## Unreleased

- Hybrid preset aligned with [gitagent](https://github.com/open-gitagent/gitagent) validation: `agent.yaml` (`agents` map, quoted semver, `tools: []`), `memory/MEMORY.md` + `memory.yaml`, `hooks/hooks.yaml`, `knowledge/index.yaml`, workflow YAML (`name` + `steps` array), `config/default.yaml`, split `examples/good-outputs.md` + `bad-outputs.md`, workspace `README.md`. `gitagent validate` passes from preset root.
- Repo `.gitattributes` forces LF for `**/SKILL.md` so Windows checkouts do not break skill parsing.
- `presets/README.md` and root `CHANGELOG.md` added.

## Earlier

- Initial `light` and `full` presets, docs, optional Agno extension note.
- `hybrid-gitagent` preset first added (markdown + gitagent-inspired layout).
