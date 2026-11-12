# Engineering policy

## Change discipline

- Understand the task, repository and current behavior before editing.
- Search callers, tests, contracts and scoped repository instructions; do not infer behavior from filenames.
- Prefer minimal, testable changes; avoid unrelated refactors and dependency upgrades.
- Preserve existing APIs, security boundaries, data migrations and platform contracts unless explicitly asked to change them.
- Write a brief plan for high-risk or multi-area work; record assumptions and acceptance criteria.
- Before completion inspect the actual diff and investigate unexpected changes.

## Explicit safety boundaries

- Never expose secrets or silently access production resources.
- Do not automatically merge, deploy, force-push, rotate keys, or alter real data.
- Treat project-specific instructions and current source/tests as required context; identify conflicts rather than silently guessing.
- Delegate to specialist skills only when the task actually benefits; avoid duplicative prompts.

## Completion format

Report changed files, behavior, checks with PASS/FAIL/NOT RUN/BLOCKED, limitations, risks and any required manual/device validation. Never describe a test as passing unless it was run successfully.
