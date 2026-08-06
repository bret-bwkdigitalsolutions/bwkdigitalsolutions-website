# bwkdigitalsolutions-website — Living State

## What This Is
A static marketing website for BWK Digital Solutions, a Little Rock, Arkansas consultancy founded by Bret Kramer that helps businesses cut through digital complexity via automation, systems integration, web development, and applied AI. The site is the company's customer-facing front door and lead-generation surface, built around the tagline "Technology Should Solve Problems, Not Create Them." It also functions as a content and discoverability play: an attached blog plus metadata explicitly aimed at AI/LLM crawlers, not just traditional search engines.

## How to Run & Access
No build step, package manager, or framework — this is hand-authored static HTML, CSS, and (nominally) vanilla JS. Locally, open `index.html` directly or serve the repo root with any static file server (e.g. `python3 -m http.server`). There are no tests and nothing to compile before shipping. Deployment is fully automated and unconditional: `.github/workflows/deploy.yml` pushes the repo to Cloudways hosting on every commit to `main`; `.github/workflows/notify-obsidian-hub.yml` fires a webhook to an external docs system afterward. `DEPLOYMENT-INSTRUCTIONS.md` documents the Cloudways-side setup. Production is live at **https://bwkdigitalsolutions.com/**. No staging environment exists — `main` is production, and commits ship immediately with no test or review gate in front of them.

