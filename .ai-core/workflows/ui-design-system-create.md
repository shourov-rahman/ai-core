---
description: ui design system create
---

I need you to analyze the attached HTML files and create two comprehensive design system documents:

### Document 1: Complete Design Guidelines (Markdown)

### Document 2: Interactive Reference Style Guide (HTML)

## Requirements for Both Documents

### Analysis Phase
First, thoroughly analyze ALL attached HTML files to extract:
1. **All CSS variables and design tokens** (colors, spacing, shadows, radius, etc.)
2. **All typography patterns** (font families, sizes, weights, line heights)
3. **All component patterns** (buttons, cards, forms, navigation, etc.)
4. **All layout patterns** (grids, containers, multi-column layouts)
5. **All utility classes** (margins, padding, text alignment, colors)
6. **All interaction patterns** (hover states, transitions, animations)
7. **Responsive breakpoints and mobile patterns**
8. **Naming conventions and prefixes used**

---

## Document 1: Design Guidelines (Markdown)

Create a comprehensive markdown file named `design-guidelines-complete.md` that includes:

### 1. Introduction Section
- **Design Philosophy**: Extract and articulate the design principles evident in the HTML
- **Key Characteristics**: What makes this design system unique
- **When to Use**: Guidance on appropriate use cases

### 2. Design Tokens
Complete CSS variable documentation with:
```css
:root {
    /* Extract ALL CSS variables from the HTML files */
    /* Group by category: colors, spacing, radius, shadows, etc. */
    /* Include comments describing each token */
}
```

### 3. Typography System
- Font family stack
- Complete typography scale table with:
  - Element/Use Case
  - Font Size
  - Font Weight
  - Color
  - Line Height
- Typography utility classes with code examples

### 4. Component Classes
Document EVERY component found in the HTML files with:
- Class name and purpose
- Complete CSS code
- Variants (if applicable)
- Usage notes

Organize by category:
- **Layout** (containers, grids, columns)
- **Cards** (all card variations)
- **Buttons** (all button types and states)
- **Forms** (inputs, textareas, selects, labels, file uploads)
- **Navigation** (navbar, links, menus)
- **Content Components** (articles, lists, chat bubbles, etc.)
- **UI Elements** (badges, tags, status indicators)
- **Specialized Components** (search bars, CTAs, heroes, sidebars)

### 5. Utility Classes
Complete list of utility classes for:
- Spacing (margins, padding)
- Typography (alignment, colors, weights)
- Display (flex, grid)
- Visibility
- Other utilities

### 6. Responsive Design
- Breakpoints used
- Mobile-first patterns
- Responsive grid behaviors
- Mobile-specific overrides

### 7. Animation & Transitions
- Timing functions
- Duration standards
- Transition patterns for different element types

### 8. Usage Examples
For each major component type, provide:
- Clean, minimal HTML example
- Real-world usage scenario
- Multiple examples showing variants

### 9. Accessibility Guidelines
- Color contrast requirements
- Focus states
- Semantic HTML recommendations
- Keyboard navigation notes
- ARIA considerations

### 10. Best Practices
- Implementation guidelines
- Common patterns
- Things to avoid
- Performance considerations

### 11. Additional Sections (if relevant)
- Color usage guidelines
- Icon/emoji usage
- Spacing scale
- Shadow elevation system

---

## Document 2: Reference Style Guide (HTML)

Create a comprehensive, interactive HTML file named `reference-styleguide-complete.html` that includes:

### Structure Requirements

1. **Self-Contained**: All CSS inline in a `<style>` tag
2. **Complete Design Tokens**: Include ALL CSS variables extracted from source files
3. **Live Examples**: Working, interactive examples of every component
4. **Organized Sections**: Clear sections with headers for each component category

### Required Sections

#### Header/Navigation
- Working navigation example from the source files

#### Color Palette Section
- Visual swatches for all colors
- Hex codes displayed
- Color names/variable names
- Organized by category (primary, secondary, neutrals, etc.)

#### Typography Section
- Live examples of every heading level
- Body text examples
- All typography variants demonstrated
- Labels, captions, meta text

#### Button Section
Demonstrate:
- All button variants (primary, secondary, outline, etc.)
- All sizes (small, medium, large)
- All states (normal, hover-able)
- Special buttons (pill, block, icon buttons)
- Button groups (if applicable)

#### Card Section
Show examples of:
- Basic cards
- Card variants (large, compact, etc.)
- Category cards
- Interactive cards with hover states
- Cards in grid layouts

#### Form Section
Include working examples of:
- Text inputs
- Textareas
- Select dropdowns (with custom styling)
- Checkboxes and radios (if in source)
- File uploads
- Input groups
- Form validation states (if applicable)
- Complete form layout example

#### Layout Section
Demonstrate:
- Container widths
- Grid systems
- Multi-column layouts
- Responsive behavior examples

#### Component Sections
For EVERY component found in source files, create a demo section:
- Search bars
- Navigation menus
- Article lists
- Chat interfaces
- Status badges
- Tabs/Pills (if applicable)
- Modals/Dialogs (if applicable)
- Tables (if applicable)
- Pagination (if applicable)
- Breadcrumbs (if applicable)
- And any other unique components

#### Utility Classes Section
Demonstrate utility classes with before/after examples

### Styling for the Style Guide Itself

Create a clean, professional layout for the style guide:
```css
.demo-section {
    /* Section container styling */
}

.demo-header {
    /* Section header styling - make it distinctive */
}

.demo-content {
    /* Content area styling */
}

.color-swatch {
    /* Color display boxes */
}
```

### Footer
- Notes about class prefixes
- Link to design guidelines
- Version information (if applicable)

---

## Output Format

Provide both files as downloadable outputs:
1. `/mnt/user-data/outputs/design-guidelines-complete.md`
2. `/mnt/user-data/outputs/reference-styleguide-complete.html`

---

## Quality Checklist

Before completing, ensure:

### Design Guidelines (MD)
- [ ] All CSS variables extracted and documented
- [ ] Every component class has complete CSS code
- [ ] At least 3-5 usage examples per major component
- [ ] Typography scale is complete with all variants
- [ ] Responsive patterns documented
- [ ] Accessibility guidelines included
- [ ] Best practices section is actionable

### Reference Style Guide (HTML)
- [ ] File opens and displays correctly in browser
- [ ] All colors displayed with swatches and codes
- [ ] Every component from source files is demonstrated
- [ ] Interactive elements work (hover states visible)
- [ ] Forms are functional (inputs accept text, etc.)
- [ ] Layout is clean and organized
- [ ] Sections are clearly labeled
- [ ] Self-contained (no external dependencies)

---

## Additional Instructions

1. **Be Thorough**: Don't skip any components, even small ones
2. **Extract Patterns**: If you see a pattern repeated, create a documented component for it
3. **Maintain Consistency**: Use the same class naming conventions from the source
4. **Provide Context**: Explain WHEN and WHY to use each component
5. **Think Developer-First**: Make it easy to copy-paste and implement
6. **Include Edge Cases**: Show how components look with long text, empty states, etc.

---

## Example Usage

After receiving these documents, a developer should be able to:
1. Understand the entire design system philosophy
2. Find any component they need with working code
3. Copy-paste implementation examples
4. See visual examples of every component
5. Understand responsive behavior
6. Know accessibility requirements
7. Follow best practices for implementation

---

Begin by analyzing all attached HTML files, then create both comprehensive documents.
