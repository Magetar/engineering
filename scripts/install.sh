#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
SKILL_HOME="$HOME/.agents/skills"
mkdir -p "$CODEX_HOME" "$SKILL_HOME"

link_safely() {
  local src="$1" dest="$2"
  if [[ -L "$dest" && "$(readlink "$dest")" == "$src" ]]; then
    printf 'OK: %s already points to framework\n' "$dest"
    return 0
  fi
  if [[ -e "$dest" || -L "$dest" ]]; then
    printf 'SKIP: %s already exists; manually review/merge (no overwrite)\n' "$dest"
    return 0
  fi
  ln -s "$src" "$dest"
  printf 'LINK: %s -> %s\n' "$dest" "$src"
}

link_safely "$ROOT/adapters/codex/AGENTS.md" "$CODEX_HOME/AGENTS.md"
for skill in "$ROOT"/skills/*; do
  [[ -d "$skill" && -f "$skill/SKILL.md" ]] || continue
  name="$(basename "$skill")"
  link_safely "$skill" "$SKILL_HOME/$name"
done
printf '\nCodex global settings example: %s\n' "$ROOT/adapters/codex/config.toml.example"
printf 'No config.toml, credentials, or project files were changed.\n'
