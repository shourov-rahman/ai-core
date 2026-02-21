# Product Requirements Document: Shourov Rahman Portfolio Website (Updated)

## Product Overview

A conversion-focused portfolio website for Shourov Rahman, showcasing ecommerce store design & development, paid advertising, and tracking & analytics services. The website is the primary inbound acquisition channel targeting:
- Revenue-generating ecommerce brands
- Growth-focused marketing agencies (white-label)
- Early-stage ecommerce founders
- Brick & mortar businesses transitioning to DTC

The portfolio demonstrates expertise in Shopify/WooCommerce development, landing page design (GemPages/Replo), paid media management, and conversion tracking (Meta Pixel, CAPI, GA4).

---

## Business Objectives

1. Generate qualified inbound leads from the four ICPs with clear routing by intent.
2. Establish credibility via quantified case studies, testimonials, and transparent process.
3. Differentiate with hybrid positioning: design/development + tracking + paid growth.
4. Reach visitor-to-lead CVR of 2.0-3.0% within 6 months of launch (measured on qualified sessions).
5. Support scalable acquisition for project-based ($800-$12,000) and retainer work ($1,500-$8,000/month).

### KPI Baselines and Targets
- **Primary KPI:** Qualified form submissions per month
  - Baseline (Month 1): establish benchmark
  - Target (Month 6): +40% vs Month 1 baseline
- **Secondary KPI:** Visitor-to-lead CVR
  - Target: 2.0-3.0% within 6 months
- **Quality KPI:** % leads matching ICP criteria
  - Target: >=60% qualified leads by Month 4+
- **Funnel KPI:** Calendar-book click-through rate from high-intent CTAs
  - Target: >=6%

---

## Target Audience

### Primary ICP 1: Revenue-Generating Ecommerce Brands ($250K-$1.5M/year)
- **Decision Maker:** Founder, Co-founder, Head of Marketing
- **Pain Points:** Sales plateau, declining ROAS, tracking gaps, low CVR
- **Budget:** $3,000-$12,000 project, $2,000-$8,000/month retainer
- **Emotional Triggers:** Fear of wasted ad spend, unreliable freelancers, pressure to improve margin

### Primary ICP 2: Growth-Focused Marketing Agencies (3-20 employees)
- **Decision Maker:** Agency Owner, Operations Director
- **Pain Points:** Delivery bottlenecks, no in-house ecommerce/tracking specialist, quality inconsistency
- **Budget:** $2,000-$7,000 per project, recurring white-label retainers
- **Emotional Triggers:** Fear of churn from missed delivery timelines

### Secondary ICP 3: Early-Stage Ecommerce Founders (Pre-launch to $50K/year)
- **Decision Maker:** Solo founder
- **Pain Points:** Weak store foundation, missing tracking, unprofitable ad spend
- **Budget:** $800-$2,500 starter packages
- **Emotional Triggers:** Overwhelm, fear of early failure

### Secondary ICP 4: Brick & Mortar/Wholesale Brands ($100K-$800K/year offline)
- **Decision Maker:** Business owner, Managing Director
- **Pain Points:** No digital sales infrastructure, declining offline growth
- **Budget:** $2,000-$8,000 setup, $1,500-$5,000/month management
- **Emotional Triggers:** Urgency to modernize revenue channels

---

## Positioning & Messaging

### Value Proposition
"Profitable ecommerce systems for brands that refuse to waste ad spend. I build high-converting stores and reliable tracking stacks that turn performance data into predictable growth."

### Differentiation
- **Technical + Marketing Hybrid:** One partner covering implementation and performance.
- **Outcome-Led Communication:** Emphasize CVR, ROAS, MER, and revenue lift.
- **Ecommerce Specialization:** Dedicated to ecommerce and DTC, not general web projects.
- **White-Label Delivery:** Explicit agency partnership pathway.

### Key Messaging Pillars
1. **Store Development:** Conversion-ready Shopify/WooCommerce builds.
2. **Tracking Reliability:** Accurate Meta Pixel + CAPI + GA4 measurement.
3. **Paid Media Execution:** Testing, scaling, and performance accountability.
4. **Business Outcomes:** Decisions tied to revenue and efficiency metrics.

