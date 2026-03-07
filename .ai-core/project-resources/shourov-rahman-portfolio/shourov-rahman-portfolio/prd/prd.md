# Product Requirements Document (PRD)

## Shourov Rahman — Portfolio Website

---

## 1. Product Overview

A professional portfolio website for Shourov Rahman, an ecommerce specialist offering store design & development, paid advertising, and tracking & analytics services. The site serves as the primary lead-generation and authority-building channel, designed to convert visitors into booked discovery calls.

---

## 2. Business Objectives

- **Primary:** Generate booked calls from qualified ecommerce founders and agencies
- **Secondary:** Build authority and credibility as a specialist in building ecommerce store, ecommerce CRO, paid ads, and tracking
- **KPI:** Discovery call bookings (primary conversion event)

---

## 3. Target Audience

### ICP-1 — Early-Stage Ecommerce Founders

- Pre-launch to $50K/year revenue; US, UK, Canada, Australia
- Pain: amateur store, no tracking, wasting ad budget
- Budget: from $200/project

### ICP-2 — Revenue-Generating Ecommerce Brands Scaling

- Shopify / WooCommerce brands spending $1K–$25K/month on ads; US, UK, EU, Australia
- Pain: low CVR, broken tracking, unreliable data, plateaued growth
- Budget: $200–$1,000/month retainers

### ICP-3 — Growth-Focused Marketing Agencies

- 3–20 person agencies needing a backend ecommerce & tracking specialist; US, UK, EU, Australia
- Pain: no in-house ecommerce expert, delivery bottlenecks
- Budget: $5,000+/project, recurring subcontract retainers

---

## 4. Positioning & Messaging

**Core Value Proposition:**

> _I help ecommerce businesses build stores that actually convert — and scale them with paid ads and proper tracking so every ad spend works._

**Tone:** Confident, direct, results-focused. No fluff.

**Differentiation:** Specialist (not generalist) — combines store design, paid ads, and tracking in one service offering, eliminating the need to hire multiple freelancers.

---

## 5. Core Features & Functionality

| Feature                            | Description                                                                |
| ---------------------------------- | -------------------------------------------------------------------------- |
| Hero section with CTA              | Clear value proposition + primary CTA to book a call                       |
| Services showcase                  | Three core service areas with benefits and outcomes                        |
| Portfolio / Case studies           | Proof of work with results where possible                                  |
| About section                      | Brief credibility-building bio                                             |
| Contact / Booking                  | Discovery call through calendar embed and send email option through resend |
| Blog (optional)                    | Authority-building content for SEO                                         |
| Agency Partnership page (optional) | Dedicated page targeting ICP-3 agencies                                    |
| Testimonials / Social proof        | Client results, logos, or quotes                                           |
| Thank You page                     | Post-form-submission confirmation                                          |
| Legal pages                        | Privacy Policy, Terms of Service                                           |
| 404 page                           | Custom error page                                                          |

---

## 6. Page Structure & Sitemap

**Core Pages**

- `/` — Homepage
- `/services` — Services
- `/portfolio` — Portfolio / Case Studies
- `/about` — About
- `/contact` — Contact

**Optional Pages**

- `/agency-partnership` — Agency Partnership
- `/blog` — Blog (index)
- `/blog/[slug]` — Blog post

**Utility Pages**

- `/thank-you` — Thank You (post-booking/form)
- `/404` — 404 Not Found
- `/privacy-policy` — Privacy Policy
- `/terms-of-service` — Terms of Service

---

## 7. User Flows

### Primary Flow — Booking a Call

1. Visitor lands on Homepage (organic, referral, or social)
2. Reads value proposition + skims services/proof
3. Clicks primary CTA ("Book a Call" / "Work With Me")
4. Lands on Contact page or calendar embed
5. Submits booking → redirected to Thank You page

### Secondary Flow — Agency Partnership

