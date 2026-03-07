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
