---
trigger: always_on
---

## Core Development Philosophy

### KISS (Keep It Simple, Stupid)

Simplicity is a primary design goal. Prefer straightforward solutions that are easy to reason about, maintain, and debug.

### YAGNI (You Aren't Gonna Need It)

Do not build speculative abstractions. Add complexity only when there is a real, current use case.

### Design Principles

- **Islands Architecture**: Hydrate only where interaction is required.
- **Performance by Default**: Keep pages static-first and layer in JS intentionally.
- **Content-Driven**: Use typed content sources and predictable schemas.
- **Minimal JavaScript**: Ship as little client JS as practical.
- **Utility-First Styling**: Tailwind utilities first, reusable patterns second.
- **Production Parity**: Keep local/CI/prod behavior aligned (ports, runtime adapter, env handling).

## 🤖 AI Assistant Guidelines

### Context Awareness

- Check existing patterns before adding new ones.
- Match current project conventions unless there is a clear, documented reason to deviate.
- Read project docs index first: `.ai-core/project-resources/shourov-rahman-portfolio/docs/README.md`.

### Common Pitfalls to Avoid

- Over-hydrating components that can stay static.
- Adding new frameworks or patterns when Alpine/Astro already solves the problem.
- Duplicating utilities/components instead of extending existing ones.
- Introducing style patterns that conflict with the current design system.
- Leaving tool config drift unresolved (for example Playwright URL vs preview server URL).

### Workflow Patterns

- Decide hydration strategy before implementing interactive UI.
- For interactive features, separate render concerns from interaction concerns.
- Validate assumptions with `pnpm lint`, `pnpm astro check`, `pnpm run test:run`, and `pnpm run build` before finalizing.
- Run `pnpm run test:e2e:chromium` when routes, navigation, forms, or key interactions change.

## 🧱 Code Structure & Modularity

### File and Component Limits

- **Use limits as guidance, not dogma.**
- Target **~500 lines max per file**. If a file is hard to navigate, split it.
- Target **~250 lines max per Astro component** unless composition would become worse.
- Keep functions focused; prefer decomposition when a function becomes difficult to test.
- Organize by feature/domain where it improves discoverability.

### Environment Configuration

- Keep client/server environment variables clearly separated.
- For runtime-critical variables, require schema validation (Astro `env.schema` or an equivalent Zod-based validation layer).
- Fail fast for missing/invalid runtime env values.
- Keep `.env.example` synchronized with required variables.
- Do not expose secrets through `PUBLIC_` prefixed variables.

## 🏗️ Project Structure

Use this project-aware baseline first. Add optional modules only when needed.

```text
├── e2e/                             # E2E tests (Playwright)
│   └── *.spec.ts
│
├── public/                          # Static assets (served as-is)
│
├── src/
│   ├── components/
│   │   ├── home/                    # Homepage sections
│   │   ├── layout/                  # Navbar, Footer
│   │   └── ui/                      # Reusable UI primitives
│   │
│   ├── data/
│   │   ├── homepage.json            # Homepage copy/config source
│   │   ├── blog/                    # Blog content collection
│   │   └── docs/                    # Docs content collection
│   │
│   ├── layouts/                     # Shared page layouts
│   ├── pages/                       # Route entrypoints
│   ├── styles/                      # Global CSS/theme setup
│   ├── utils/                       # Pure utilities
│   ├── content.config.ts            # Content collections schema
│   └── env.d.ts                     # Ambient types
│
├── astro.config.mjs
├── wrangler.toml
├── vitest.config.ts
└── playwright.config.ts
```

Optional expansion directories (create on demand):

- `src/services/` for integration/data access layers
- `src/features/` for larger domain modules
- `src/types/` for shared domain model types
- `src/pages/api/` when backend endpoints are introduced

## Libraries and Framework Guide

### Alpine.js

- Use Alpine for lightweight UI interactivity.
- Keep business logic off the client where possible.
- Prefer small, local `x-data` scopes.
- Avoid deeply nested Alpine scopes unless justified.

### DaisyUI

- DaisyUI is enabled via Tailwind v4 CSS plugin in `src/styles/global.css`:
  - `@plugin 'daisyui';`
- Theme customization should be centralized with the Tailwind v4 CSS-first approach (in `src/styles/global.css`), not legacy-only `tailwind.config.ts` assumptions.
- It is fine to use raw Tailwind utilities or CVA-based custom components when DaisyUI primitives are not a good fit.
- Do not force DaisyUI usage if it increases complexity.

### Tailwind CSS

- Tailwind v4 is the styling foundation.
- Prefer utility classes for component implementation.
- Use `@apply` primarily for base/global layers or repeated low-risk patterns.
- Use `clsx` + `tailwind-merge` for dynamic class composition.
- Keep browser targets aligned with real support policy; do not retain legacy browser targets (e.g., IE11) unless explicitly required by product scope.

### 🎨 Icon Strategy

- Use `astro-icon` for UI icons.
- Prefer a single icon family for consistency (currently Lucide).
- Keep icon size/stroke consistent within each component type.

### Content, MDX, and RSS

- Keep all content collections typed in `src/content.config.ts` with Zod.
- When adding/changing content frontmatter fields, update collection schema and content files in the same PR.
- If blog/news routes are enabled, keep RSS generation (`@astrojs/rss`) in sync with collection schema and published URLs.
- Avoid MDX runtime-side effects in content files; keep MDX focused on content, not app logic.

