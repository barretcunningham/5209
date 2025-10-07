# NEEL 52 Hull #9 — Boat Operations Manual

Living documentation for vessel operations, systems, safety, and maintenance. This repo centralizes equipment manuals, NEEL guidance, checklists, and best practices, and is published via GitHub Pages.

> Status: Work in progress. This README sets structure, conventions, and next steps so we can begin importing content immediately.

## Goals

- Single source of truth for how the boat is set up and operated
- Easy to update, versioned, and reviewable via pull requests
- Includes manufacturer manuals, NEEL information, checklists, and diagrams
- Clear procedures for normal ops, emergencies, and maintenance
- Published to the web (GitHub Pages) for convenient read-only access

## Repository Layout

Documentation is organized under `docs/` into functional categories. See the [published site](https://barretcunningham.github.io/5209) or `mkdocs.yml` for the current navigation structure.

## Getting Started

**Working with content:**

1. Add or edit Markdown files in `docs/`
2. Update `mkdocs.yml` nav section to add pages to navigation
3. Commit and push changes to trigger automatic build and deployment via GitHub Actions
4. View the published site at https://barretcunningham.github.io/5209

**For large files (PDFs, images):**

Git LFS is already configured. All PDFs, images, and videos are automatically tracked via LFS (see `.gitattributes`).

## Adding Equipment Manuals

Goal: each equipment item has (a) the original manual PDF and (b) a short, skimmable Markdown page with key specs, settings, and links.

Directory and naming convention:

- Place PDFs under `docs/equipment/<category>/manuals/`
- Name files: `yyyy-manufacturer-model-lang.pdf` (e.g., `2024-victron-cerbo-en.pdf`)
- Add a Markdown summary at `docs/equipment/<category>/<model>.md`
- Add the page to `mkdocs.yml` nav section

Markdown template for equipment pages (no front matter needed):

```markdown
# <Manufacturer> <Model>

**Category:** <Power/Navigation/Propulsion/Water/Safety/Galley>
**Location:** <Install location aboard>
**Installed:** <YYYY-MM>
**Serial Number:** <optional>
**Voltage:** <12V/24V/AC>

## Overview

Short description of what it does and how it's used aboard.

## Key Specifications

- Spec A: value
- Spec B: value

## Key Settings

- Setting A: value
- Setting B: value

## Common Procedures

- Start/stop/reset steps
- Firmware update notes
- Seasonal layup/wake-up

## Manuals & Links

- [PDF Manual](manuals/<file-name>.pdf)
- [Manufacturer Page](https://example.com/product)

## Notes

Key settings, caveats, and boat-specific configuration.
```

## Procedures and Checklists

Store operational procedures in `docs/procedures/` and quick-reference checklists in `docs/safety/checklists/`.

Suggested initial set:

- Pre-departure and pre-arrival checklists
- Docking and undocking
- Anchoring and mooring (including windlass use and snubber)
- Reefing and heavy-weather
- Man overboard (MOB)
- Fire, flooding, grounding, abandon ship
- Engine start/stop; generator or shore power change-over
- Watermaker start/shutdown; fresh-water sanitization

## Safety and Disclaimers

- This repository complements (does not replace) official manufacturer manuals and NEEL guidance.
- In emergencies, follow established seamanship and safety procedures. Use this repo as secondary reference.
- Keep copies of critical procedures and contacts available offline aboard.
- Do not store sensitive data (e.g., security codes) unencrypted. Avoid publishing real-time location details.

## GitHub Pages

The site is deployed using **Material for MkDocs** via **GitHub Actions**:

1. **Automatic deployment:** Every push to `main` triggers a build and deploy
2. **Workflow:** `.github/workflows/pages-deploy.yml` handles the build
3. **Published at:** https://barretcunningham.github.io/5209

**Key features:**
- Modern, responsive Material Design theme
- Dark/light mode toggle
- Advanced search across all content
- Tabbed navigation for main sections
- Mobile-optimized viewing

**Settings:**
- GitHub → Settings → Pages → Source: **GitHub Actions**
- Build tool: MkDocs with Material theme
- Python dependencies: `requirements.txt`
- Configuration: `mkdocs.yml`

## Branch and Draft PR Workflow (no Make)

Use plain git and the GitHub CLI (`gh`) to keep things simple.

1) Create a feature branch

```
git checkout -b docs/jtd-setup
```

2) Commit your changes

```
git add -A
git commit -m "Scaffold Jekyll + Just the Docs"
```

3) Push the branch

```
git push -u origin docs/jtd-setup
```

4) Open a draft PR (requires `gh`)

```
gh pr create --draft --fill --base main --head docs/jtd-setup
```

5) View the PR in a browser

```
gh pr view --web
```

Continue working by committing and pushing to the same branch:

```
git add -A && git commit -m "Update content" && git push
```

If you don’t use `gh`, create the PR from the GitHub web UI after pushing the branch.

## Conventions

- File names: kebab-case for Markdown, lowercase with hyphens for assets.
- Units: prefer SI + common nautical (m, kg, L, kW; knots, NM). Be explicit when mixing.
- Dates: ISO `YYYY-MM-DD`.
- Diagrams: prefer vector (`.svg`) where possible.
- Cross-reference equipment pages from relevant system and procedure pages.
- Keep “as-built” configurations in systems pages; note any deviations from default manuals.


