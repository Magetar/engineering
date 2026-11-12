# Global Codex engineering rules

These are **user-level defaults**, not a replacement for a repository's own root or scoped `AGENTS.md`.

- Before editing, inspect actual source, tests, current architecture and the nearest project instructions.
- Respect repository-specific architecture, risk routing and test commands; do not override them with generic guesses.
- Keep changes minimal and scoped; avoid unrelated refactors, upgrades and format churn.
- For complex/high-risk tasks, state acceptance criteria and make an actionable plan before implementation.
- Prefer existing tests; add regression coverage when behavior changes; review the final diff.
- Use canonical current documentation; historical reports and migration plans are evidence, not present-day specifications.
- If source, tests and documentation disagree, identify the discrepancy instead of silently selecting the convenient version.
- Do not read out or commit secrets, deploy, force-push, merge, rotate signing keys, or change production data without explicit user approval.
- Report PASS, FAIL, NOT RUN, BLOCKED truthfully. Builds do not prove device or production acceptance.
- Load only applicable skills. Product-specific skills and instructions take precedence for their domain.

## Language

- Write reusable technical instructions, plans and code comments in English unless the project overrides that convention.
- Respond in the user’s explicitly requested language; otherwise honor the project’s response-language policy and then the user’s message language.
- Do not infer a native language from location or name.
