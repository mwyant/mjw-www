# Project Planner Agent

Responsibility: coordinate workflow, confirm high-level decisions, and provide acceptance criteria for the stack.

Inputs:
- User choices: nginx vs Traefik, domain names for TLS, backup retention.

Outputs:
- Finalized plan and checklist
- Acceptance criteria and smoke-test definitions

HTML Project Plan (brief):
- Replace CSS `background-image` usage of video with an actual `<video>` element for reliable playback
- Add `autoplay` `muted` `loop` `playsinline` and `poster` attributes; provide WebM fallback
- Ensure server serves `video/mp4` with correct `Content-Type` and test direct URL
- Add accessible fallbacks and mark decorative video `aria-hidden="true"`; test on desktop + mobile
- Verify with smoke tests and add a `smoke-test.sh` step to validate media serving
