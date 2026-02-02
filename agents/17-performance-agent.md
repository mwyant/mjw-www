# Performance & Asset Optimization Agent

Purpose: analyze large assets (images/video), recommend compression/caching, and provide Lighthouse-style optimizations.

Commands / tools:
- Image checks: `du -sh images/`, `imageoptim`/`jpegoptim`/`cwebp`
- Video checks: verify codecs and sizes; suggest `ffmpeg` compression commands

Typical tasks:
- Identify largest static assets and propose compressed alternatives
- Recommend `Cache-Control` headers and CDN usage
- Suggest responsive images and `object-fit` rules for video backgrounds

When to escalate:
- When performance changes require infra (CDN) or major asset re-generation.
