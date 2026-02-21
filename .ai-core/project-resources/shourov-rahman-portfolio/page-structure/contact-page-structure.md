# Contact Page Structure (`/contact`)

## Overall Purpose
Primary conversion page for generating qualified leads. Make it easy for prospects to reach out while gathering qualification information and setting proper expectations.

---

## Section Flow

### 1. Hero Section
**Purpose:** Clear call-to-action and expectation setting

**Elements:**
- H1 headline (action-oriented contact heading)
- Subheadline (value of contacting + CTA)
- Breadcrumb navigation: Home > Contact
- Quick value statement: "Get actionable insights even if we don't work together"

**Layout:**
- Centered content
- Reduced hero height
- Clean, welcoming design
- No distracting visuals

---

### 2. Contact Methods Section
**Purpose:** Provide multiple contact options

**Elements:**
- 3 primary contact methods (cards):

  **1. Schedule a Call**
  - Icon: Calendar
  - Description: "Book a free 30-minute strategy session"
  - Benefits:
    - Discuss your specific challenges
    - Get personalized recommendations
    - No obligation or sales pitch
  - CTA: "View Available Times" (calendar link)
  
  **2. Send a Message**
  - Icon: Email
  - Description: "Fill out the form below"
  - Benefits:
    - Detailed project inquiry
    - Attach files or links
    - Response within 24 hours
  - CTA: "Scroll to form" (anchor link)
  
  **3. Direct Email**
  - Icon: Envelope
  - Description: "Prefer email? Reach me directly"
  - Email: your@email.com (clickable mailto link)
  - Response time: "Within 24 hours on business days"

**Layout:**
- 3-column grid (desktop)
- Stacked cards (mobile)
- Equal height cards
- Highlighted "Recommended" badge on Schedule a Call

---

### 3. Main Contact Form Section
**Purpose:** Collect qualified lead information

**Elements:**
- H2: "Send Me a Message"
- Form fields:

  **Personal Information**
  - Name* (text input)
  - Email* (email input, with validation)
  - Phone (optional, text input with country code)
  
  **Business Information**
  - Business/Brand Name* (text input)
  - Website URL (optional, URL input)
  - Monthly Ad Spend (dropdown):
    - Not running ads yet
    - $0-$2,000
    - $2,000-$10,000
    - $10,000-$50,000
    - $50,000+
  - Industry (optional, dropdown):
    - Fashion & Apparel
    - Health & Beauty
    - Home & Garden
    - Electronics
    - Food & Beverage
    - Other
  
  **Project Information**
  - Services Needed* (checkboxes, multi-select):
    - [ ] Store Design/Development
    - [ ] Landing Page Design
    - [ ] Paid Advertising (Facebook/Instagram)
    - [ ] Paid Advertising (Google)
    - [ ] Tracking & Analytics Setup
    - [ ] Store Audit
    - [ ] Ongoing Management/Retainer
    - [ ] Not sure—need consultation
  - I am a: (radio buttons):
    - ( ) Brand/Business Owner
    - ( ) Marketing Agency
    - ( ) Startup/Entrepreneur
    - ( ) Other
  - Project Budget (optional, dropdown):
    - $500-$2,000
    - $2,000-$5,000
    - $5,000-$10,000
    - $10,000+
    - Not sure yet
  - Timeline (optional, dropdown):
    - ASAP (within 2 weeks)
    - 2-4 weeks
    - 1-2 months
    - 3+ months
    - Just exploring options
  - Message* (textarea, 3-5 rows):
    - Placeholder: "Tell me about your challenges, goals, and what you're looking to achieve..."
  
  **Privacy & Consent**
  - [ ] I agree to the Privacy Policy* (required checkbox)
  
  **Anti-Spam**
  - Honeypot field (hidden from users)
  - reCAPTCHA v3 (invisible, background)
  
  **Submit Button**
  - "Send Message" (large, prominent)
  - Loading state on submit
  - Success/error messaging

**Layout:**
- Single column form
- Grouped sections with visual separation
- Clear labels and placeholders
- Inline validation
- Required fields marked with *
- Mobile-optimized inputs
- Adequate spacing between fields
- Privacy note below form: "Your information is safe and will never be shared. See our [Privacy Policy](/privacy)"

---

### 4. What Happens Next Section
**Purpose:** Reduce anxiety and set expectations

**Elements:**
- H2: "What Happens Next?"
- 3-step process:
  
  1. **I'll Review Your Inquiry** (within 24 hours)
     - I'll review your message and website
     - Prepare initial thoughts and questions
  
  2. **You'll Receive a Response** (within 24-48 hours)
     - Personalized email response
     - Potential fit assessment
     - Next step suggestions
  
  3. **We'll Schedule a Call** (if there's a fit)
     - 30-minute strategy discussion
     - Actionable recommendations
     - Proposal if we decide to move forward

