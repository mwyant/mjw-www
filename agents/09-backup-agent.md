# Backup & Restore Agent

Responsibility: DB dumps and backup retention guide.

Plan:
- Backups stored on host at `/docker-mount/clia-web/backups`.
- Create a cron container or host cron that runs `mysqldump` and rotates files.
- Retention and encryption handled by user policy.
