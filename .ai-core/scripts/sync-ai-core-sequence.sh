#!/usr/bin/env bash

set -e  # Stop immediately if any script fails

SCRIPT_DIR="/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/ai-core/.ai-core/scripts"

echo "▶ Running sync-and-convert-md-to-toml..."
bash "$SCRIPT_DIR/sync-and-convert-md-to-toml.sh"

echo "▶ Running sync-slash-commands..."
bash "$SCRIPT_DIR/sync-slash-commands.sh"

echo "▶ Running sync-ai-core-global..."
bash "$SCRIPT_DIR/sync-ai-core-global.sh"

echo "▶ Running sync-ai-core-local..."
bash "$SCRIPT_DIR/sync-ai-core-local.sh"

echo "✅ All sync scripts completed successfully."
