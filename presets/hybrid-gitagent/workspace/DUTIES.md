# DUTIES.md — roles and segregation (lite)

Lightweight **segregation of duties**: who may **write** which files. Expand if you need maker/checker/auditor patterns from [gitagent](https://github.com/open-gitagent/gitagent).

| Role (conceptual) | Agent folder | May write |
| ----------------- | ------------ | --------- |
| Intel maker | `agents/research` | `intel/DAILY-INTEL.md`, `intel/data/*`, own `memory/*` |
| Short-form creator | `agents/content` | `drafts/TODAY-SHORTFORM.md`, own `memory/*` |
| Newsletter creator | `agents/newsletter` | `drafts/TODAY-NEWSLETTER.md`, own `memory/*` |
| Lead / ops | (root) | Root `MEMORY.md`, `HEARTBEAT.md` runbook updates, `memory/runtime/*` coordination notes |
| Human | — | `shared-context/THESIS.md`, `FEEDBACK-LOG.md`, `USER.md`, approvals |

**Conflicts (same agent must not do both):**

- **intel_maker** vs **publisher_checker** — the agent that writes raw intel should not be the sole approver of what ships publicly.
- **draft_creator** vs **publisher_checker** — treat “publish” as a human or separate approval step.

**Checker:** default is the **human** before anything ships externally.

## gitagent-style SOD (optional hardening)

If you later add `compliance.segregation_of_duties` to `agent.yaml`, mirror roles here and run `gitagent validate --compliance`. This template stays unregulated by default.
