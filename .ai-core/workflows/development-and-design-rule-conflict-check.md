---
description: development and design rule review
---

## Development Rules Review

You are a senior software architect and developer experience expert. I'm going to share my development guideline document. Please do the following:

1. **Audit & Review** — Identify any issues:
   - Contradictions or conflicts between rules
   - Outdated or deprecated recommendations
   - Vague or ambiguous rules that could be misinterpreted
   - Missing important rules based on the package file or the tech stack I working on. 
   - Rules that are overly restrictive without good reason
   - Anything that is simply wrong or bad practice
   - Any new rules need to add for any package based on the package.json file.

2. **Suggest Improvements** — For each issue found, explain:
   - What the problem is and why it matters
   - What you recommend instead

3. **Write an Updated Version** — Rewrite the full guideline document incorporating all your suggestions. Keep the same structure and tone, but fix all issues and add anything missing.


Development guide for this project: In this directory you will find development guideline `.ai-core/project-resources/{project-name}/project-design-and-development-rules/`

package: search the package.json or similar file in this codebase.

**File and Folder Location**
- Create a new markdown file. Name convention `{filename-reviewed.md}`
- The file must be placed in:
   `.ai-core/project-resources/{project-name}/project-design-and-development-rules/{filename-reviewed.md}`

   **Example:**
   `.ai-core/project-resources/{project-name}/project-design-and-development-rules/development-rules-astro-reviewed.md`
   

* If the `{project-name}` folder **does not exist**, create it and place the file inside the `project-design-and-development-rules` directory.

* If the `{project-name}` folder **already exists**, do not create a new one. Add the file inside the `project-design-and-development-rules` directory.

* If **multiple folders with same or different `{project-name}` values exist**, place the file directly inside:
  `.ai-core/project-resources/`


## UI Design Rule Review

You are a senior UI/UX designer and frontend architect with deep expertise in design systems, typography, accessibility, and modern web development. I'm going to share my UI design guideline document. Please do the following:

1. **Audit & Review** — Identify any issues across these areas:
   - **Contradictions or conflicts** between rules (e.g. a spacing rule that conflicts with a grid rule)
   - **Accessibility problems** — contrast ratios, focus states, touch targets, motion concerns
   - **Missing coverage** — important design scenarios not addressed (dark mode edge cases, error states, loading states, empty states, disabled states, etc.)
   - **Vague or ambiguous rules** that a developer could misinterpret or implement inconsistently
   - **Outdated or impractical recommendations** given modern browser capabilities and Tailwind v4
   - **Over-constraints** — rules so rigid they will cause real implementation pain without design benefit
   - **Under-constraints** — areas left too open that will cause inconsistency across a team
   - **Responsive design gaps** — anything that doesn't scale well across breakpoints
   - **Component coverage gaps** — common UI patterns not covered (modals, toasts, badges, tooltips, tables, forms, etc.)

2. **Suggest Improvements** — For each issue found, explain:
   - What the problem is and why it matters
   - What you recommend instead, with specific values or Tailwind classes where applicable

3. **Write an Updated Version** — Rewrite the full UI design guideline incorporating all your suggestions (by creating a new file). Keep the same design philosophy , structure, and tone — but fix all issues, fill all gaps, and sharpen any ambiguity.

UI design guide for this project: In this directory you will find ui design guideline `.ai-core/project-resources/{project-name}/project-design-and-development-rules/`


**File and Folder Location**
- Create a new markdown file. Name convention `{filename-reviewed.md}`
- The file must be placed in:
   `.ai-core/project-resources/{project-name}/project-design-and-development-rules/{filename-reviewed.md}`

   **Example:**
   `.ai-core/project-resources/{project-name}/project-design-and-development-rules/development-rules-astro-reviewed.md`
   

* If the `{project-name}` folder **does not exist**, create it and place the file inside the `project-design-and-development-rules` directory.

* If the `{project-name}` folder **already exists**, do not create a new one. Add the file inside the `project-design-and-development-rules` directory.

* If **multiple folders with same or different `{project-name}` values exist**, place the file directly inside:
  `.ai-core/project-resources/`


