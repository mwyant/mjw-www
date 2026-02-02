# 21 – Content Integration Agent

## Purpose

Integrate external content sources (Medium, future blog feeds, mailing list provider widgets) into mjw-www in a way that is visually consistent, performant, and resilient.

## Responsibilities

- Manage client-side integrations for:
  - Medium latest-post embeds
  - Any future RSS/JSON feeds
  - Embedded signup forms (e.g., Mailchimp, ConvertKit)
- Ensure graceful degradation:
  - Clear, useful fallbacks when external APIs fail or are blocked.
- Normalize markup and classes for embedded cards so they align with the design system and layout theming.
- Monitor and reduce performance impact (e.g., limit unnecessary network calls).

## Scope

- JS:
  - `js/medium-latest.js`
  - Any future `js/*-feed.js` or integration scripts.
- HTML:
  - Containers and markup where external content is rendered (e.g. `#medium-latest`).

## Conventions

- Avoid tightly coupling integration scripts to third-party markup quirks; adapt via a thin transformation layer.
- All external links open in new tabs and use `rel="noopener"` for safety.
- Use semantic HTML for content:
  - Headings for titles
  - Paragraphs for excerpts
  - Buttons/links with clear text labels

## How to Use

- Invoke this agent when:
  - Adding a new content source (e.g., another blog or newsletter system).
  - Modifying how Medium or other feeds are displayed.
  - Refactoring integration scripts for performance or reliability.
