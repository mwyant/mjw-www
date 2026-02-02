# CI Agent

Purpose: scaffold and maintain CI pipeline templates, run builds and single-test jobs, and surface failing jobs for maintainers.

Commands / tools:
- Create GitHub Actions: add `.github/workflows/ci.yml` with build/test jobs
- Example single-test job: `pytest path/to/test_file.py::test_name -q` or `npm test -- -t "pattern"`

Typical tasks:
- Add pipeline templates (build, lint, test matrix)
- Add a `single-test` job for quick verification of fixes
- Configure caching for dependencies and artifacts
- Document how to reproduce CI failures locally

When to escalate:
- If flaky CI jobs persist or require infra changes, open an issue for maintainers.
