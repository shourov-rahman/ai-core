# Project Architecture

Last updated: 2026-02-22
Project: `shourov-rahman-portfolio`

## 1. Project Goal

This repository implements a conversion-focused personal portfolio website for ecommerce consulting services (store development, paid advertising, tracking/analytics). The business intent is lead generation via portfolio proof and contact CTAs.

Current delivery status is an MVP homepage implementation with shared layout/components and static content sources. Most planned routes from PRD are not implemented yet.

## 2. Current Implementation Scope

- Implemented route:
  - `/` from `src/pages/index.astro`
- Implemented homepage sections:
  - Hero, Services, Case Studies, Testimonials, FAQ, Final CTA
- Shared layout:
  - Global SEO, navbar, footer, dark mode bootstrap script
- Data source:
  - `src/data/homepage.json`

Not implemented in runtime routing (despite linked navigation/footer URLs):
- `/services`, `/portfolio`, `/about`, `/contact`, `/blog`, `/privacy`, `/terms`

## 3. High-Level Runtime Architecture

```text
Browser Request
  -> Cloudflare Pages/Worker runtime (Astro SSR adapter)
    -> Astro page: src/pages/index.astro
      -> Layout + section components
        -> Static JSON content (src/data/homepage.json)
        -> Tailwind v4 styles (src/styles/global.css)
        -> Alpine.js directives for UI interactivity
  <- Server-rendered HTML/CSS/JS
```

Notes:
- Deployment target is Cloudflare via `@astrojs/cloudflare` adapter.
- Session driver is configured for Cloudflare KV binding (`SESSION`), but app code currently has no explicit session read/write logic.

## 4. Tech Stack

Core:
- Astro 5 (`astro`)
- TypeScript strict (`astro/tsconfigs/strict`)
- Tailwind CSS v4 (`tailwindcss`, `@tailwindcss/vite`)
- Alpine.js (`@astrojs/alpinejs`, `alpinejs`)

Runtime/deploy:
- Cloudflare adapter (`@astrojs/cloudflare`)
- Wrangler for local preview (`wrangler pages dev dist`)
- Cloudflare KV namespace binding (`SESSION`) configured in `wrangler.toml`

Content and SEO:
- Astro content collections (`src/content.config.ts`) with Zod schemas
- `astro-seo`, `@astrojs/sitemap`, `astro-robots-txt`
- MDX integration enabled (`@astrojs/mdx`)

UI/utilities:
- `astro-icon` with Lucide icon set
- `class-variance-authority`, `clsx`, `tailwind-merge` for composable class variants (`src/components/ui/Button.astro`, `src/utils/cn.ts`)

Testing/tooling:
- Unit/component tests: Vitest + happy-dom
- E2E tests: Playwright
- Lint/format: ESLint + Prettier

## 5. Repository Structure (Current)

```text
src/
  components/
    home/          # Homepage sections
    layout/        # Navbar, Footer
    ui/            # Reusable primitives (Button, Card, Section, Grid, ThemeToggle)
  data/
    homepage.json  # Primary homepage content source
    blog/          # Markdown content collection source
    docs/          # Markdown docs content collection source
  layouts/
    Layout.astro   # Global HTML scaffold and SEO setup
  pages/
    index.astro    # Only implemented route
  styles/
    global.css
  utils/
    cn.ts
```

Other key files:
- `astro.config.mjs`
- `wrangler.toml`
- `playwright.config.ts`
- `vitest.config.ts`

## 6. Render and Data Flow

1. Request hits `/`.
2. `src/pages/index.astro` composes the homepage section components inside `src/layouts/Layout.astro`.
3. Each section reads content from `src/data/homepage.json` (direct imports in component frontmatter).
4. Layout injects global SEO metadata with `astro-seo` (`canonical` from `Astro.url`).
5. Dark-mode bootstrapping script applies `dark` class from `localStorage.theme` and system preference.
6. Alpine directives handle interactive behavior:
   - Mobile nav open/close
   - FAQ accordion expand/collapse
   - Testimonials carousel autoplay and navigation

## 7. Database and Schema

### 7.1 Persistent Database

No relational or document database is implemented in this codebase today.

### 7.2 Cloudflare KV

Configured:
- `SESSION` binding declared in `wrangler.toml`
- Astro session driver configured as `cloudflare-kv-binding` in `astro.config.mjs`

