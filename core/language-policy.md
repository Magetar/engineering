# Language policy

## Defaults

- **Engineering artifacts:** English for durable instructions, reusable skills, technical specifications, comments, plans and review findings unless a project explicitly states otherwise.
- **User-facing communication:** respond in the user’s explicitly requested language. Otherwise follow the project’s response-language policy; if it says `auto`, follow the language of the user’s most recent meaningful message. If unspecified, use a known user preference, then message language, then English.
- Do not infer a user’s native language from name, geography, profile or repository.
- Preserve existing product translations, UI copy, legal text and localized terminology. Never mass-translate historical evidence.
- Do not translate paths, API identifiers, commands, schema keys, or exact logs.

## Project overrides

A project may specify a `Language policy` section in its root `AGENTS.md` using this compact convention:

```text
Response language: auto | en | tr | de | ...
Engineering documentation: en | project-established-language
```

This convention is **Magetar documentation**, not a built-in Codex/Claude/Gemini config parser. Native adapters must communicate it in instructions. An explicit user request for a response language overrides the project’s response default, but not documentation conventions or safety rules.
