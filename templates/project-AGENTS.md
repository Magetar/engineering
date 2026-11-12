# Project engineering instructions (template)

> Copy only for a project that does not already have suitable root instructions. For existing projects, review and merge manually.

- Product and high-level architecture: see `docs/INDEX.md`.
- Define actual module ownership and forbidden cross-boundary imports here.
- Define security invariants and destructive operations requiring approval.
- Point to existing lint/test/build scripts by verified name.
- List platform-specific behavior and acceptance requirements.
- Clarify when an implementation plan and independent review are required.
- Load only task-relevant skills; don't duplicate the full architecture in this file.

## Definition of done

- Focused changes, relevant checks, documented evidence, and canonical docs updated when needed.
- Distinguish PASS, FAIL, NOT RUN, and BLOCKED.

## Language policy (optional project override)

- Response language: auto
- Engineering documentation: en
- An explicit request to respond in a language takes precedence over the default response language.
