# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a MkDocs-based documentation site for a NEEL 52 Trimaran (Hull #9) boat operations manual. It uses Material for MkDocs and is published via GitHub Pages at `https://barretcunningham.github.io/5209`.

The repository is **documentation-focused** (not a software project), containing:
- Equipment manuals (PDFs) and Markdown summaries
- Operational procedures and checklists
- System descriptions (electrical, propulsion, plumbing, navigation, communications)
- Safety information and emergency procedures
- Maintenance schedules and logs

## Commands

**Preview the site locally:**
```bash
# Install dependencies (first time only)
uv venv
uv pip install -r requirements.txt

# Serve locally at http://127.0.0.1:8000
uv run mkdocs serve

# Build static site
uv run mkdocs build
```

**Build PDF version:**
```bash
# Build site with PDF export (requires system libraries via Homebrew)
./build-pdf.sh

# Or manually:
DYLD_FALLBACK_LIBRARY_PATH=/opt/homebrew/lib ENABLE_PDF_EXPORT=1 uv run mkdocs build

# PDF output: site/pdf/operations-manual.pdf
```

**System dependencies for PDF export:**
```bash
# Install WeasyPrint dependencies (one-time setup)
brew install cairo pango gdk-pixbuf glib gobject-introspection
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

All documentation lives under `docs/` organized into functional categories. See `mkdocs.yml` nav section for the current navigation structure.

Key organizational principles:
- Equipment is organized under relevant functional categories (e.g., `power/equipment/`, `navigation/equipment/`)
- Equipment pages are plain Markdown files: `<category>/equipment/<model>.md`
- Manuals are stored alongside equipment: `<category>/equipment/<model>/manuals/*.pdf`
- Maintenance procedures are integrated into each functional category where appropriate
- Emergency procedures and safety equipment are consolidated under `emergency/`

### MkDocs Configuration

- **Theme:** Material for MkDocs
- **Config file:** `mkdocs.yml` (repository root)
- **Deployment:** GitHub Actions → GitHub Pages
- **Markdown:** Python-Markdown with extensions (admonitions, tables, code highlighting)
- **Navigation:** Defined in `mkdocs.yml` nav section

### Equipment Pages

Equipment pages are plain Markdown (no front matter required). Include:
- Overview and purpose
- Key specifications and settings
- Installation location and details
- Links to manuals
- Common procedures

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
- **Markdown format:** Plain Markdown only - no Jekyll front matter, no Liquid templates
- **Navigation:** Add new pages to `mkdocs.yml` nav section to appear in site navigation