1. Agency owner lands via referral or targeted outreach link
2. Visits `/agency-partnership` page
3. Reviews white-label/subcontract offer
4. Books a partnership call via CTA

### Discovery Flow — Portfolio

1. Visitor explores `/portfolio` for proof of work
2. Reviews case studies and results
3. Clicks CTA to book a call or visit contact page

---

## 8. Technical Requirements

### Platform & Technology Stack

| Layer           | Choice                                 |
| --------------- | -------------------------------------- |
| Framework       | Astro                                  |
| Hosting         | Cloudflare Pages                       |
| Styling         | Tailwind CSS                           |
| Language        | TypeScript (where applicable in Astro) |
| Content         | Markdown / MDX (for blog posts)        |
| Package Manager | pnpm                                   |

### Must-Have Integrations

| Integration              | Purpose                                    |
| ------------------------ | ------------------------------------------ |
| Booking tool             | Discovery call scheduling (e.g., Calendly) |
| Email Integrations       | Resend                                     |
| Meta Pixel               | Conversion tracking for paid ads           |
| Google Analytics 4 (GA4) | Website analytics                          |
| Google Tag Manager (GTM) | Tag management                             |

### Optional Integrations

| Integration                   | Purpose                    |
| ----------------------------- | -------------------------- |
| Meta Conversion API (CAPI)    | Server-side event tracking |
| CRM (e.g., Notion, Airtable)  | Lead management            |
| Email marketing (e.g., Brevo) | Lead nurture               |

### Performance Requirements

- Lighthouse Performance score: ≥ 90
- Core Web Vitals: pass (LCP < 2.5s, CLS < 0.1, INP < 200ms)
- Static site generation (SSG) via Astro for maximum speed
- Images: optimized via Astro's `<Image />` component (WebP/AVIF)
- No render-blocking scripts; defer/async all third-party scripts

### SEO Requirements

- Unique `<title>` and `<meta description>` per page
- Single `<h1>` per page with proper heading hierarchy
- Semantic HTML5 elements
- Canonical tags on all pages
- XML sitemap (`/sitemap.xml`) via `@astrojs/sitemap`
- `robots.txt`
- Open Graph and Twitter Card meta tags
- Structured data (JSON-LD): `Person`, `WebSite`, `Service`

### Analytics & Tracking

- GA4 — pageviews, sessions, engagement
- GTM — container for all marketing tags
- Meta Pixel — standard events: PageView, Contact, Lead
- Custom events: CTA button clicks, form submissions, calendar opens

---

## 9. Constraints

### Budget

- Self-funded; low-cost or free tooling preferred
- Cloudflare Pages free tier
- Open-source / free pnpm packages only unless essential

### Timeline

- MVP launch target: as soon as core pages are complete
- Phase 1 (MVP): Homepage, Services, Portfolio, About, Contact, utility pages
- Phase 2 (Post-launch): Blog, Agency Partnership page, CAPI integration

### Scope

- Single-person portfolio site (no multi-user, no CMS admin panel required at launch)
- No ecommerce / payment processing on the site itself
- English language only at launch

---

## 10. Launch Checklist

- [ ] All core pages built and responsive (mobile-first)
- [ ] Booking CTA functional (calendar embed or form working)
- [ ] Thank You page redirects correctly post-submission
- [ ] Meta Pixel installed and firing PageView event
- [ ] GA4 + GTM installed and configured
- [ ] All pages have unique title tags and meta descriptions
- [ ] XML sitemap generated and accessible at `/sitemap.xml`
- [ ] `robots.txt` in place
- [ ] Open Graph tags set for Homepage (minimum)
- [ ] Lighthouse Performance ≥ 90 on mobile
- [ ] Core Web Vitals passing
- [ ] Custom 404 page live
- [ ] Privacy Policy and Terms of Service pages live
- [ ] SSL active (Cloudflare default)
- [ ] Domain connected to Cloudflare Pages
- [ ] Deployed to production on Cloudflare Pages
