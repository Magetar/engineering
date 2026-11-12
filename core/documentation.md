# Documentation policy

## Authority tiers

- **Canonical:** current contracts, architecture, security and runbooks, each with a named responsibility.
- **Operational:** current commands and playbooks; verify destructive potential and environment.
- **Historical:** past audits, migration reports, former decisions and snapshots. Keep for evidence, never infer today's state.
- **Draft/Proposed:** candidate designs not yet implemented.
- **Superseded:** replaced by a newer canonical document; include the replacement link.

## Rules

1. Start from the product repository's `docs/INDEX.md` and nearest `AGENTS.md`.
2. Each technical concept should have one canonical source; prefer links to copying descriptions.
3. Validate filenames, links, example commands and claims against current source before modifying them.
4. Historical audit reports must preserve original outcomes and dates; add contextual status notes, never rewrite recorded test evidence.
5. Separate current implementation, plan, and acceptance evidence; a roadmap is not proof of functionality.
6. Changes to external behavior, contracts, deployment or architecture require corresponding canonical documentation updates.
7. Agent-related references must resolve to actual repository paths; check code-formatted paths too, not only Markdown links.
8. Documentation changes should be small and separately reviewable; do not bulk delete or relocate while the code may still link to old paths.

Suggested product document metadata (optional): `status`, `domain`, `owner`, `last_verified`, `applies_to`. Treat `last_verified` as a **human-verified** date, never as an auto-updated timestamp.