---

## Core Features & Functionality

### 1. Hero Section
- Clear headline and subheadline by ICP value
- **Primary CTA:** `Book a Strategy Call`
- **Secondary CTA:** `Get a Free Store Audit`
- Trust indicators (number of projects, verticals, selected outcomes)

### 2. Services Section
Three categories with scope boundaries and "best for" labels:
- Store Design & Development
- Paid Advertising
- Tracking & Analytics

### 3. Case Studies / Portfolio
- 3-5 launch-ready case studies (minimum 3 for MVP)
- Standard template: challenge, solution, measurable results, testimonial, artifacts
- Include timeframes and context for each metric claim

### 4. Testimonials
- 4-8 testimonials (minimum 4 for MVP)
- Include name, role/company, permission status, and result focus

### 5. About Section
- Credibility narrative, expertise, working model
- Certifications and partner badges where verifiable

### 6. Process Section
1. Discovery & Audit
2. Strategy & Scope
3. Implementation
4. QA, Tracking Validation, Launch
5. Iteration & Growth

### 7. FAQ Section
- Pricing model, timeline, scope boundaries, communication cadence, agency model

### 8. Contact Section
- Form fields: Name, Email, Website, Monthly Ad Spend (range), Services Needed, Timeline, Message
- Calendar booking link + business email fallback
- SLA: response within 1 business day

### 9. Blog/Resources
- Optional for MVP; post-launch growth channel

---

## Page Structure & Sitemap

### Core Pages

1. **Homepage (`/`)**
- ICP-aware hero
- Service overview
- Case study highlights
- Testimonials + trust indicators
- Repeated high-intent CTAs

2. **Services (`/services`)**
- Detailed service cards
- Deliverables, pricing ranges, timelines
- Proof blocks linked to case studies

3. **Portfolio (`/portfolio`)**
- Case study listing + filtering by service/industry
- Dynamic pages (`/portfolio/[slug]`) with standardized structure

4. **About (`/about`)**
- Story, method, proof, CTA

5. **Contact (`/contact`)**
- Validated form
- Calendar link
- FAQ snippet for friction reduction

### Optional Pages

6. **Blog (`/blog`)**
7. **Resources (`/resources`)**
8. **Agency Partnership (`/agency-partnership`)**

### Utility Pages
- `/privacy`
- `/terms`
- `/thank-you`
- `/404`

### Sitemap Structure

```text
/
├── /services
├── /portfolio
│   ├── /portfolio/[case-study-slug]
├── /about
├── /contact
├── /agency-partnership (optional)
├── /blog (optional)
├── /resources (optional)
├── /privacy
├── /terms
└── /thank-you
```

---

## User Flows

### Primary Flow: Service-Focused Visitor (ICP 1 & 4)
Homepage -> Services -> Case Study -> Contact/Calendar -> Thank You -> Follow-up

### Secondary Flow: Agency Visitor (ICP 2)
Homepage -> Agency Partnership or Services -> Portfolio Proof -> Contact (agency intent) -> Discovery Call

### Tertiary Flow: Early-Stage Founder (ICP 3)
Homepage -> Starter service detail -> FAQ/pricing clarity -> Contact

### Edge Flows (Required)
- Visitor lands directly on case study from search and converts via inline CTA
- Visitor abandons form and chooses calendar CTA
- Mobile visitor with low bandwidth reaches contact path with no blocked interactions

---

## Technical Requirements

### Platform & Technology Stack

- **Frontend:** Astro
- **Hosting:** Cloudflare Pages
- **Styling:** Tailwind CSS
- **Interactivity:** Minimal client JS; use Astro islands only when necessary
- **Forms:** Cloudflare-compatible approach only (Cloudflare Worker endpoint, Formspree, or similar)
  - Do **not** use Netlify Forms for this deployment target

### Must-Have Integrations
1. GA4 + Google Search Console
2. Meta Pixel + CAPI events for lead actions
3. Calendar booking (Calendly or Cal.com)
4. Lead capture destination (email inbox and optional CRM/Sheet)

### Optional Integrations
- Email marketing tool (Mailchimp/ConvertKit/Klaviyo)
- Video hosting (YouTube/Vimeo)
- Live chat only post-launch if support capacity exists

