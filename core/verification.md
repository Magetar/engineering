# Verification and evidence

- Pick checks by impact, affected platform and project-specific risk policy, not by changed-line count.
- Separate static checks, unit/integration tests, browser E2E, native build, real-device testing, staging verification and production acceptance.
- Use project-native scripts and CI as authoritative; never replace real checks with invented smoke tests.
- An unavailable environment means NOT RUN/BLOCKED, not PASS.
- Include failing commands and observed error in review results; do not weaken tests to make output green.
- High-risk security/auth/media lifecycle changes require negative tests, rollback thinking, and independent review when available.
