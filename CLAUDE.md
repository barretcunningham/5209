# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Jekyll-based documentation site for a NEEL 52 Trimaran (Hull #9) boat operations manual. It uses the Chirpy theme and is published via GitHub Pages at `https://barretcunningham.github.io/5209`.

The repository is **documentation-focused** (not a software project), containing:
- Equipment manuals (PDFs) and Markdown summaries
- Operational procedures and checklists
- System descriptions (electrical, propulsion, plumbing, navigation, communications)
- Safety information and emergency procedures
- Maintenance schedules and logs

## Commands

**Preview the site locally (if Jekyll is installed):**
```bash
cd docs
bundle exec jekyll serve
```

**Git LFS commands:**
```bash
# Install Git LFS (if not already installed)
git lfs install

# Track large files (already configured in .gitattributes)
# PDFs, images, videos automatically tracked by LFS
```

**Common git workflow:**
```bash
# Create feature branch
git checkout -b docs/feature-name

# Commit changes
git add -A
git commit -m "Description of changes"

# Push branch
git push -u origin docs/feature-name

# Create draft PR (requires gh CLI)
gh pr create --draft --fill --base main --head docs/feature-name
```

## Architecture

### Content Organization

All documentation lives under `docs/` with this structure:

- **`docs/boat/`** - Vessel particulars, overview, specifications
- **`docs/safety/`** - Safety overview and emergency checklists (MOB, fire, flooding, abandon ship)
- **`docs/procedures/`** - Operational procedures (departure, arrival, anchoring, reefing, heavy weather)
- **`docs/systems/`** - System descriptions (electrical-12v, electrical-ac, propulsion, plumbing, navigation, communications)
- **`docs/equipment/`** - Equipment organized by category:
  - `equipment/<category>/<manufacturer>/<model>.md` - Markdown summary
  - `equipment/<category>/<manufacturer>/manuals/*.pdf` - Original manuals
  - Categories: power, navigation, propulsion, water, safety, galley
- **`docs/maintenance/`** - Maintenance schedules, logs, spares inventory
- **`docs/_tabs/`** - Chirpy theme sidebar navigation tabs
- **`docs/assets/`** - Images, logos, diagrams

### Jekyll Configuration

- **Theme:** Chirpy (via `remote_theme: cotes2020/jekyll-theme-chirpy`)
- **Config file:** `docs/_config.yml`
- **Deployment:** GitHub Pages from `main` branch, `/docs` folder
- **Markdown:** kramdown
- **Permalinks:** pretty URLs

### Equipment Manual Convention

Equipment pages follow this front matter structure:
```yaml
---
title: "<Manufacturer> <Model>"
parent: "<Category>"        # Power, Navigation, Propulsion, etc.
grand_parent: "Equipment"
nav_order: <number>
---
```

Manual PDFs are named: `yyyy-manufacturer-model-lang.pdf`

### Large Files & Git LFS

The repository uses Git LFS for large binary files. All PDFs, images (PNG, JPG, SVG), and videos are tracked via LFS (configured in `.gitattributes`).

## Key Conventions

- **File naming:** kebab-case for Markdown files, lowercase with hyphens for assets
- **Dates:** ISO format `YYYY-MM-DD`
- **Units:** SI + nautical (m, kg, L, kW; knots, NM) - be explicit when mixing
- **Diagrams:** Prefer vector (SVG) when possible
- **Cross-references:** Link equipment pages from relevant system and procedure pages
- **As-built configurations:** Document actual boat config in systems pages, noting deviations from manufacturer defaults

## Important Notes

- This is a **documentation repository**, not a software project - there are no tests, builds, or linters
- **Do not store sensitive data** (security codes, real-time location) unencrypted in the repo
- Keep manufacturer manuals intact (don't modify PDFs); create Markdown summaries alongside them
- Use pull requests for important changes to maintain history and enable review
- The site is published publicly via GitHub Pages - assume all content is public
