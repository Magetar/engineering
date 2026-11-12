---
name: magetar-bugfix-regression
description: Reproduce a defect, identify the smallest root cause, add meaningful regression coverage, and verify without weakening existing checks.
---

# Bugfix and regression

1. Capture the observed behavior, expected behavior, environment and relevant platform.
2. Trace the production path and any current project-specific restrictions.
3. Reproduce with the smallest reliable test or fixture; if impossible, record why.
4. Fix the root cause without broad refactoring or unrelated dependency changes.
5. Verify affected behavior and run risk-appropriate project checks.
6. Inspect final diff and ensure documentation remains correct.
7. Report PASS/FAIL/NOT RUN/BLOCKED and manual acceptance gaps.
