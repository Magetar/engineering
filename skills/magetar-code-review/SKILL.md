---
name: magetar-code-review
description: Independently examine a change for concrete correctness, security, lifecycle and regression risks using current project requirements and diff evidence.
---

# Focused code review

- Read actual diff plus relevant surrounding code and project rules; do not rely on a summary alone.
- Prioritize actionable defects: security, incorrect behavior, races, contract mismatches, native lifecycle and missed regressions.
- For every finding, supply a file/line reference, scenario, expected outcome and severity.
- Avoid subjective style nitpicks unless they affect maintainability or established policies.
- Assess documentation accuracy and test evidence; don't claim independence if reviewing your own implementation in the same context.
- If there are no confirmed issues, explicitly state validation gaps.
