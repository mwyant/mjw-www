Purpose: concise guidelines for agentic coding agents operating in this repo.

Build / Install:
- `docker-compose build` or `docker build -t mjw-www .`
Run locally:
- `docker-compose up --build` (or `docker-compose up -d` for detached)

Lint / Format:
- No repo-wide linter detected; use configured tools if present (`prettier`, `eslint`, `black`, `rustfmt`, `gofmt`).
- Auto-fix: `prettier --write .` / `eslint --fix .` / `black .`

Tests:
- No test framework detected in repo; use framework-specific commands when applicable:
  - Pytest: `pytest path/to/test_file.py::test_name -q`
  - Jest: `npm test -- -t "<name or pattern>"`
  - Rust: `cargo test <test_name>`
  - Go: `go test ./... -run TestName`
- Prefer adding top-level scripts or a `Makefile` for repeatable commands.

Code style & conventions:
- Imports: group std -> third-party -> internal; prefer absolute imports when configured.
- Formatting: obey project formatter configs (`.prettierrc`, `pyproject.toml`, `.editorconfig`).
- Types: prefer explicit types (TS `strict`, Python type hints / `mypy`) when present.
- Naming: `camelCase` for JS/TS vars/functions, `PascalCase` for classes/components, `snake_case` for Python, kebab-case for filenames.
- Error handling: avoid silent catches; add context, log, and rethrow or propagate errors.
- Logging: use structured loggers (include request/context IDs when available) instead of prints.
- Tests: write deterministic unit tests; mock I/O & network; use fixtures for setup/teardown.

Agents & rules:
- See `./agents/*.md` for agent roles; keep agent changes focused and add tests for bug fixes.
- Sensitive data: never commit secrets — use `.env` and `env.template`.
- Cursor / Copilot rules: none found in `.cursor/` or `.github/copilot-instructions.md`.

When unsure: open an issue or ask maintainers; include config file references and rationale for nontrivial changes.
