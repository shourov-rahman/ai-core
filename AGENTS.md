
## Git Instructuction
- Don't write any code in `main` branch. If you have to write any code then switch to `development` branch.
- `main` branch only for merging changes from `development` branch. 
- For implementing new feature, code review, refactor etc create new branch
```
- Generate a short kebab-case name from the feature description (e.g., "Login Page" -> `login-page`).
- Propose the branch name `feature/<kebab-case-name>`, `code-review/<kebab-case-name>`, `code-refactor/<kebab-case-name>`  .
- Run `git checkout -b feature/<kebab-case-name>`.
```


## Optimized Queries & Tools

### ⚠ Never Use (Slow)

- `grep` or `grep -r` — use `rg` instead
- `find` — use `rg --files` or `fd` (respects .gitignore)
- `ls -R` — use `rg --files`
- `cat file | grep` — use `rg pattern file`

### ✅ Use These (Fast)

```bash
# ripgrep (rg) — content search
rg "search_term"                 # Search in all files
rg -i "case_insensitive"         # Case-insensitive
rg "pattern" -t py               # Only Python files
rg "pattern" -g "*.md"           # Only Markdown
rg -l "pattern"                  # Filenames with matches
rg -c "pattern"                  # Count matches per file
rg -n "pattern"                  # Show line numbers
rg -A 3 -B 3 "error"             # Context lines
rg "(TODO|FIXME|HACK)"           # Multiple patterns
```

### ripgrep (rg) — file listing
rg --files                        # List files (respects .gitignore)
rg --files | rg "pattern"         # Find files by name
rg --files -t md                  # Only Markdown files

### fd — file finding
fd -e js                          # All .js files (fast find)
fd -x command {}                  # Exec per-file
fd -e md -x ls -la {}             # Example with ls

### jq — JSON processing
jq . data.json                    # Pretty-print
jq -r .name file.json             # Extract field
jq '.id = 0' x.json               # Modify field

### Search Strategy
1. Start broad, then narrow: `rg "partial" | rg "specific"`
2. Filter by type early: `rg -t python "def function_name"`
3. Batch patterns: `rg "(pattern1|pattern2|pattern3)"`
4. Limit scope: `rg "pattern" src/`

### Why These Tools

- ripgrep (rg): 10–100x faster than grep, respects .gitignore, smart binary detection.
- fd: 5–10x faster file finding, simple syntax, respects .gitignore.
- jq: robust JSON parsing and transformation vs. fragile regex/grep.

### Install (Ubuntu/PopOS/WSL)

```bash
# macOS

# Ubuntu/Debian/WSL
sudo apt update && sudo apt install -y ripgrep fd-find jq
# fd binary is "fdfind" on Debian/Ubuntu — add an alias for convenience:
alias fd=fdfind
```
