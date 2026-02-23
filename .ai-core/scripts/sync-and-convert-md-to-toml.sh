#!/usr/bin/env bash

# --------------------------------------------------
# Sync and Convert Markdown (.md) to TOML (.toml)
# Source of truth: .md files
# Target: Same directory
# --------------------------------------------------

SLASH_COMMANDS_DIR="/home/shourov/ssd-vault/working-files-and-folders/software-development-engineering/ai-core/.ai-core/slash-commands"

echo "🔄 Syncing Markdown to TOML..."

# Loop through all .md files
for md_file in "$SLASH_COMMANDS_DIR"/*.md; do
    # Skip if no files found
    [ -e "$md_file" ] || continue

    # Extract filename without extension
    base_name="$(basename "$md_file" .md)"

    # Target .toml file path
    toml_file="$SLASH_COMMANDS_DIR/$base_name.toml"

    # Extract frontmatter description
    description=$(awk '
        /^---$/ {count++}
        count==1 && /^description:/ {
            sub(/^description:[[:space:]]*/, "")
            print
        }
    ' "$md_file")

    # Extract body (everything after frontmatter)
    body=$(awk '
        BEGIN {count=0}
        /^---$/ {count++; next}
        count>=2 {print}
    ' "$md_file")

    # Write TOML file (overwrite if exists)
    cat > "$toml_file" <<EOF
name = "$base_name"
description = "$description"

prompt = """
$body
"""
EOF

    echo "✔ Converted: $base_name.md → $base_name.toml"
done

echo "✅ Done."
