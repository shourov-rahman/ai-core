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
  # .codex → AGENTS.md, skills
  # =====================================================
  echo "🔄 Syncing → .codex"
  mkdir -p "$PROJECT_PATH/.codex"

  rsync -av --delete \
    --include="AGENTS.md" \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.codex/" 

  echo "   ✔ Done"

  # =====================================================
  # .agent → rules, workflows, skills
  # =====================================================
  echo "🔄 Syncing → .agent"
  mkdir -p "$PROJECT_PATH/.agent"

  rsync -av --delete \
    --include="rules/***" \
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
  # .claude → CLAUDE.md, commands(only .md file), skills
  # =====================================================
  echo "🔄 Syncing → .claude"
  mkdir -p "$PROJECT_PATH/.claude"

  rsync -av --delete \
    --include="CLAUDE.md" \
    --include="commands/" \
    --include="commands/*.md" \
    --include="skills/***" \
    --exclude="*" \
    "$SOURCE_DIR/" \
    "$PROJECT_PATH/.claude/" 

  echo "   ✔ Done"

  # =====================================================
  # .gemini → GEMINI.md, commands(only .toml file), skills
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
