# NEEL 52 Hull #9 — Boat Operations Manual

Living documentation for vessel operations, systems, safety, and maintenance. This repo centralizes equipment manuals, NEEL guidance, checklists, and best practices, and is published via GitHub Pages.

> Status: Work in progress. This README sets structure, conventions, and next steps so we can begin importing content immediately.

## Goals

- Single source of truth for how the boat is set up and operated
- Easy to update, versioned, and reviewable via pull requests
- Includes manufacturer manuals, NEEL information, checklists, and diagrams
- Clear procedures for normal ops, emergencies, and maintenance
- Published to the web (GitHub Pages) for convenient read-only access

## Contents

- [Repository Layout](#repository-layout)
- [Getting Started](#getting-started)
- [Adding Equipment Manuals](#adding-equipment-manuals)
- [Procedures and Checklists](#procedures-and-checklists)
- [Safety and Disclaimers](#safety-and-disclaimers)
- [GitHub Pages](#github-pages)
- [Conventions](#conventions)
- [Roadmap / TODO](#roadmap--todo)
- [Vessel Details (placeholders)](#vessel-details-placeholders)

## Repository Layout

Proposed structure to grow into as content arrives. We can prune or adjust as needed.

```
.
├── README.md
├── docs/
│   ├── _config.yml
│   ├── index.md
│   ├── assets/
│   │   └── .gitkeep
│   ├── boat/
│   │   ├── index.md
│   │   ├── overview.md
│   │   └── particulars.md
│   ├── safety/
│   │   ├── index.md
│   │   ├── overview.md
│   │   └── checklists/
│   │       ├── index.md
│   │       ├── abandon-ship.md
│   │       ├── fire.md
│   │       ├── flooding.md
│   │       └── mob.md
│   ├── procedures/
│   │   ├── index.md
│   │   ├── overview.md
│   │   ├── anchoring.md
│   │   ├── arrival.md
│   │   ├── departure.md
│   │   ├── heavy-weather.md
│   │   └── reefing.md
│   ├── systems/
│   │   ├── index.md
│   │   ├── overview.md
│   │   ├── communications.md
│   │   ├── electrical-12v.md
│   │   ├── electrical-ac.md
│   │   ├── navigation.md
│   │   ├── plumbing.md
│   │   └── propulsion.md
│   ├── equipment/
│   │   ├── index.md
│   │   ├── galley/
│   │   │   └── index.md
│   │   ├── navigation/
│   │   │   └── index.md
│   │   ├── power/
│   │   │   └── index.md
│   │   ├── propulsion/
│   │   │   └── index.md
│   │   ├── safety/
│   │   │   └── index.md
│   │   └── water/
│   │       └── index.md
│   └── maintenance/
│       ├── index.md
│       ├── logs/
│       │   └── index.md
│       ├── overview.md
│       ├── schedule.md
│       └── spares.md
```

## Getting Started

1. Decide the publishing approach (see “GitHub Pages” below).
2. Create the initial `docs/` skeleton and an `index.md` landing page.
3. Begin importing key manuals and drafting the most-used checklists.
4. Use pull requests to review important changes and keep history clear.

Recommended for large files (PDFs, images):

```
git lfs install
git lfs track "*.pdf" "*.zip" "*.ai" "*.psd"
git add .gitattributes
```

## Adding Equipment Manuals

Goal: each equipment item has (a) the original manual PDF and (b) a short, skimmable Markdown page with key specs, settings, and links.

Directory and naming convention:

- Place PDFs under `docs/equipment/<category>/<manufacturer>/manuals/`
- Name files: `yyyy-manufacturer-model-lang.pdf` (e.g., `2024-victron-cerbo-en.pdf`)
- Add a Markdown summary at `docs/equipment/<category>/<manufacturer>/<model>.md`

Front matter template for equipment pages:

```yaml
---
title: "<Manufacturer> <Model>"
manufacturer: "<Manufacturer>"
model: "<Model>"
category: "<Category>"   # e.g., Navigation, Power, Propulsion, Water, Safety
location: "<Install location aboard>"
installed: "<YYYY-MM>"
serial_number: "<optional>"
voltage: "<12V|24V|AC>"
manual: "./manuals/<file-name>.pdf"
links:
  - label: "Manufacturer page"
    href: "https://example.com/product"
notes: |
  Key settings, caveats, and boat-specific configuration.
---

# Overview

Short description of what it does and how it’s used aboard.

## Key Settings

- Setting A: value
- Setting B: value

## Common Procedures

- Start/stop/reset steps
- Firmware update notes
- Seasonal layup/wake-up

## Manuals

- [PDF manual](./manuals/<file-name>.pdf)
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

Two common ways to publish:

1) Quick start (no build):

- Place all content under `docs/` and create `docs/index.md` as the homepage.
- For Just the Docs (Jekyll): add `docs/_config.yml` with `remote_theme: just-the-docs/just-the-docs` (already scaffolded here).
- In GitHub → Settings → Pages: Source = `Deploy from a branch`, Branch = `main`, Folder = `/docs`.

2) Static site generator (nicer navigation/search):

- MkDocs (with `mkdocs-material`) or Jekyll are great options.
- This repo can be upgraded later without changing content locations inside `docs/`.

If you want, we can scaffold MkDocs/Jekyll in a follow-up step.

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

## Roadmap / TODO

- [x] Confirm site generator (Just the Docs scaffolded under `docs/`)
- [x] Create `docs/index.md` and initial section stubs (top-level navigation populated)
- [ ] Set up GitHub Pages deployment
- [ ] Enable Git LFS and track large binaries
- [ ] Import priority manuals (navigation, power, propulsion, safety)
- [ ] Draft detailed procedures and emergency checklists
- [ ] Add maintenance schedule details and spares inventory

## Vessel Details (placeholders)

Update `docs/boat/particulars.md` with authoritative details:

- Vessel name: <TBD>
- Type: NEEL 52 Trimaran (Hull #9)
- HIN: <TBD>
- MMSI: <TBD>
- Call sign: <TBD>
- Home port/registry: <TBD>
- Electrical system: <12V/24V DC>, <120/230V AC> (confirm)
- Propulsion: <engine(s)/saildrive model>
- Sails/rig: <inventory and reef points>
- Emergency contacts: <TBD>

---

If you’d like, I can next scaffold the `docs/` directory with starter pages, enable Git LFS, and set up a basic Pages site so you can begin adding content immediately.
