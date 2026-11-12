# Magetar Engineering

**Portable Core + Native Adapters** — a small, versioned, public source of truth for reusable engineering practices, presently optimized for Codex. It is not a standalone coding agent or a replacement for project-specific instructions.

## Principles

1. **Product repositories own product truth.** Application repositories retain architecture, scoped `AGENTS.md`, build commands, tests, risks, secrets policy, and domain-specific skills. Never copy those details into global rules.
2. **Portable core.** General engineering, documentation and verification policies are tool-agnostic.
3. **Multilingual users.** Engineering artifacts default to English; user responses follow explicit language, project overrides, or message language. See [language policy](core/language-policy.md).
4. **Native adapters.** Codex-specific instructions/configuration live separately. Claude/Gemini/OpenCode adapters are added only after verification and testing, not pre-declared as working.
5. **Progressive disclosure.** A short global `AGENTS.md`; task-relevant `SKILL.md` loaded on demand. Do not load all skills for every task.
6. **Evidence over confidence.** Results must distinguish PASS, FAIL, NOT RUN, and BLOCKED. Builds do not prove physical-device or production readiness.
7. **Opt-in integrations.** Do not install third-party skills or hooks automatically. Inspect their source, license, and versions first.

## Layout

- `core/` — stable, model-independent engineering, language, security and documentation policies.
- `adapters/codex/` — user-level Codex adapter. Never commit real local configuration, API keys or credentials.
- `skills/` — small portable Agent Skills written with standard `SKILL.md` frontmatter.
- `templates/` — examples for project-owned documentation; do not automatically overwrite existing files.
- `scripts/` — non-destructive installers and source validation.
- `evals/` — manual acceptance scenarios; no automated eval harness claimed yet.

## First-time setup (macOS/Linux)

```sh
git clone git@github.com:Magetar/engineering.git ~/magetar-engineering
cd ~/magetar-engineering
bash scripts/install.sh
node scripts/validate.mjs
```

Windows PowerShell:

```powershell
git clone git@github.com:Magetar/engineering.git "$HOME/magetar-engineering"
Set-Location "$HOME/magetar-engineering"
.\scripts\install.ps1
node .\scripts\validate.mjs
```

Installation will **not overwrite** an existing `~/.codex/AGENTS.md`, any pre-existing skills, or `~/.codex/config.toml`. Review and reconcile existing configurations manually. On Windows it tries symlinks; if denied, it copies files instead (rerun after updates).

To inspect the suggested Codex settings, see `adapters/codex/config.toml.example`. Copy or merge manually; **do not** sync any authentication/session file.

## Updating

```sh
cd ~/magetar-engineering && git pull --ff-only
```

On symlink-based installations the tracked source changes take effect for newly started Codex sessions; copied installations need the installer rerun. Pin a known good Git revision or release tag for reproducible multi-machine setups.

## What remains in each application repository

- Root and scoped `AGENTS.md` rules, domain-specific skills, `docs/INDEX.md`, architecture/contracts, operation runbooks, actual tests and CI.
- Never assume the user's global home directory exists in Codex cloud or CI. Each product repository must remain independently understandable.
- Existing project-specific risk routing and verification remain authoritative and must not be replaced by this framework.

## Safety

- This is a **public** repository. Never commit secrets or confidential product details.
- Keep `.env`, credentials, service accounts, signing keys, auth/session state and production data outside this repository.
- Review and pin third-party skills before importing or installing them. No automatic deploy, merge, force-push or production database mutation.

## Next steps

1. The public `Magetar/engineering` repository is the distribution source.
2. Publish this starter on a protected default branch.
3. Run on a non-critical local project first and inspect loaded Codex instructions.
4. Add project-specific documentation changes through separate pull requests on each project’s active branch.
