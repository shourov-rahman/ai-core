# AI Core 🚀

**AI Core** is a centralized hub for managing configurations, rules, workflows, and resources for various AI agents (Gemini, Claude, Qwen, Cursor, etc.) across multiple software projects. It acts as the single source of truth for AI-driven development standards and automated interaction patterns.

## 📁 Repository Structure

The project is organized around the `.ai-core` directory, which contains all master configurations:

```bash
.ai-core/
├── scripts/             # Automation scripts for syncing and maintenance
├── slash-commands/      # Reusable AI interaction templates (.md & .toml)
├── project-resources/   # PRDs, structure guides, and assets for specific projects
├── skills/              # Specialized AI agent capabilities (e.g., SEO, writing)
├── rules/               # Tool-specific instruction sets (e.g., GEMINI.md, CLAUDE.md)
├── workflows/           # Multi-step AI interaction patterns
└── design-and-development-rules/ # General engineering & UI/UX guidelines
```

### Key Components

- **Slash Commands:** Pre-defined prompt templates for common tasks like `bugfix`, `code-review`, `prd-review`, etc. These are synced to tool-specific formats (e.g., `.toml` for Gemini, `.md` for others).
- **Project Resources:** Centralized documentation (PRDs, structure files, design rules) for sub-projects like `shourov-rahman-portfolio`, `geospatial-works`, etc.
- **Skills:** Specialized "agent personas" or capability modules that can be activated for specific tasks.
- **Sync Scripts:** Robust bash scripts to distribute configurations from `.ai-core` to local tool directories (`.gemini`, `.claude`, `.agent`, `.codex`, `.qwen`).

---

## 🔄 Syncing Workflow

AI Core uses a selective syncing strategy to ensure each AI tool receives the configurations it needs without clutter.

### Core Scripts:
- `sync-ai-core-local.sh`: Syncs `.ai-core` contents into tool-specific hidden folders (`.gemini`, `.claude`, etc.) within the current project.
- `sync-ai-core-global.sh`: Distributes the latest `.ai-core` master to all registered project directories.
- `sync-slash-commands.sh`: Co-ordinates the distribution of slash commands across workflows, tool commands, and global prompt folders.

---

## 🛠️ Development Best Practices

To maintain high performance during AI-assisted development, we strictly adhere to using modern, fast CLI tools:

| Task | ⚠ Avoid (Slow) | ✅ Use (Fast) |
| :--- | :--- | :--- |
| **Search** | `grep -r` | `rg` (ripgrep) |
| **Find Files** | `find` | `fd` |
| **Listing** | `ls -R` | `rg --files` |
| **JSON** | Regex/Grep | `jq` |

### Recommended Commands:
```bash
# Search for a pattern
rg "search_term"

# List all files (respects .gitignore)
rg --files

# Find specific file types
fd -e js
```

---

## 📝 Documentation SOP

All project-specific documentation should follow the structure below in `.ai-core/project-resources/{project-name}/docs/`:

1. **Tasks:** PRD and implementation plans.
2. **System:** High-level architecture, tech stack, and state.
3. **SOP:** Best practices for recurring tasks (e.g., migrations, route setup).
4. **README.md:** An index of all project documentation.

> **Important:** Always update these docs after implementing a feature to ensure the AI agents have the most accurate context.

---

## ⚖️ Compliance
Before implementing any feature, ensure it complies with the specific development and design rules located at:
`.ai-core/project-resources/{project-name}/project-design-and-development-rules/`
