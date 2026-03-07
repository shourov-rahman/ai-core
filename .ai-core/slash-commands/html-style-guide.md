---
description: Create html style guide
---
Put the file at: .ai-core/project-resources/{project-name}/project-design-and-development-rules/{variant-name.html}


Create a single-file HTML design system documentation page in from the mention visual style. The page should be a complete, self-contained UI component library that fully embodies the aesthetic, philosophy, and visual language of that style.

The page must include these standard sections, each numbered:

1. **Color** — The palette that defines this style. Display swatches with names and hex values, with both light and dark mode values clearly shown for each token.
2. **Typography** — The typeface(s) and scale appropriate for this style, shown with live examples at each size.
3. **Spacing** — The spacing system, visualized.
4. **Buttons** — Multiple variants (default, primary, accent) and sizes. Also include at least one style-specific novelty variant that only makes sense for this aesthetic. Hover and active states must feel native to the style.
5. **Forms** — Text inputs, labels, a textarea, a select dropdown, checkboxes, and radio buttons. All styled to match the overall aesthetic.
6. **Cards** — At least two or three distinct card sub-variants appropriate to this style, each with a title, description, and style-specific details or layout.
7. **Data Table** — Rows, headers, and inline status indicators. Style the status indicators (dots, shapes, or icons) to match the aesthetic rather than using generic badges.
8. **Badges** — Status/label indicators in multiple variants: filled, outline, and dot/icon indicators.
9. **Alerts** — Info, success, warning, and error states, fully styled to match the aesthetic.
10. **Principles** — Three or four core philosophy statements that explain the design style, each with a style-appropriate icon or decorative marker.

Beyond the sections, also include:

* A **header** with the system name, a short thematic tagline, and at least one decorative hero element that is iconic to the style.
* A **footer** with the system name, a thematic closing quote or tagline, and decorative elements that reinforce the visual identity.
* **Styled section dividers** between sections that match the aesthetic rather than plain lines.
* An **atmospheric background texture or pattern** on the page body that subtly reinforces the style without overpowering content.

**Critical requirement:** Every single design decision — colors, shadows, borders, radius, typography, spacing, motion, texture — must authentically express the mentioned aesthetic. Do not apply a generic or neutral style. Research and commit fully to what makes this style visually distinct. Each section should feel like it was designed specifically for this style, not adapted from a neutral template.

Deliver everything in one `.html` file with all CSS inside a `<style>` tag, using CSS custom properties for all design tokens. Load any required fonts from Google Fonts.



