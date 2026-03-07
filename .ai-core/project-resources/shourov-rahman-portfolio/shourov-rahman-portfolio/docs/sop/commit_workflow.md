# SOP: Commit Workflow

Use `pnpm commit` to create small, reviewable commits with pre-commit checks and conventional commit messages.

## Command

```bash
pnpm commit
```

Options:

```bash
pnpm commit --no-verify
pnpm commit --yes
```

## What It Does

1. Runs pre-commit checks (unless `--no-verify`):
   - `pnpm lint`
   - `pnpm build`
2. If nothing is staged, stages all changes (`git add -A`).
3. Shows a staged diff summary (`git diff --cached --stat`).
4. Groups staged files into logical buckets and suggests splitting commits when multiple groups are detected.
5. For each commit (single or split):
   - Prompts for `type` and `subject` using conventional commits
   - Adds an emoji for the commit type
   - Uses a bullet list body based on touched files
   - Runs `git commit` with the constructed message

## Conventional Commit Types

The helper supports:

- `feat` `fix` `docs` `style` `refactor` `perf` `test` `chore` `build` `ci` `revert`

Format:

```text
<emoji> <type>: <subject>

- Bullet body explaining what/why
```

## Splitting Commits

If multiple groups are detected (e.g. `docs` + `src` + `chore`), the helper can split by group.

When splitting, it temporarily unstages changes and re-stages per group to create a sequence of commits.

## Notes

- If lint/build fails, the helper prompts whether to continue (or continues automatically with `--yes`).
- `--yes` is intended for non-interactive usage: it accepts defaults and avoids split commits.

