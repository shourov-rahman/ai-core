#!/usr/bin/env bash

# ==========================================
# Master Sync Script
# Order:
#   1. Run sync-slash-commands.sh
#   2. Sync global .ai-core to all projects
#   3. Run sync-ai-core-local.sh inside each project
# ==========================================

set -e

# ------------------------------------------
# SCRIPT DIRECTORY (where this file lives)
# ------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ------------------------------------------
# STEP 1: Run sync-slash-commands.sh
# ------------------------------------------
echo "=========================================="
echo "🔹 Step 1: Running sync-slash-commands.sh"
echo "=========================================="

if [ -f "$SCRIPT_DIR/sync-slash-commands.sh" ]; then
  bash "$SCRIPT_DIR/sync-slash-commands.sh"
  echo "✅ sync-slash-commands.sh completed."
else
  echo "❌ sync-slash-commands.sh not found in:"
  echo "$SCRIPT_DIR"
  exit 1
fi

echo

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

echo "=========================================="
echo "🔹 Step 2: Syncing global .ai-core"
echo "=========================================="
echo

# ------------------------------------------
# STEP 2: Global Sync
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
    "$MAIN_AI_CORE/" \
    "$PROJECT/.ai-core"

  echo "✅ Global sync completed."
  echo

  # ------------------------------------------
  # STEP 3: Run local sync inside project
  # ------------------------------------------
  echo "🔹 Step 3: Running sync-ai-core-local.sh inside project"

  if [ -f "$PROJECT/.ai-core/scripts/sync-ai-core-local.sh" ]; then
    bash "$PROJECT/.ai-core/scripts/sync-ai-core-local.sh"
    echo "✔ Local sync completed."
  else
    echo "⚠️  sync-ai-core-local.sh not found in project."
  fi

  echo
done

echo "=========================================="
echo "🎉 All projects fully synced successfully!"
echo "=========================================="