### Data Validation with Zod

- Use Zod schemas for content collections and boundary validation.
- Keep schema changes version-aware and update content files together.

### Date Handling (`date-fns`)

- Use `date-fns` utilities for date formatting and transformations.
- Store dates in ISO format and parse explicitly.
- Avoid locale/timezone assumptions in sorting and comparisons.

### Third-Party Scripts (`@astrojs/partytown`)

- Use Partytown only for eligible third-party scripts that are safe to offload to web workers.
- Do not move first-party critical logic to Partytown.
- Document forwarded globals/events (for example `dataLayer.push`) when adding analytics vendors.

### Compression and Asset Pipeline

- If `astro-compress` is used, configure it intentionally and validate output with Cloudflare delivery behavior.
- Avoid duplicate optimization layers that increase build complexity without measurable benefit.
- Keep `sharp` available for Astro image optimization workflows.

### Dependency Hygiene

- Do not add a new dependency without clear need and ownership.
- Remove or justify unused dependencies in PRs.
- Keep `pnpm-lock.yaml` updated with dependency changes.

### 🧪 Testing Strategy

#### Required Testing Standards

- Vitest for unit/component tests.
- Playwright for end-to-end flows.
- Astro Container API for Astro component rendering tests where rendering behavior is under test.
- Mock external dependencies where isolation is required.
- Coverage targets should be practical:
  - Target **80%+ on critical business logic/utilities**.
  - Use lower temporary thresholds for early-stage UI-heavy areas, then raise over time.

#### Test Configuration Consistency

- Keep Playwright `baseURL` and `webServer.url` aligned with the actual preview/dev server port.
- Prefer one source of truth for E2E base URL (shared env/config constant) to avoid drift.
- Keep E2E assertions aligned with real UI copy/content to avoid stale tests.

#### Quality Gate Matrix

- Minimum PR gate: `pnpm lint`, `pnpm astro check`, `pnpm run test:run`, `pnpm run build`.
- Required additional gate for route or UX-critical changes: `pnpm run test:e2e:chromium`.
- CI/release gate should run full E2E project matrix when practical.

## 🎯 TypeScript Configuration (STRICT REQUIREMENTS)

### MANDATORY Type Requirements

- Never use `any` unless there is a documented, temporary exception.
- Prefer explicit public types for component props, utility signatures, and integration boundaries.
- Use `import type` when importing types only.
- Leverage Astro built-in types (`HTMLAttributes`, etc.) where appropriate.
- Keep content schemas typed and validated with Zod.
- Do not merge PRs with `astro check` or TypeScript errors.

## SEO Strategy

- Use `astro-seo` for metadata.
- Each indexable page should define:
  - title
  - description
  - canonical URL
  - OG metadata
- Keep sitemap and robots generation enabled for production.
- Do not ship production with placeholder site config (`https://example.com`).
- Keep canonical host/domain, sitemap URLs, and deployed domain aligned.

## 🚀 Performance Optimization

### Image Optimization

- Use `astro:assets` (`Image`) for content images where optimization matters.
- `astro-icon` is preferred for icon rendering.
- Avoid unnecessary client-side JS for static sections.
- Prefer responsive image sizing and avoid shipping oversized assets.

### Cloudflare Runtime Performance

- Preserve Cloudflare Worker compatibility in all server-side code.
- Update `wrangler.toml` `compatibility_date` intentionally (not randomly), and retest after bumps.
- Do not rely on Node-only APIs unless verified under current `nodejs_compat` behavior.

## ⚠️ CRITICAL GUIDELINES (MUST FOLLOW ALL)

1. **Use pnpm** for all package management and scripts.
2. **Keep TypeScript strict and clean**. Do not ignore type errors.
3. **Run Astro type checks** with `pnpm astro check` as part of standard validation.
4. **Keep Cloudflare runtime compatibility** for server-side logic.
5. **Hydrate intentionally**. Use the lightest Astro client directive that meets the requirement.
6. **Validate content schemas with Zod** in `src/content.config.ts`.
7. **Keep internal links valid**. Do not add nav/footer links to routes that do not exist.
8. **Run quality checks before merge**: `pnpm lint`, `pnpm astro check`, `pnpm run test:run`, `pnpm run build`.
9. **Run E2E checks for route/interaction changes** and keep Playwright config synchronized with preview server behavior.
10. **Maintain a coherent styling strategy** across Tailwind, DaisyUI, and custom UI primitives.
11. **Document and track known warnings**. Fix warnings where actionable; do not ignore silently.
12. **Use typed env access and validation** for runtime-critical variables.
13. **Preserve accessibility baseline** (focus states, keyboard navigation, semantic HTML, contrast).
14. **Keep browser support policy explicit and modern** unless product requirements state otherwise.
15. **Keep dependency changes intentional** (justify additions, remove dead packages, update lockfile).

### FORBIDDEN Practices

- **Do not use npm or yarn** in this repository.
- **Do not use `client:load` by default**. Use it only when clearly needed.
- **Do not bypass validation or typing** without explicit rationale.
- **Do not commit broken internal navigation** (dead links to missing routes).
- **Do not suppress lint/type errors** as a shortcut.
- **Do not enforce one library pattern blindly** when it harms clarity or maintainability.
- **Do not keep stale configuration defaults** that break runtime/test parity.
- **Do not claim support for legacy browsers** without explicit product requirement and verified testing.
