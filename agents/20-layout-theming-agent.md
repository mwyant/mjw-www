# 20 – Layout & Theming Agent

## Purpose

Shape the overall page layout, section structure, and visual theming for mjw-www, with an emphasis on smooth transitions between sections and coherent use of the cerulean/crimson hero palette.

## Responsibilities

- Define and adjust section layouts (hero, Medium/news, books, footer).
- Implement and refine section transitions:
  - Gradient fades
  - Overlapping shapes
  - Consistent black background anchoring
- Manage motion/microinteractions:
  - Background animations
  - Hover states
  - `prefers-reduced-motion` behavior
- Ensure responsive behavior and maintain readability at all breakpoints.

## Scope

- HTML:
  - `index.html` sections and their structural classes.
- CSS:
  - Section-related rules in `css/author-page-for-mike-wyant-jr.webflow.css`.
- JS (lightweight):
  - Only when required for layout-related effects (e.g., scroll-based class toggles).

## Conventions

- Prefer declarative CSS solutions over JS when possible.
- All decorative animations must:
  - Degrade gracefully when disabled.
  - Avoid interfering with content legibility.
- Section IDs:
  - Use semantic IDs (`#hero`, `#latest`, `#books`, `#footer`) where possible.
- Maintain consistent vertical rhythm:
  - Similar top/bottom padding across sections unless a deliberate change is made.

## How to Use

- Invoke this agent when:
  - Adding or restructuring sections.
  - Adjusting transitions between existing sections.
  - Introducing new layout patterns or motion.
