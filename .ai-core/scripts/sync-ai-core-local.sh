#!/usr/bin/env bash

# ==========================================
# Selective Sync from .ai-core into:
#   .codex
#   .qwen
#   .claude
#   .agent
#   .gemini
#
# Source of truth: project/.ai-core
# ==========================================

set -e

# ------------------------------------------
# 🔧 EDIT THIS SECTION (Add more projects here)
# ------------------------------------------
TARGETS=(
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/ai-core"
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/project/side-project/shourov-rahman-portfolio"
  "/home/shourov/.dotfiles"
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/project/client-project/luxury-outfit-final"
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/boilerplate/my-boilerplate/page-builder-boilerplate"
  "/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/project/client-project/luxury-outfit-final"
)

echo "=========================================="
echo "🚀 AI Core Selective Sync Started"
echo "=========================================="
echo ""

# ------------------------------------------
# Loop through each project
# ------------------------------------------
for PROJECT_PATH in "${TARGETS[@]}"; do
  echo "------------------------------------------"
  echo "📁 Project: $PROJECT_PATH"

  SOURCE_DIR="$PROJECT_PATH/.ai-core"

  if [ ! -d "$SOURCE_DIR" ]; then
    echo "⚠️  .ai-core not found. Skipping..."
    echo ""
    continue
  fi

  echo "✅ Found .ai-core"
  echo ""

# =====================================================
  # .codex → skills
  # =====================================================
  echo "🔄 Syncing → .codex"
  mkdir -p "$PROJECT_PATH/.codex"

  rsync -av --delete \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.codex/" 

  echo "   ✔ Done"

  # =====================================================
  # .agent → workflows, skills
  # =====================================================
  echo "🔄 Syncing → .agent"
  mkdir -p "$PROJECT_PATH/.agent"

  rsync -av --delete \
    --include="workflows/***" \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.agent/" 

  echo "   ✔ Done"

  # =====================================================
  # .qwen → commands(only .md file), skills
  # =====================================================
  echo "🔄 Syncing → .qwen"
  mkdir -p "$PROJECT_PATH/.qwen"

  rsync -av --delete \
    --include="commands/" \
    --include="commands/*.md" \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.qwen/" 

  echo "   ✔ Done"

  # =====================================================
  # .claude → commands(only .md file), skills
  # =====================================================
  echo "🔄 Syncing → .claude"
  mkdir -p "$PROJECT_PATH/.claude"

  rsync -av --delete \
    --include="commands/" \
    --include="commands/*.md" \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.claude/" 

  echo "   ✔ Done"

  # =====================================================
  # .gemini → commands(only .toml file), skills
  # =====================================================
  echo "🔄 Syncing → .gemini"
  mkdir -p "$PROJECT_PATH/.gemini"

  rsync -av \
    --delete \
    --include="commands/" \
    --include="commands/*.toml" \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.gemini/" 

  echo "   ✔ Done"

  echo ""
  echo "🎉 Project sync completed."
  echo ""


done

echo "=========================================="
echo "✅ All Done!"
echo "=========================================="
