#!/bin/bash
# Build the operations manual with PDF export enabled

export DYLD_FALLBACK_LIBRARY_PATH=/opt/homebrew/lib
export ENABLE_PDF_EXPORT=1

uv run mkdocs build "$@"
