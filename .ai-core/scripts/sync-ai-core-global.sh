#!/usr/bin/env bash

set -e

# ------------------------------------------
# SCRIPT DIRECTORY (where this file lives)
# ------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ------------------------------------------
# MAIN SOURCE DIRECTORY
# ------------------------------------------
MAIN_AI_CORE="/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/ai-core/.ai-core"

# ------------------------------------------
# TARGET PROJECT DIRECTORIES
# ------------------------------------------
TARGETS=(
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/project/side-project/shourov-rahman-portfolio"
)

# ------------------------------------------
# Check if main .ai-core exists
# ------------------------------------------
if [ ! -d "$MAIN_AI_CORE" ]; then
  echo "❌ Main .ai-core folder not found."
  echo "Path: $MAIN_AI_CORE"
  echo "Sync aborted."
  exit 1
fi


# ------------------------------------------
# Global Sync
# ------------------------------------------
for PROJECT in "${TARGETS[@]}"; do

  echo "------------------------------------------"
  echo "Syncing to: $PROJECT"
  echo "------------------------------------------"

  if [ ! -d "$PROJECT" ]; then
    echo "⚠️  Target project folder does not exist."
    echo "Skipping..."
    echo
    continue
  fi

  rsync -av \
    --delete \
    --exclude "project-resources" \
    --exclude "scripts" \
    "$MAIN_AI_CORE/" \
    "$PROJECT/.ai-core"

  echo "✅ Global sync completed."
  echo
 
done


