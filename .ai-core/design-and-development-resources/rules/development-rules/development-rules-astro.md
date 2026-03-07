---
trigger: always_on
---

## Core Development Philosophy

### KISS (Keep It Simple, Stupid)

Simplicity should be a key goal in design. Choose straightforward solutions over complex ones whenever possible. Simple solutions are easier to understand, maintain, and debug.

### YAGNI (You Aren't Gonna Need It)

Avoid building functionality on speculation. Implement features only when they are needed, not when you anticipate they might be useful in the future.

### Design Principles

- **Islands Architecture**: Ship minimal JavaScript, hydrate only what needs interactivity.
- **Performance by Default**: Static-first with selective hydration for optimal performance.
- **Content-Driven**: Optimized for content-heavy websites with type-safe content management.
- **Zero JavaScript by Default**: Only ship JavaScript when explicitly needed.
- **Utility-First Styling**: Leverage Tailwind CSS to implement style.

## 🤖 AI Assistant Guidelines

### Context Awareness
- When implementing features, always check existing patterns first.

### Common Pitfalls to Avoid
- Over-hydrating components that could be static.
- Ignoring Astro's partial hydration benefits.
- Creating duplicate functionality across different framework islands.
- Overwriting existing integrations without checking alternatives.
- Not using Tailwind's `@apply` or utility classes for reusability.

### Workflow Patterns

- Use "think hard" for hydration strategy decisions.
- Break complex interactive components into smaller, focused islands.
- Validate hydration requirements before implementation.

## 🧱 Code Structure & Modularity

### File and Component Limits

- **Never create a file longer than 500 lines of code.** If approaching this limit, refactor by splitting into modules or helper components.
- **Astro components should be under 200 lines** for better maintainability.
- **Functions should be short and focused sub 50 lines** and have a single responsibility.
- **Organize code by feature and framework**, keeping related components together.

### Environment Configuration (astro:env)

- **Type-Safe Environment Variables**: Validation and TypeScript support.
- **Runtime Validation**: Automatic validation at build time.
- **Client/Server Separation**: Clear distinction between public and private variables.

## 🏗️ Project Structure

```
├── e2e/                             # E2E tests (Playwright)
│   ├── fixtures/
│   └── tests/
│
├── public/                          # Static assets (no processing)
│   ├── fonts/                       # Web fonts (woff2)
│   ├── images/                      # Favicons, OG, static images
│   └── robots.txt
│
├── src/
│   ├── actions/                     # Server actions
│   │   └── index.ts                 # Exports `server`
│   │
│   ├── assets/                      # Build-time optimized assets
│   │   ├── branding/                # Logos, brand SVGs
│   │   └── images/                  # Optimized content images
│   │
│   ├── components/
│   │   ├── common/                  # Primitives (Button, Input)
│   │   │   └── __tests__/
│   │   │
│   │   ├── islands/                 # Hydrated components
│   │   │   └── __tests__/
│   │   │
│   │   ├── layout/                  # Header, Footer, Nav
│   │   │
│   │   ├── seo/                     # Meta, JSON-LD, OG
│   │   │
│   │   └── ui/                      # Composite UI (Modal, Tabs)
│   │       └── __tests__/
│   │
│   ├── config/                      # App config (non-env)
│   │   ├── constants.ts             # Global constants
│   │   ├── site.ts                  # Site metadata
│   │   └── navigation.ts            # Menus, links
│   │
│   ├── data/                        # Content files
│   │   ├── blog/                    # Blog posts
│   │   ├── authors/                 # Author data
│   │   ├── docs/                    # Docs pages
│   │   └── legal/                   # Legal pages
│   │
│   ├── features/                    # Domain modules
│   │   ├── auth/
│   │   │   ├── components/          # Auth UI
│   │   │   ├── services/            # Auth logic
│   │   │   ├── types.ts
│   │   │   ├── utils.ts
│   │   │   └── __tests__/
│   │   │
│   │   ├── blog/
│   │   │   ├── components/          # Blog UI
│   │   │   ├── utils/               # Blog helpers
│   │   │   └── __tests__/
│   │   │
│   │   └── shop/
│   │       ├── components/          # Shop UI
│   │       ├── services/            # Payments
│   │       ├── types.ts
│   │       └── __tests__/
│   │
│   ├── i18n/                        # Internationalization
│   │   ├── config.ts                # Locale config
│   │   ├── locales/                 # Translation files
│   │   │   ├── en.json
│   │   │   └── es.json
│   │   └── utils.ts                 # i18n helpers
│   │
│   ├── layouts/                     # Page layouts
│   │   ├── RootLayout.astro         # Base HTML shell
│   │   ├── PageLayout.astro         # Default wrapper
│   │   ├── BlogLayout.astro         # Blog layout
│   │   └── DocsLayout.astro         # Docs layout
│   │
│   ├── pages/                       # Routes
│   │   ├── index.astro
│   │   ├── about.astro
│   │   ├── 404.astro
│   │   │
│   │   ├── api/                     # API endpoints
│   │   │   ├── health.ts            # Health check
│   │   │   ├── newsletter.ts
│   │   │   ├── auth/
│   │   │   │   ├── login.ts
│   │   │   │   └── logout.ts
│   │   │   └── webhooks/
│   │   │       └── stripe.ts
│   │   │
│   │   ├── blog/
│   │   │   ├── index.astro
│   │   │   ├── [...slug].astro      # Dynamic blog route
│   │   │   └── rss.xml.ts
│   │   │
│   │   ├── docs/
│   │   │   └── [...slug].astro
│   │   │
│   │   └── shop/
│   │       ├── index.astro
│   │       ├── [product].astro
│   │       └── checkout.astro
│   │
│   ├── services/                    # External clients
│   │   ├── db/                      # Database layer
│   │   └── integrations/            # Stripe, email, CDN
│   │
│   ├── styles/                      # Global styles
│   │   ├── global.css               # Base + Tailwind
│   │   └── fonts.css                # Font declarations
│   │
│   ├── types/                       # Global types
│   │   ├── global.d.ts              # Ambient types
│   │   └── models/                  # Domain models
│   │
│   ├── utils/                       # Pure utilities
│   │   ├── date.ts                  # Date helpers
│   │   ├── string.ts                # String helpers
│   │   ├── validation.ts            # Validation schemas
│   │   └── __tests__/
│   │
│   ├── content.config.ts            # Content collections
│   ├── env.d.ts                     # Env types
│   └── middleware.ts                # App middleware
├── .env.example                     # Env template
├── .env                             # Local env (ignored)
└──
```

