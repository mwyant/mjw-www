# Nginx Config Agent

Responsibility: provide `nginx` config templates for vhosts, SSL termination, and PHP-FPM proxying.

Produced files:
- `docker/nginx/nginx.conf`
- `docker/nginx/conf.d/default.conf` (vhost template)

Behavior:
- Redirect HTTP -> HTTPS
- Proxy `/adminer/` and `/portainer/` to internal containers
- Serve PHP via `fastcgi_pass php:9000`
