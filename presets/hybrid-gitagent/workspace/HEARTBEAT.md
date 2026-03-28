# HEARTBEAT.md

Run when this session is a **health check** (after you have schedulers or browsers in the loop).

## Checks (template)

1. Last successful run of each scheduled job within expected window
2. Upstream dependencies for `research` still valid
3. `intel/DAILY-INTEL.md` freshness when downstream drafts depend on it

Document real commands in this file once stable. **No secrets** in committed text.

## OpenClaw / other runners

Optional; see [gitagent adapters list](https://github.com/open-gitagent/gitagent#adapters) if you export this workspace to another tool.
