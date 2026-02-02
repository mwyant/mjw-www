# Compose Generator Agent

Responsibility: author `docker-compose.yml` and define volumes, networks, and services.

Notes:
- Uses absolute host mounts under `/docker-mount/clia-web/`.
- Publishes only ports `80` and `443` on the `nginx` service.
- Internal services (db, php, adminer, portainer, cadvisor) remain on a private network.
