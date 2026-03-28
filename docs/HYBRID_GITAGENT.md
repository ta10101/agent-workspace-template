# Hybrid preset: markdown workspace + [gitagent](https://github.com/open-gitagent/gitagent) ideas

This template is **not** the official gitagent spec. It **takes inspiration** from [open-gitagent/gitagent](https://github.com/open-gitagent/gitagent): git-native layout, manifests, hard rules, optional segregation of duties, skills, workflows, hooks, and structured runtime memory.

Use [`presets/hybrid-gitagent/workspace`](../presets/hybrid-gitagent/workspace) when you want:

- The **file-handoff team** model from our `full` preset (`intel/`, `drafts/`, `shared-context/`)
- Plus **portable identity** via `agent.yaml` + `SOUL.md` per agent (easy to validate or export with `gitagent` CLI if you install it)
- **`RULES.md`** for non-negotiables and **`DUTIES.md`** for who may write what (aligns with one-writer table in [`INVARIANTS.md`](INVARIANTS.md))
- **`skills/`**, **`workflows/`**, **`hooks/`**, **`knowledge/`** as optional structure

## File mapping (approximate)

| This hybrid preset | gitagent concept | Our markdown OS |
| ------------------ | ---------------- | ---------------- |
| `agent.yaml` | Manifest | Name, version, description (per agent + root) |
| `SOUL.md` | Identity | Same |
| `RULES.md` | Hard constraints | Extends root safety + style bans |
| `DUTIES.md` | Segregation of duties | Encodes one-writer / roles |
| `AGENTS.md` | Framework fallback | Session read order |
| `memory/runtime/*` | Live cross-session state | Complements dated `memory/YYYY-MM-DD.md` |
| `workflows/*.yaml` | SkillsFlow-style playbooks | Documents step order (not executed by this repo) |
| `skills/*/SKILL.md` | Capability modules | Procedure libraries |
| `hooks/*.md` | Lifecycle | Bootstrap / teardown checklists |
| `knowledge/` | Reference tree | Long-lived facts, specs, glossaries |

## Optional: gitagent CLI

If you install `@open-gitagent/gitagent`, you can try `gitagent validate` on a copy of this workspace. Schema drift may require small edits; treat validation as advisory until you pin a spec version.

## Privacy

Same as the rest of this repo: **filled** `memory/`, `intel/`, and `drafts/` stay **local** or **private**; do not push real content to public remotes.