**Layout:**
- 3-column grid (desktop)
- Vertical timeline (mobile)
- Icons for each step
- Connecting lines or arrows

---

### 5. FAQ Section
**Purpose:** Address common concerns before submission

**Elements:**
- H2: "Common Questions"
- 4 accordion items (most critical):
  
  1. **How quickly will I hear back?**
     - Within 24 hours on business days (Fri-Wed, Bangladesh time)
  
  2. **Do you offer free consultations?**
     - Yes, all initial strategy calls are free with no obligation
  
  3. **What's your pricing?**
     - Project-based: $800-$12,000 depending on scope
     - Retainers: $1,500-$8,000/month
     - Custom quotes provided after discovery call
  
  4. **Do you work with agencies?**
     - Yes, see /agency-partnership for white-label services

- Single column accordion
- First item open by default
- Smooth expand/collapse animation

---

### 6. Footer
(Same as homepage footer)

---

## Form Technical Requirements

### Validation
- **Client-side:**
  - Required field validation
  - Email format validation
  - URL format validation (for website)
  - Character limits for textarea
- **Server-side:**
  - All client-side validations re-checked
  - Sanitization of inputs
  - Anti-spam honeypot check
  - reCAPTCHA verification

### Error Handling
- Inline error messages (red text below field)
- General error message if submission fails
- Clear instructions for fixing errors

### Success State
- Replace form with success message, or
- Redirect to /thank-you page
- Success message content:
  - "Thanks! I'll be in touch within 24 hours."
  - Option to schedule call immediately
  - Social media follow CTAs

### Email Notifications
- **To You:** Instant notification with all form data
- **To User (autoresponder):**
  - Thanks for inquiry
  - What to expect next
  - Response timeframe
  - Link to book call
  - Link to portfolio while they wait

### Integrations
- Email marketing tool (Mailchimp, ConvertKit, Klaviyo)
- CRM (HubSpot, Pipedrive, or Google Sheets)
- Calendar booking (Calendly, Cal.com)
- Analytics event tracking (GA4, Meta Pixel)

---

## Analytics & Tracking

### Events to Track
- Page view: /contact
- Form field interactions:
  - Email field focus
  - Services checkboxes selected
  - Budget selected
- Form submission attempt
- Form submission success
- Form submission error
- Calendar booking click
- Direct email click
- Alternative contact clicks

### Conversion Goals
- Primary: Form submission
- Secondary: Calendar booking click
- Tertiary: Direct email click

---

## SEO Optimization
- **Title Tag:** "Contact Shourov Rahman | Ecommerce Development & Paid Ads Specialist"
- **Meta Description:** "Get in touch to discuss your ecommerce project. Free 30-minute strategy call. Shopify development, Facebook/Google Ads, and conversion tracking expertise. Response within 24 hours."
- **H1:** "Let's Discuss Your Ecommerce Growth"
- **Schema:** ContactPage

---

## Mobile Considerations
- Large, touch-friendly form inputs (min 44px height)
- Simplified dropdowns with mobile-friendly UI
- Sticky submit button (optional)
- Reduced field count on mobile (consider progressive disclosure)
- Auto-zoom prevention on input focus

---

## Accessibility
- Proper label associations (for/id)
- ARIA labels where needed
- Keyboard navigation support
- Focus states clearly visible
- Error announcements for screen readers
- High contrast for form elements

---

## Performance Priorities
- Minimal JavaScript for form validation
- Fast initial page load (no heavy libraries)
- Instant form UI feedback
- Optimized calendar embed (lazy load if iframe)
- Lightweight reCAPTCHA implementation

---

## Key Conversion Elements
- **CTA Count:** 3 (Hero, Contact methods cards, Form submit)
- **Primary Action:** Form submission or calendar booking
- **Trust Indicators:** What Happens Next, response time promises, privacy note
- **Friction Reducers:** Multiple contact options, optional fields, free consultation emphasis
- **Section count:** 6 sections (Hero, Contact Methods, Form, What Happens Next, FAQ, Footer)
- **UX improvements:** Streamlined form with fewer required fields to reduce abandonment (phone, website, industry, budget, timeline now optional), reduced FAQ from 8 to 4 most critical questions, maintained qualification capability through optional fields while lowering barrier to entry

---

## A/B Test Ideas (Post-Launch)
- Long form vs. short form (name, email, message only)
- Form before calendar vs. calendar before form
- Single vs. multi-step form
- Different headline variations
- With/without budget question
