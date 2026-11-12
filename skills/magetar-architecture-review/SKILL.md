---
name: magetar-architecture-review
description: Review a proposed or existing code change against repository boundaries, contracts, lifecycle ownership and test evidence.
---

# Architecture review

## When to use

Changes cross package boundaries, alter runtime ownership or affect public contracts, persistence or native lifecycle.

## Procedure

1. Read the repository's current architecture documentation and scoped instructions.
2. Build a small change-impact map: producers, consumers, data, lifecycle and rollback.
3. Check that authority, permissions, source-of-truth boundaries and invariants remain intact.
4. Inspect relevant tests, error paths and race/concurrency scenarios; never infer safety from types alone.
5. Propose the smallest safe design; request explicit approval for destructive production actions.
6. Report findings with file paths, observable evidence, severity and confidence.

## Output

Findings first, then open questions, necessary tests and a short recommendation. Mark unstaged/physical tests NOT RUN, not PASS.