## Site Map / Content Structure
- `/` (`index.html`) — single-page homepage: hero, services grid, about preview, process section, contact form, tied together with in-page anchors (`#about`, `#services`, `#contact`)
- `/about.html`, `/services.html`, `/contact.html` — standalone pages covering the same topics as the homepage anchor sections; the relationship between the two (duplicate, deprecated, or a planned split) is not evident from the code, and homepage nav points to the anchors, not these pages
- `/blog.html` (root) **and** `/blog/index.html` — two separate blog landing pages coexist; which is canonical or linked from nav isn't clear
- `/blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — the one published post
- `/privacy.html`, `/terms.html`, `/refund.html` — legal page shells, effectively placeholders
- `/404.html` — branded custom error page
- `/sitemap.xml`, `/robots.txt` — crawler directives and page inventory
- `/llms.txt`, `/llms-full.txt` — machine-readable site summaries aimed at LLM/AI crawlers
- `_templates/blog-post.html` — HTML scaffold for new posts
- `_templates/new-client.sh` — undocumented shell script, likely a cross-project artifact rather than something specific to this site
- `docs/ideation/`, `docs/superpowers/specs/` — internal planning notes (SEO/AI discoverability design, open ideation) that never ship to the public site

## Current Architecture
Pure static HTML/CSS/vanilla JS, with no backend, framework, or build tooling — a deliberate simplification that keeps hosting trivial (Cloudways serving flat files) and removes server-side failure modes entirely. All styling lives in a single `styles.css` built on CSS custom properties (`--ink`, `--warm`, `--cream`, etc.), CSS Grid/Flexbox layout, and `clamp()`-based fluid typography. Fonts are Google Fonts (DM Sans + DM Serif Display), preconnected. SEO and AI-discoverability are treated as first-class, not bolted on: pages carry JSON-LD (`ProfessionalService`, `WebSite`), Open Graph and Twitter Card tags, Little Rock/Arkansas geo metadata, and dedicated `llms.txt`/`llms-full.txt` files — a strategy documented directly in `docs/superpowers/specs/2026-03-28-seo-ai-discoverability-design.md`, which frames AI-driven discovery as co-equal with traditional search. There is no CMS or database; pages and posts are hand-authored from a template and committed directly. Deployment is push-to-deploy with no build or test gate, so the only quality check is whatever review happens before merging to `main`.

## What Works Today
- Fixed, scroll-aware navbar with backdrop blur and an active-link indicator
- Animated hero with staggered CSS keyframe reveals and an interactive logo/bird graphic
- Four-item services grid (Automation, Integration, Web Development, AI Leverage) with hover accent-bar animation
- Fluid, `clamp()`-driven responsive typography across breakpoints
- Semantic, accessibility-conscious markup: skip link, `focus-visible` states, alt text on decorative and functional images
- Contact form markup present and styled, but front-end only — no submission handling
- Full on-page SEO: canonical URLs, Open Graph, Twitter Cards, structured data with a complete service catalog and geo targeting
- AI-crawler discoverability layer via `llms.txt`/`llms-full.txt` alongside schema.org markup
- One fully formatted, published blog post built from the standard template
- Zero-touch deployment to production on every `main` commit, plus a downstream notification hook to an external docs system

## Recent Activity
Nothing substantive has shipped in roughly two months. Every commit since early June is a "docs: regenerate living state" run with no accompanying code, markup, or workflow change — the repo history is now a long, unbroken string of automated documentation refreshes describing a static codebase. The last real content event was publishing the "Why Your AI Isn't Saving You as Much Time as It Should" post in early June, itself the sole output of the blog infrastructure built in mid-April (post template, publish command, weekly draft cron). The last actual feature/design work — contact form, process section, bird origin story, staggered hero entrance, navbar scroll state — also dates to that same mid-April cluster. Momentum on the site itself remains at zero; the only process still running on a cadence is the living-state regeneration job, which has now reported "no change" for well over a dozen consecutive cycles.

## Known Gaps & Limitations
- Contact form has no backend — it's fully styled but submits nowhere; there is no functioning lead capture on the site
- `index.html`'s mobile menu button calls `toggleMenu()`, but no JS file or inline script defining that function is visible anywhere in the tree — mobile navigation is at real risk of being broken in production
- `blog.html` and `blog/index.html` both exist with no clear signal of which is canonical or linked from nav — likely a leftover from an unfinished restructure
- `about.html`, `services.html`, and `contact.html` exist as standalone pages, but homepage nav links to same-named in-page anchors instead — unclear whether these standalone pages are live, orphaned, or a planned future IA
- Blog has exactly one post despite weekly-draft cron tooling being in place for roughly four months — the implied cadence has never materialized, and the gap keeps widening
- `privacy.html`, `terms.html`, and `refund.html` are placeholder-level content — the site links to legal policies that aren't substantively written
- No portfolio, case studies, testimonials, or other third-party credibility signals beyond service descriptions and copy claims
- No analytics, form-spam protection, or uptime/error monitoring anywhere in the codebase
- `_templates/new-client.sh` has no documentation tying it to this site specifically
- The living-state doc has now auto-regenerated on schedule for roughly two months straight with nothing new to report each time — automation is running far ahead of actual project activity, to the point of masking that the project is dormant

## Next Meaningful Capabilities
- A working contact form backend (static-form service or a small serverless function) turns the site from a brochure into an actual lead-generation channel
- Resolving the `blog.html` vs. `blog/index.html` duplication and the anchor-vs-standalone-page ambiguity removes navigational confusion and lets each page carry its own SEO weight cleanly
- A resumed, consistent blog cadence starts compounding the SEO/AI-discoverability investment already built into the metadata layer, which is currently sitting almost entirely unused
- Verified, working mobile navigation makes the site reliably usable for phone-based first-touch traffic
- Populated legal pages (privacy/terms/refund) close a trust and compliance gap for a business taking on client engagements
- Case studies or client proof points give prospects a concrete reason to convert beyond service descriptions alone

## Open Technical Questions
- Which of `blog.html` and `blog/index.html` is the intended entry point — and is the other safe to remove?
- What is the actual relationship between the homepage anchor sections and the standalone `about.html`/`services.html`/`contact.html` pages?
- Is `toggleMenu()` defined somewhere outside the reviewed tree, or is mobile navigation currently non-functional in production?
- What form backend fits a fully static, no-server hosting model — third-party form service, serverless function, or email-only fallback — and has this been decided or just deferred?
- Why has the mid-April weekly draft cron produced only one published post in roughly four months — is it not firing, is content being drafted and never published, or has it been abandoned?
- Is `_templates/new-client.sh` meant for this repo, or a leftover from using this project as a template for other client engagements?
- Is analytics/monitoring intentionally out of scope, or simply not yet prioritized?
- Is the project intentionally paused, or is the recurring living-state regeneration the only signal left that the repo is still "active" at all?

## Key Files & Entry Points
- `index.html` — homepage: hero, services, about preview, contact form, structured data
- `styles.css` — full design system and all site styling
- `.github/workflows/deploy.yml` — push-to-deploy automation to Cloudways
- `.github/workflows/notify-obsidian-hub.yml` — post-deploy webhook to external docs system
- `blog/index.html` and `blog.html` — dual, possibly conflicting blog landing pages
- `blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — sole published post
- `_templates/blog-post.html` — post authoring template
- `.claude/commands/publish-blog.md` — documented blog publishing workflow
- `llms.txt` / `llms-full.txt` — AI-crawler-facing site summaries
- `docs/superpowers/specs/2026-03-28-seo-ai-discoverability-design.md` — design rationale for the SEO/AI discoverability approach

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-08-06_