## Libraries and Framework Guide

### Alpine.js
- Use Alpine only for lightweight UI interactivity.
- No global state management.
- No large business logic.
- Prefer declarative `x-data` patterns.
- Avoid nested Alpine components unless necessary.
- Hydration should be minimal.


### Daisy UI
- DaisyUI will be used as the primary component layer on top of Tailwind.
- Only override DaisyUI components via Tailwind utility extensions (no direct CSS overrides).
- Theme configuration must be centralized in `tailwind.config.ts`.
- Custom components should use `class-variance-authority (cva)` for variant management.
- Do not mix raw Tailwind component patterns when DaisyUI component exists.

### Tailwind CSS
- Tailwind v4 is used.
- No legacy @apply for complex component styling.
- Use utility-first approach.
- Prefer `tailwind-merge` when composing dynamic classes.
- Use `clsx` + `tailwind-merge` for conditional class composition.

### 🎨 Icon Strategy

- **MUST use `astro-icon`**: Use the `astro-icon` package for all icons to ensure SVG optimization and consistency.
- **Icon Collection**: Prefer using standard collections (e.g., `lucide`) via `astro-icon`. Avoid using raw SVGs or emojis for UI icons.

### Data Validation with Zod
- Use zod best practices for data validate

### 🧪 Testing Strategy

#### MUST Meet These Testing Standards

- **Minimum 80% code coverage** (no exceptions)
- **Vitest is required** for unit and component tests
- **Astro Container API must be used** for component rendering
- **Playwright is required** for integration tests
- **Islands must be tested separately** from static components
- **External dependencies must be mocked** where appropriate


## 🎯 TypeScript Configuration (STRICT REQUIREMENTS)

### MANDATORY Type Requirements

- **NEVER use `any` type** - use `unknown` if type is truly unknown.
- **MUST use explicit type imports** with `import type { }` syntax.
- **MUST define props interfaces** for all Astro components.
- **MUST use Astro's built-in types** like `HTMLAttributes`, `ComponentProps`.
- **MUST validate content with Zod schemas** in content collections.

## SEO Strategy
- Use `astro-seo` for all pages
- Each page must define:
  - title
  - description
  - canonical URL
  - OG metadata
- Sitemap auto-generated
- Robots configured for production only


## 🚀 Performance Optimization

### Image Optimization (MANDATORY)

Use `astro:assets` for all images to ensure proper optimization and format conversion.

## ⚠️ CRITICAL GUIDELINES (MUST FOLLOW ALL)

1.  **MUST use pnpm** - Never use npm or yarn for package management.
2.  **ENFORCE TypeScript strict mode** - Maintain zero TypeScript errors.
3.  **VALIDATE all content with Zod** - Content collections MUST have schemas.
4.  **MUST understand hydration strategy** - Use appropriate client directives (`client:visible`, `client:idle`).
5.  **Use Alpine.js for interactivity** - Prefer lightweight Alpine.js over heavy frameworks for simple dynamic behavior.
6.  **MAXIMUM 500 lines per file** - Split large components in `src/components`.
7.  **Structure code in `src/utils`** - Place helpers and logic in `src/utils` (not `src/lib` unless configured otherwise).
8.  **MUST optimize images** - Use Astro's `Image` component.
9.  **MUST validate environment variables** - Use `astro:env` if configured, or maintain strict type checks.
10. **NEVER use `any` type** - leverage Astro's built-in type safety.
11. **ALWAYS Lint & Format** - Run `pnpm lint` and `pnpm format` before committing.
12. **Cloudflare Compatibility** - Ensure all server-side code is compatible with Cloudflare Workers runtime.
13. **MINIMUM 80% test coverage** - Use Vitest with Container API

### FORBIDDEN Practices

- **NEVER use npm or yarn** - MUST use pnpm.
- **NEVER use client:load** without justification.
- **NEVER skip content validation**.
- **NEVER mix concerns** - separate static content from interactive islands.
- **NEVER use `any` type**.
- **NEVER ignore build warnings** - address all issues.
- **NEVER commit unformatted code**.
