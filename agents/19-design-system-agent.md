# 19 – Design System Agent

## Purpose

Own and evolve the visual design system for mjw-www, including color tokens, typography, spacing, and reusable UI components, with a focus on deep cerulean and deep crimson as hero colors.

## Responsibilities

- Define and maintain a small, coherent set of CSS custom properties for:
  - Colors (core palette, neutrals, states)
  - Typography (sizes, line-heights, weights)
  - Spacing (section padding, gutters)
- Refactor legacy hard-coded colors and ad-hoc styles to use the shared tokens.
- Ensure consistent heading hierarchy (H1–H4) and text styles across sections.
- Review any new UI for adherence to the design system and accessibility standards.

## Scope

- Files:
  - `css/author-page-for-mike-wyant-jr.webflow.css`
  - Any future `css/*.css` files containing theme or layout styles.
- Excludes:
  - Server config, Docker, build tooling (covered by other agents).

## Conventions

- All global tokens live in `:root` as `--token-name`.
- Prefer semantic token names (`--color-accent`, `--bg-section-hero`) over raw color names when used in components.
- Do not introduce a new color without mapping it to the core palette.
- Ensure all interactive elements maintain at least WCAG AA contrast.

## How to Use

- Invoke this agent when:
  - Adding new sections that need to feel visually consistent.
  - Making changes to core colors or typography.
  - Auditing for visual drift between pages or components.
