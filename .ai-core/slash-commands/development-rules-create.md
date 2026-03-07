---
description: development guide create
---

Create a comprehensive development guide for a [PROJECT TYPE] built with [FRAMEWORK/LANGUAGE(S)].

## Project Context
- **Stack**: [e.g., React + TypeScript + Vite / Astro + Tailwind / SvelteKit + Prisma]
- **Deployment target**: [e.g., Vercel, Cloudflare Workers, Node server, static CDN]
- **Team size / experience level**: [e.g., solo, small team, mixed experience]
- **Project stage**: [e.g., greenfield, existing codebase, migration]

## Guide Sections to Include

### 1. Core Philosophy
- Primary design principles (e.g., KISS, YAGNI, progressive enhancement)
- Performance and architecture stance (e.g., static-first, server-first, SPA)
- Styling strategy (e.g., utility-first, CSS modules, design tokens)

### 2. Project Structure
- Directory layout with purpose annotations
- Feature/domain organization rules
- File and component size guidelines
- When to split vs. colocate

### 3. Framework-Specific Patterns
- Recommended component patterns and conventions
- State management approach and boundaries
- Routing and data fetching strategy
- Hydration or rendering strategy (if applicable)

### 4. Libraries & Tooling
- Core dependencies and their intended role
- Icon, animation, and utility library choices
- What problems each dependency solves (no unjustified additions)
- Dependency hygiene rules

### 5. Type Safety
- Strictness level and enforced rules
- How to type component props, utilities, and API boundaries
- Schema validation approach (e.g., Zod, Valibot)
- Forbidden patterns (e.g., `any`, implicit returns)

### 6. Styling Guide
- CSS methodology and tooling
- How to handle dynamic classes
- Theme and design token structure
- Component-level vs. global style rules

### 7. Testing Strategy
- Unit test tool and conventions (e.g., Vitest, Jest)
- Component/integration test approach
- E2E test tool and scope (e.g., Playwright, Cypress)
- Coverage expectations per layer

### 8. Environment & Configuration
- How env variables are structured and validated
- Client vs. server variable boundaries
- Secrets handling rules
- Local/CI/prod parity requirements

### 9. Performance Optimization
- Asset and image handling rules
- JS bundle strategy (what ships to the client and why)
- Runtime-specific constraints (e.g., edge runtime, Workers)

### 10. SEO & Accessibility (if applicable)
- Metadata strategy per page type
- Accessibility baseline requirements
- Sitemap and canonical URL rules

### 11. AI Assistant Guidelines
- How an AI coding assistant should approach this codebase
- Common pitfalls to avoid
- What to check before adding new patterns

### 12. Quality Gates & Workflow
- Required checks before merge (lint, type check, test, build)
- When to run E2E vs. unit tests
- PR conventions and review checklist

### 13. Forbidden Practices
- A clear list of what is explicitly not allowed and why

---

Format the output as a developer-facing Markdown document. 
Be opinionated where the stack has clear best practices. 
Flag areas where the team should decide and document their own convention.
Keep rules actionable — every rule should be something a developer can check or enforce.
