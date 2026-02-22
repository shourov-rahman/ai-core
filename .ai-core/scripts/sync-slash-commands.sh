#!/usr/bin/env bash

# ==============================
# One-way sync script
# - Stops if .ai-core/slash-commands does not exist
# - Syncs slash-commands → workflows
# - Syncs slash-commands → commands
# - Syncs slash-commands → ~/.codex/prompts
# - Mirrors deletions using rsync --delete
# - Automatically creates target folders
# - Meant to be run manually
# ==============================

set -e

# Stop if commands does not exist
if [ ! -d ".ai-core/slash-commands" ]; then
  echo "Error: .ai-core/slash-commands folder not found."
  exit 1
fi

echo "Starting sync..."

# Create targets if they don't exist
mkdir -p .ai-core/workflows
mkdir -p .ai-core/commands
mkdir -p ~/.codex/prompts

# Sync slash-commands → workflows
echo "Syncing to workflows..."
rsync -a --delete .ai-core/slash-commands/ .ai-core/workflows/

# Sync slash-commands → commands
echo "Syncing to commands..."
rsync -a --delete .ai-core/slash-commands/ .ai-core/commands/

# Sync slash-commands → prompts
echo "Syncing to ~/.codex/prompts..."
rsync -a --delete .ai-core/slash-commands/ ~/.codex/prompts/

echo "Done."
