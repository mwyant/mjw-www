# Monitoring & Management Agent

Responsibility: add container management and light-weight monitoring.

Included:
- `Portainer` (management UI) proxied via `nginx` at `/portainer/` (no external ports open)
- `cAdvisor` for container metrics
- `Watchtower` for optional auto-updates (opt-in)

Notes:
- For full metrics and dashboards, add Prometheus + Grafana later.
