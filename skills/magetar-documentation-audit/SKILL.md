---
name: magetar-documentation-audit
description: Audit repository documentation for canonical ownership, staleness, broken paths and agent reference quality; propose safe, reviewable fixes.
---

# Documentation audit

## When to use

A repository's Markdown references may be stale, duplicated, or inconsistent with its current source tree.

## Procedure

1. Identify the actual branch, directory tree, and repository-specific instructions.
2. Inventory documents by domain and status; find canonical and historical entries.
3. Validate Markdown links and literal code paths against the actual tree.
4. Compare documented commands with package scripts, workflows and deployment entry points.
5. Separate confirmed errors from suspected divergence needing runtime verification.
6. Propose minimal corrections, preserved redirects and a central index; do not delete audit history.
7. Run project-specific documentation and code validation commands, if available.

## Output

An evidence-oriented table: path, finding, severity, canonical replacement, and verification status. Clearly label checks NOT RUN.
