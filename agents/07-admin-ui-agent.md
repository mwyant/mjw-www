# Admin UI Agent

Responsibility: provide database admin UI behind the proxy.

Choice: `Adminer` (lightweight) is included by default.

Access:
- The `adminer` service is on the private network and proxied by `nginx` at `/adminer/`.
- For added security enable basic-auth on the proxy or restrict by IP.
