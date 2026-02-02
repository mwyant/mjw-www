# PHP-FPM Agent

Responsibility: prepare PHP runtime with required extensions and recommended `php.ini`.

Files:
- `docker/php/Dockerfile` (optional custom image)
- `docker/php/php.ini`

Notes:
- Uses `php:8.3-fpm` as base; the Dockerfile installs common extensions and Composer.
- For local development the official `php:8.3-fpm` image can be used directly.
