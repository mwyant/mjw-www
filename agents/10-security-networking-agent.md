# Security & Networking Agent

Responsibility: ensure services run on a private Docker network and only `nginx` publishes external ports.

Recommendations:
- Use `.env` for secrets during development; for production use Docker Secrets or Vault.
- On Debian host, restrict firewall to allow only 80 and 443 (ufw/iptables).
- Ensure file ownership and permissions for `/docker-mount/clia-web/*` are correct (match container uid/gid).
