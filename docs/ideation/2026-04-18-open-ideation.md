---
date: 2026-04-18
topic: open-ideation
focus: open-ended
---

# Ideation: BWK Digital Solutions Website

## Codebase Context

- **Architecture:** Static HTML/CSS marketing site — single `index.html`, vanilla CSS (~23KB), no JS file, no build process
- **Design system:** CSS custom properties as design tokens, Google Fonts (DM Sans + DM Serif Display)
- **SEO:** Comprehensive JSON-LD structured data, llms.txt for AI discoverability
- **Brand:** Hand-drawn bird logo is core identity with authentic origin story
- **Known broken:** Nav links 404, mobile menu broken, contact form submits to nowhere, zero social proof, no analytics, no deployment automation

## Ranked Ideas

### 1. Fix Dead-End Navigation with Scroll Anchors
**Description:** The 4 nav links (About, Services, Blog, Contact) all 404. Convert them to smooth-scroll anchors pointing at sections already on the page. Blog can be removed or pointed to a "coming soon" anchor until content exists.
**Rationale:** A web consulting firm whose own nav links are broken destroys credibility instantly. Sections already exist as anchor targets.
**Downsides:** Commits to single-page architecture; adding separate pages later means changing the nav again.
**Confidence:** 95%
**Complexity:** Low
**Status:** Explored — Implemented. Nav links now point to #about, #services, #process, #contact. Blog replaced with "How I Work". Footer links updated.

### 2. Fix Mobile Navigation
**Description:** The hamburger menu calls `toggleMenu()` which may be broken or have CSS issues preventing the menu from displaying. Fix the JS + CSS so mobile visitors can actually use the site.
**Rationale:** 50%+ of web traffic is mobile. A non-functional mobile menu means half the audience bounces immediately.
**Downsides:** None meaningful — pure bug fix.
**Confidence:** 95%
**Complexity:** Low
**Status:** Explored — Mobile menu JS and CSS appear to be working correctly. The `toggleMenu()` function is defined and the CSS handles the `.active` class toggle. No fix needed.

### 3. Make Contact Work — Calendar Booking over Dead Form
**Description:** Replace the broken contact form with a Cal.com/Calendly embed or link, putting qualified prospects directly on the calendar. Alternatively, wire the form to Formspree as a simpler fix.
**Rationale:** The site's entire conversion funnel is broken. A scheduling link is higher-intent than a form and requires zero backend.
**Downsides:** Calendly/Cal.com is a third-party dependency; Formspree is simpler but lower-conversion.
**Confidence:** 90%
**Complexity:** Low-Medium
**Status:** Explored — Implemented with Formspree form (placeholder ID). Contact section added to homepage with form, email, and location info. Linear issue BWK-402 created to register Formspree and configure the endpoint.

### 4. Add Lightweight Analytics
**Description:** Add a single `<script>` tag for Plausible, Umami, or Cloudflare Web Analytics. Privacy-respecting, no cookie banner needed.
**Rationale:** Every other improvement is a guess without measurement. Analytics is a force multiplier on all future work.
**Downsides:** Plausible is ~$9/mo; Cloudflare Web Analytics is free.
**Confidence:** 90%
**Complexity:** Low
**Status:** Explored — Linear issue BWK-401 created. Needs provider choice before implementation.

### 5. Add Social Proof with Visual Case Studies
**Description:** Add a screenshot/browser mockup to the Stolen Water Media case study and concrete metrics. Add 2-3 client testimonial quotes.
**Rationale:** Zero social proof asks visitors to take a leap of faith. The `case-study-visual` div already exists and is begging for actual visuals.
**Downsides:** Requires real client quotes and permission for screenshots.
**Confidence:** 80%
**Complexity:** Medium
**Status:** Explored — Linear issue BWK-403 created. Needs real testimonial quotes and screenshots from Bret.

### 6. Surface the Bird Logo Origin Story
**Description:** Add a short brand story moment near the about section — the authentic origin story behind the hand-drawn bird. 2-3 sentences, not a whole section.
**Rationale:** Genuine brand stories are more persuasive than any feature list. Differentiates in a sea of generic agency sites.
**Downsides:** Can feel self-indulgent if overdone. Keep it brief.
**Confidence:** 85%
**Complexity:** Low
**Status:** Explored — Implemented. Added italic bird story line to the about section: "Everything I sketch turns into a bird — so I leaned into it."

### 7. Add a "How I Work" Process + Transparency Section
**Description:** Add a 3-4 step process section (Discovery, Scope, Build, Launch) and optionally a "How This Site Is Built" collapsible showing architectural decisions.
**Rationale:** Unclear next steps are a top conversion killer. The transparency angle filters for good-fit clients.
**Downsides:** "Site as case study" angle may be too inside-baseball for non-technical prospects.
**Confidence:** 80%
**Complexity:** Medium
**Status:** Explored — Implemented. Four-step process section added (Discovery, Scope & Proposal, Build, Launch & Support) with responsive grid layout. Nav link added.

## Rejection Summary

| # | Idea | Reason Rejected |
|---|------|-----------------|
| 1 | Automate deployment (GitHub Actions) | Single static HTML file — CI/CD overhead exceeds benefit |
| 2 | Build blog infrastructure | Content treadmill with no content strategy |
| 3 | Micro-blog in index.html | Same content commitment problem, smaller package |
| 4 | Inline critical CSS | Premature optimization — 23KB loads fast already |
| 5 | External JS file consolidation | Over-engineering for ~15 lines of inline JS |
| 6 | Expand JSON-LD structured data | Already has good coverage; incremental, not directional |
| 7 | Pre-build testimonial schema | Building schema for nonexistent content is over-engineering |
| 8 | llms.txt link in HTML head | Single-line task, not an ideation candidate |
| 9 | llms.txt-powered chat interface | Over-engineered, API costs, violates static architecture |
| 10 | "Proof Wall" with live API data | Fragile API integrations, violates static architecture |
| 11 | Full-viewport animated bird hero | Too ambitious, potentially alienating |
| 12 | Stack transparency section | Too niche audience appeal |
| 13 | Collapse services into hero | Duplicates scroll-anchor nav fix |
| 14 | CSS component system from tokens | Premature abstraction for single-page site |
| 15 | Flip CTA to "What I'm Looking For" | Better as brainstorm variant of contact redesign |
| 16 | "Working With Me" README-style page | Merged into "How I Work" section (idea #7) |
| 17 | FAQPage schema + local SEO | Incremental SEO, not a meaningful direction change |
