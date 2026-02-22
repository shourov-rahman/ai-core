#!/usr/bin/env bash

# ======================================================
# Sync each project's .ai-core/project-resources
# → Into MAIN .ai-core/project-resources/<project-name>
# ======================================================

set -e

# ------------------------------------------
# MAIN DESTINATION DIRECTORY
# ------------------------------------------
MAIN_PROJECT_RESOURCES="/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/ai-core/.ai-core/project-resources"

# ------------------------------------------
# TARGET PROJECT DIRECTORIES
# ------------------------------------------
TARGETS=(
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/project/side-project/shourov-rahman-portfolio"
)

# ------------------------------------------
# Check if main destination exists
# ------------------------------------------
if [ ! -d "$MAIN_PROJECT_RESOURCES" ]; then
  echo "❌ Main project-resources folder not found."
  echo "Path: $MAIN_PROJECT_RESOURCES"
  exit 1
fi

echo "=========================================="
echo "🔹 Syncing project-resources → MAIN"
echo "=========================================="
echo

SYNC_COUNT=0

# ------------------------------------------
# Sync Each Project
# ------------------------------------------
for PROJECT in "${TARGETS[@]}"; do

  PROJECT_NAME=$(basename "$PROJECT")
  PROJECT_RES="$PROJECT/.ai-core/project-resources"
  DESTINATION="$MAIN_PROJECT_RESOURCES/$PROJECT_NAME"

  echo "------------------------------------------"
  echo "Project: $PROJECT_NAME"
  echo "Source : $PROJECT_RES"
  echo "Dest   : $DESTINATION"
  echo "------------------------------------------"

  # Check if project-resources exists
  if [ ! -d "$PROJECT_RES" ]; then
    echo "⚠️  project-resources folder not found."
    echo "Skipping..."
    echo
    continue
  fi

  # Check if empty
  if [ -z "$(ls -A "$PROJECT_RES")" ]; then
    echo "⚠️  Folder is empty."
    echo "Skipping..."
    echo
    continue
  fi

  # Create destination folder if missing
  mkdir -p "$DESTINATION"

  echo "🚀 Syncing..."

  rsync -av --delete \
    "$PROJECT_RES/" \
    "$DESTINATION/"

  echo "✅ Sync completed."
  echo

  SYNC_COUNT=$((SYNC_COUNT + 1))

done

echo "=========================================="
echo "Finished. Synced from $SYNC_COUNT project(s)."
echo "=========================================="
