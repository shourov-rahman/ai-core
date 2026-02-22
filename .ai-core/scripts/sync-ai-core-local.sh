#!/usr/bin/env bash

MASTER=".ai-core"
TOOLS=(.codex .qwen .claude .agent .gemini)

# Ensure master exists
if [ ! -d "$MASTER" ]; then
  echo "❌ Master folder '$MASTER' not found."
  exit 1
fi

echo "🔄 Syncing AI config folders..."

for tool in "${TOOLS[@]}"
do
  rm -rf "$tool"
  cp -r "$MASTER" "$tool"
  echo "✔ Synced → $tool"
done

echo "✅ Sync completed successfully."
