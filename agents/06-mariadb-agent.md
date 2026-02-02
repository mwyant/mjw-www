# MariaDB Agent

Responsibility: configure MariaDB 10.6+ service and init scripts.

Files:
- `docker/mysql/init/` - init scripts executed on first startup

Notes:
- Data volume is mapped to `/docker-mount/clia-web/mysql` on the host.
- Use strong passwords in `.env` or consider Docker secrets for production.
