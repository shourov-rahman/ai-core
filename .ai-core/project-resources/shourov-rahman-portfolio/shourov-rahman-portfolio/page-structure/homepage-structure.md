# Homepage Structure (`/`)

## Overall Purpose
Primary conversion page targeting all ICPs. Establishes credibility, showcases expertise, and drives visitors to contact form or calendar booking.

---

## Section Flow

### 1. Hero Section (Above the Fold)
**Purpose:** Immediate value communication and trust building with integrated pain point messaging

**Elements:**
- H1 headline (conversion-focused value proposition)
- Subheadline (target audience + core services + pain point)
- Primary CTA button
- Secondary CTA button
- Trust indicators bar:
  - Years active
  - Number of brands served
  - Key metric
  - ICP-specific social proof
- Optional: Video introduction (30-60 seconds)
- Background: Professional photo OR subtle animation

**Layout:**
- Full viewport height
- Centered content
- CTA buttons prominently displayed
- Trust indicators as horizontal bar below CTAs

---

### 2. Services Overview Section
**Purpose:** Quick service category identification

**Elements:**
- Section heading (benefit-focused)
- 3 service cards (equal width):
  1. **Store Design & Development**
     - Icon/illustration
     - Service title
     - 3-4 bullet points
     - "Learn more" link → /services#store-development
  2. **Paid Advertising**
     - Icon/illustration
     - Service title
     - 3-4 bullet points
     - "Learn more" link → /services#paid-advertising
  3. **Tracking & Analytics**
     - Icon/illustration
     - Service title
     - 3-4 bullet points
     - "Learn more" link → /services#tracking-analytics

**Layout:**
- 3-column grid (desktop)
- Stacked cards (mobile)
- Hover effects on cards
- Subtle icons or illustrations

---

### 3. Featured Case Studies Section
**Purpose:** Demonstrate results and build trust through proven outcomes

**Elements:**
- Section heading (results-focused)
- Brief intro (value of case studies)
- 3 featured case study cards:
  - Client name/industry
  - Challenge (1 sentence)
  - Solution (1 sentence)
  - Results (3 key metrics in large text with before → after)
  - Client logo (if available)
  - "Read full case study" CTA → /portfolio/[slug]
- View all case studies CTA → /portfolio

**Layout:**
- 3-column grid (desktop)
- Single column slider (mobile)
- Metric callouts highlighted with color-coded improvements
- Card hover effects
- Client logos within cards for instant credibility

---

### 4. Testimonials Carousel Section
**Purpose:** Build trust through voice of customer

**Elements:**
- Section heading (social proof focused)
- Carousel with 6-8 testimonials:
  - Client quote (2-3 sentences, focused on results and experience)
  - Client name
  - Company name and industry
  - Client photo (if available)
  - Star rating (optional)
- Navigation arrows
- Pagination dots

**Layout:**
- 2 testimonials visible (desktop)
- 1 testimonial visible (mobile)
- Automatic rotation every 5 seconds
- Manual navigation enabled

---

### 5. FAQ Section
**Purpose:** Address objections and common questions

**Elements:**
- Section heading (questions-focused)
- 3 accordion items (most critical questions only):
  1. What are your pricing ranges?
  2. How long does a typical project take?
  3. Do you work with agencies?
- Each item:
  - Question (clickable)
  - Answer (expandable, 2-3 sentences)

**Layout:**
- Single column
- Accordion UI pattern
- All items expandable (none open by default)

---

### 6. Final CTA Section
**Purpose:** Convert warmed-up visitors

**Elements:**
- Bold heading (action-oriented)
- Subheading (value proposition for booking call)
- Primary CTA: "Book Your Call Now" (calendar link)
- Secondary CTA: "Or send me a message" → /contact
- Trust reinforcement: "Join XX+ brands that trust me for their ecommerce growth"
- Social proof: Small client logos or testimonial snippet

**Layout:**
- Centered content
- Full-width background (contrasting color)
- Large CTA buttons
- Ample padding

---

### 7. Footer
**Purpose:** Navigation and legal compliance

**Elements:**
- 3 columns:
  1. **Brand + Legal**
     - Logo
     - Tagline
     - Social media icons
     - Privacy Policy
     - Terms of Service
  2. **Quick Links**
     - Services
     - Portfolio
     - About
     - Contact
     - Blog (if applicable)
  3. **Contact Info**
     - Email
     - Response time
     - Calendar booking link
- Bottom bar:
  - Copyright notice
  - "Built with Astro + Tailwind"
  - Contact email

**Layout:**
- 3-column grid (desktop)
- Stacked columns (mobile)
- Dark background with light text

---

## Mobile Considerations
- Single column layout for all sections
- Sticky header with hamburger menu
- Touch-friendly CTA button sizes (min 44px)
- Testimonial carousel swipe-enabled
- Reduced hero height for viewport fit

## Performance Priorities
- Hero image: WebP format, optimized for LCP
- Lazy load all images below fold
- Defer video loading
- Minimize animation library impact
- Critical CSS inlined

## Key Conversion Elements
- **Primary CTA appearances:** 2 times (Hero, Final CTA)
- **Secondary CTA appearances:** 2 times (Hero, Final CTA)
- **Total CTA count:** 4 main CTAs
- **Average CTA spacing:** Every 1.75 sections
- **Section count:** 7 sections (Hero, Services, Case Studies, Testimonials, FAQ, Final CTA, Footer)
- **UX improvements:** Removed standalone Process section (insights integrated into "What Happens Next" on contact/thank-you pages where more relevant), reduced FAQ to 3 critical questions only, simplified footer from 4 to 3 columns for cleaner navigation
