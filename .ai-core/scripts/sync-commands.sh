#!/usr/bin/env bash

# ==============================
# One-way sync script
# - Stops if .ai-core/commands does not exist
# - Syncs commands → workflows
# - Syncs commands → ~/.codex/prompts
# - Mirrors deletions using rsync --delete
# - Automatically creates target folders
# - Meant to be run manually
# ==============================

set -e

# Stop if commands does not exist
if [ ! -d ".ai-core/commands" ]; then
  echo "Error: .ai-core/commands folder not found."
  exit 1
fi

echo "Starting sync..."

# Create targets if they don't exist
mkdir -p .ai-core/workflows
mkdir -p ~/.codex/prompts

# Sync commands → workflows
echo "Syncing to workflows..."
rsync -a --delete .ai-core/commands/ .ai-core/workflows/

# Sync commands → prompts
echo "Syncing to ~/.codex/prompts..."
rsync -a --delete .ai-core/commands/ ~/.codex/prompts/

echo "Done."