Current usage in app code:
- No explicit session reads/writes found in `src/` route/component logic.

### 7.3 Content Schemas

Defined in `src/content.config.ts`:

- `blog` collection (`src/data/blog/**/*.{md,mdx}`):
  - `title: string`
  - `description: string`
  - `pubDate: date`
  - `updatedDate?: date`
  - `heroImage?: string`

- `docs` collection (`src/data/docs/**/*.{md,mdx}`):
  - `title: string`
  - `description: string`

### 7.4 Homepage JSON Contract

Primary object keys in `src/data/homepage.json`:
- `global-navigation-header`
- `hero`
- `services-overview`
- `featured-case-studies`
- `testimonials-carousel`
- `faq`
- `final-cta`
- `footer`

Current content cardinality snapshot:
- Navigation links: 5
- Service cards: 3
- Featured case studies: 3
- Testimonials: 6
- FAQ items: 3

## 8. Integration Points

Configured integrations in `astro.config.mjs`:
- `mdx()`
- `sitemap()`
- `partytown()` forwarding `dataLayer.push`
- `alpinejs()`
- `icon()`
- `robotsTxt()`

Integration observations:
- `site` is currently `https://example.com`; this affects canonical URL and sitemap correctness until replaced with production domain.
- `partytown` forwarding is prepared, but no active analytics script integration is implemented in source pages/components.
- Image service is set to `compile` via Cloudflare adapter; no `astro:assets` image components are used in current UI.

## 9. Core Module Responsibilities

`src/layouts/Layout.astro`
- Global document shell, metadata, dark mode bootstrap, `Navbar`/`Footer` placement.

`src/components/layout/Navbar.astro`
- Reads nav items from JSON.
- Desktop and mobile navigation states managed via Alpine.

`src/components/layout/Footer.astro`
- Reads footer copy/links/socials from JSON.

`src/components/home/*.astro`
- Section rendering from JSON content.
- `Testimonials.astro` includes Alpine carousel logic with autoplay timer.
- `FAQ.astro` includes accordion state with Alpine directives.

`src/components/ui/Button.astro`
- Variant-based button system via `class-variance-authority` + `cn`.

`src/utils/cn.ts`
- Tailwind-safe class composition (`clsx` + `tailwind-merge`).

## 10. Testing and Verification Status

Unit/component tests:
- Command: `pnpm run test:run`
- Status on 2026-02-22: passing (`2` files, `10` tests)
- Note: Vitest reports a hanging-process warning after completion.

E2E tests:
- Command: `pnpm run test:e2e -- --project=chromium`
- Status on 2026-02-22: failed before test execution (`webServer` timeout)
- Root cause:
  - `playwright.config.ts` waits for `http://localhost:4321`
  - `pnpm run preview` (`wrangler pages dev dist`) starts on `http://localhost:8788` by default

Additional test drift risk:
- Existing Playwright test expects homepage heading text `"Hello World"` (`e2e/example.spec.ts`), but the real homepage hero heading is now marketing copy from `homepage.json`.

## 11. Known Gaps and Risks

- Route coverage mismatch:
  - Navigation/footer link to pages not implemented under `src/pages/`.
- SEO baseline not production-ready:
  - `site` still set to `example.com`.
- Test configuration mismatch:
  - Playwright `baseURL`/`webServer.url` do not align with Wrangler preview port.
- Legacy placeholder data:
  - Several social/profile URLs in `homepage.json` are empty strings.

## 12. Backend, Agent, and LLM Architecture Status

- Backend API routes: none implemented.
- Database-backed domain services: none implemented.
- Agent architecture: none implemented in runtime app.
- LLM integration layer: none implemented in runtime app.

If agent/LLM features are planned, they would need new runtime entry points (API routes or server actions), provider integration, prompt/schema contracts, and persistence/observability design.

## 13. Engineer Quickstart

Install and run:

```bash
pnpm install
pnpm dev
```

Build and preview:

```bash
pnpm build
pnpm preview
```

Quality checks:

```bash
pnpm lint
pnpm run test:run
pnpm run test:e2e
```

## Related Docs

- `.ai-core/project-resources/shourov-rahman-portfolio/docs/README.md`
- `.ai-core/project-resources/shourov-rahman-portfolio/prd/prd.md`
- `.ai-core/project-resources/shourov-rahman-portfolio/prd/prd-reviewed.md`
