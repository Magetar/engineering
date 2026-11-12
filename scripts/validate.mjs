#!/usr/bin/env node
import { existsSync, readFileSync, readdirSync, statSync } from 'node:fs';
import { resolve, dirname, extname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const failures = [];
const required = [
  'README.md', 'VERSION', 'core/engineering.md', 'core/documentation.md',
  'core/verification.md', 'adapters/codex/AGENTS.md',
  'adapters/codex/config.toml.example', 'templates/project-AGENTS.md',
  'templates/docs-INDEX.md'
];
for (const path of required) if (!existsSync(resolve(root, path))) failures.push(`MISSING ${path}`);
function walk(dir) {
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    if (entry.name === '.git' || entry.name === 'node_modules') continue;
    const path = resolve(dir, entry.name);
    if (entry.isDirectory()) { walk(path); continue; }
    if (!entry.isFile() || extname(entry.name).toLowerCase() !== '.md') continue;
    const contents = readFileSync(path, 'utf8');
    if (entry.name === 'SKILL.md') {
      if (!/^---\nname: [^\n]+\ndescription: [^\n]+\n---\n/.test(contents)) failures.push(`INVALID SKILL HEADER ${path}`);
    }
    for (const [, link] of contents.matchAll(/!?(?:\[[^\]]*\])\(([^)]+)\)/g)) {
      const pathname = link.split('#')[0].split('?')[0].trim().replace(/^<|>$/g, '');
      if (!pathname || /^(?:[a-z]+:|\/|#)/i.test(pathname)) continue;
      if (!existsSync(resolve(dirname(path), decodeURIComponent(pathname)))) failures.push(`BROKEN LINK ${path}: ${link}`);
    }
  }
}
walk(root);
for (const failure of failures) console.error(`FAIL ${failure}`);
if (failures.length) process.exitCode = 1;
else console.log('PASS: required files, Agent Skills headers, and relative Markdown links');