### Performance Requirements
- Lighthouse: 90+ in Performance, Accessibility, Best Practices, SEO (production pages)
- Core Web Vitals:
  - LCP < 2.5s
  - **INP < 200ms**
  - CLS < 0.1
- JS budget: keep total shipped JS lean and justified per page
- Mobile-first behavior validated at 320px+

### SEO Requirements

**Technical SEO**
- Semantic markup and single H1 per page
- Sitemap and robots configuration
- Canonical URLs
- Schema: Person, Organization, Service, FAQ (where appropriate)

**On-Page SEO**
- Unique title and meta description per page
- Descriptive alt text
- Internal linking between service and case-study pages

**Content Optimization**
- Homepage target: 900-1500 words (quality > length)
- Service pages optimized for intent-specific keywords
- Case studies include real, contextualized metrics

### Analytics & Tracking

**Events**
- CTA clicks, form starts, form submits, calendar clicks, outbound links, scroll milestones

**Primary Conversions**
- Qualified contact form submission
- Calendar booking completed

**Attribution Requirements**
- Persist UTM params to form submission payload
- Capture landing page, referrer, and timestamp

**Reporting Cadence**
- Weekly top-line dashboard
- Monthly funnel and lead-quality review

---

## Constraints

### Budget
- Development: self-built
- Hosting: Cloudflare free tier initially
- Domain: ~$15/year
- Third-party tools: $0-$50/month initially

### Timeline
- Week 1-2: Content and proof asset prep
- Week 3-4: Design and build
- Week 5: Integrations, QA, performance pass
- Week 6: Soft launch + instrumentation validation
- Week 7: Public launch

### Scope

**In Scope (MVP)**
- Pages: Home, Services, Portfolio (>=3 case studies), About, Contact, Privacy, Terms, Thank You
- Functional contact path with spam protection + notifications
- GA4 + Meta tracking with validated conversion events
- SEO and performance baseline

**Out of Scope (MVP)**
- Blog and resources
- Advanced animation-heavy experiences
- Client portal or authentication
- Multilingual support

**Post-Launch**
- Blog rollout
- Lead magnets
- Email nurture
- A/B tests on headline/CTA
- Case study expansion

---

## Launch Checklist

### Pre-Launch

**Content**
- [ ] Final copy and proofread
- [ ] Minimum 3 case studies with verifiable metrics and timeframe
- [ ] Minimum 4 testimonials with permission

**Technical**
- [ ] Cloudflare Pages deployment + DNS + HTTPS
- [ ] Contact flow tested end-to-end (desktop + mobile)
- [ ] GA4 + Meta events firing and validated
- [ ] Sitemap, robots, canonical tags verified
- [ ] 404 and thank-you pages live

**Quality**
- [ ] Lighthouse targets met on key pages
- [ ] Accessibility pass: keyboard nav, visible focus, color contrast
- [ ] Cross-browser sanity check (Chrome, Safari, Firefox)

**Legal/Privacy**
- [ ] Privacy and Terms published
- [ ] Cookie consent policy implemented for required regions

### Launch Day
- [ ] Production smoke test
- [ ] Indexing request in Search Console
- [ ] Launch announcement across primary channels
- [ ] Alerts/reporting enabled

### Post-Launch (Weeks 1-4)
- [ ] Weekly KPI review (traffic, CVR, qualified leads)
- [ ] Identify top drop-off step and implement one funnel improvement per week
- [ ] Capture first 5 lead-feedback interviews and refine messaging

---

## Ownership & Governance

- **Product/Content Owner:** Shourov Rahman
- **Implementation Owner:** Shourov Rahman
- **Analytics Owner:** Shourov Rahman
- **Decision Cadence:** Weekly review during build, biweekly after launch
- **Change Control:** Any scope expansion beyond MVP requires timeline impact note and explicit approval

## Launch Success Criteria

Launch is successful when all conditions are met:
1. MVP pages are live and functional on production domain.
2. Primary conversion tracking is validated (form + calendar).
3. Lighthouse and CWV targets are met on core pages.
4. Contact path produces test and live submissions reliably.
5. At least 3 case studies and 4 testimonials are published with permission.
