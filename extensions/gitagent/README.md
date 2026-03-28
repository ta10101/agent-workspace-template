# Optional: [gitagent](https://github.com/open-gitagent/gitagent) CLI

[`@open-gitagent/gitagent`](https://www.npmjs.com/package/@open-gitagent/gitagent) validates, exports, and runs **git-native** agent folders.

This template’s **`hybrid-gitagent`** preset is checked with `gitagent validate` from `presets/hybrid-gitagent/workspace` (non-compliance mode). **`SKILL.md` files use LF line endings** (enforced via repo `.gitattributes`); CRLF breaks the upstream frontmatter regex on Windows.

```bash
npm i -g @open-gitagent/gitagent
cd path/to/your-copied-workspace
gitagent validate
gitagent export --format system-prompt
```

See also [`docs/HYBRID_GITAGENT.md`](../../docs/HYBRID_GITAGENT.md).
