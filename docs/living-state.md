# bwkdigitalsolutions-website — Living State

## What This Is
A static marketing website for BWK Digital Solutions, a Little Rock, Arkansas consultancy founded by Bret Kramer that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site is the company's primary customer-facing presence and lead-generation surface, anchored around the positioning line "Technology Should Solve Problems, Not Create Them," and it doubles as a content/SEO play through an attached blog and metadata specifically aimed at AI/LLM crawlers.

## How to Run & Access
There is no build step, package manager, or framework — this is hand-authored static HTML, CSS, and vanilla JS. To run locally, open `index.html` directly in a browser or serve the repo root with any static file server (e.g. `python3 -m http.server`). There are no tests and no build to run before deploy. Deployment is fully automated: `.github/workflows/deploy.yml` pushes the repo straight to Cloudways hosting on every commit to `main`, and `.github/workflows/notify-obsidian-hub.yml` fires a webhook to an external documentation system afterward. `DEPLOYMENT-INSTRUCTIONS.md` documents the Cloudways-side setup. Production is live at **https://bwkdigitalsolutions.com/**. No staging environment exists — `main` is production, and every commit ships immediately with no review or test gate in front of it.

## Site Map / Content Structure
- `/` (`index.html`) — single-page homepage: hero, services grid, about preview, contact form, process section, stitched together with in-page anchors (`#about`, `#services`, `#contact`)
- `/about.html`, `/services.html`, `/contact.html` — standalone pages duplicating homepage anchor-section topics (relationship between the two unresolved — see Known Gaps)
- `/blog.html` (root) and `/blog/index.html` — **two separate blog landing pages exist side by side**; which one is canonical is not evident from the file tree
- `/blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — the sole published post
- `/privacy.html`, `/terms.html`, `/refund.html` — legal page shells, effectively placeholder content
- `/404.html` — branded custom error page
- `/sitemap.xml`, `/robots.txt` — crawler directives and page inventory
- `/llms.txt`, `/llms-full.txt` — machine-readable site summaries aimed at LLM/AI crawlers
- `_templates/blog-post.html` — HTML scaffold for new posts
- `_templates/new-client.sh` — shell script scaffold, undocumented in-repo, likely a cross-project artifact
- `docs/ideation/`, `docs/superpowers/specs/` — internal planning docs (SEO/AI discoverability design, open ideation notes) that never ship to the public site

## Current Architecture
Pure static HTML/CSS/vanilla JS with no backend, framework, or build tooling — a deliberate choice that keeps hosting trivial (Cloudways serving flat files) and eliminates server-side failure modes. All styling lives in one `styles.css` built on CSS custom properties (`--ink`, `--warm`, `--cream`, etc.) with CSS Grid/Flexbox layout and `clamp()`-based fluid typography. Fonts are Google Fonts (DM Sans + DM Serif Display) loaded with `preconnect`. SEO and AI-discoverability are treated as first-class concerns, not afterthoughts: every page carries JSON-LD (`ProfessionalService`, `WebSite`), Open Graph/Twitter Card tags, Little Rock/Arkansas geo-targeting, and dedicated `llms.txt`/`llms-full.txt` files — reflecting a documented decision in `docs/superpowers/specs/2026-03-28-seo-ai-discoverability-design.md` to optimize for AI-driven discovery alongside traditional search. There is no CMS or database; pages and posts are hand-authored from templates and committed directly. Deployment is push-to-deploy with no build or test gate — the only safety net is manual review before merge, and given the commit history, that review appears light.

## What Works Today
- Fixed, scroll-aware navbar with backdrop blur and an active nav-item indicator
- Animated hero section with staggered CSS keyframe reveals and an interactive logo/bird graphic
- Four-item services grid (Automation, Integration, Web Development, AI) with hover accent-bar animation
- Fluid, `clamp()`-driven responsive typography across breakpoints
- Contact form markup with semantic HTML and accessibility affordances (skip link, focus-visible states) — front-end only, no submission handling
- Complete on-page SEO: canonical tags, Open Graph, Twitter Cards, structured data with a full service catalog and geo targeting
- AI-crawler discoverability layer via `llms.txt`/`llms-full.txt` and schema.org markup
- One published, fully formatted blog post built from the standard template
- Automatic, zero-touch deployment to production on every `main` commit, plus a downstream notification hook to an external docs system

## Recent Activity
The last substantive change to the site itself was publishing a single blog post in early June ("Why Your AI Isn't Saving You as Much Time as It Should"). Since then — over six weeks and roughly ten commits — the only activity has been recurring "regenerate living state" documentation commits with no accompanying HTML, CSS, or workflow changes. **The site has been in a full holding pattern since early June.** The last period of real building was mid-April, which in quick succession stood up blog infrastructure (template, publish command, weekly draft cron), added the contact form/process section/bird origin story, and polished the design (staggered hero entrance, navbar scroll state). That April buildout produced the tooling that later shipped the June post, but the intended weekly cadence implied by the "weekly draft cron" has not materialized — one post in three-plus months of that tooling existing. Momentum is currently at zero on the site; the only thing actively running on a schedule is the living-state regeneration itself.

## Known Gaps & Limitations
- Contact form has no backend — submissions go nowhere; there is no functioning lead capture despite the form being fully styled and present
- Mobile menu button calls `toggleMenu()` in `index.html`, but no JS file or inline script defining that function appears anywhere in the reviewed tree — mobile navigation is at high risk of being broken in production
- Two separate blog landing pages exist (`blog.html` and `blog/index.html`) with no clear indication of which is canonical or linked from navigation — likely leftover from a mid-restructure that was never finished
- `/about.html`, `/services.html`, `/contact.html` exist as standalone files, but the homepage nav links to in-page anchors of the same names instead — unclear whether these pages are live destinations, orphaned, or a planned future information architecture
- Blog has exactly one post despite weekly-draft cron tooling existing for over three months — the cadence this tooling implies has not been realized
- `/privacy.html`, `/terms.html`, `/refund.html` are effectively placeholder pages — the site links to legal policies that aren't substantively written
- No portfolio, case studies, testimonials, or other credibility content beyond service descriptions and copy claims
- No analytics, form-spam protection, or uptime/error monitoring evident anywhere in the codebase
- `_templates/new-client.sh` has no documentation explaining its purpose or connection to this specific site
- The living-state document has continued auto-regenerating on schedule for weeks with no underlying site work to report — a clear signal that automation is running ahead of actual project activity

## Next Meaningful Capabilities
- A working contact form backend (static-form service or a small serverless function) turns the site from a brochure into an actual lead-generation channel
- Resolving the blog.html vs. blog/index.html duplication and the anchor-vs-standalone-page ambiguity removes navigational confusion and lets each topic carry its own SEO weight
- A resumed, consistent blog cadence starts compounding the SEO/AI-discoverability investment already built into the metadata layer, which is currently mostly dormant
- Verified, working mobile navigation makes the site reliably usable for phone-based first-touch traffic
- Populated legal pages (privacy/terms/refund) close a trust and compliance gap for a business taking on client engagements
- Case studies or client proof points give prospects a concrete reason to convert beyond service descriptions alone

## Open Technical Questions
- Which of `blog.html` and `blog/index.html` is the intended, linked-to blog entry point — and is the other one dead weight that should be removed?
- What is the actual relationship between the homepage's anchor sections and the standalone `about.html`/`services.html`/`contact.html` pages — duplicate, deprecated, or planned expansion?
- Is `toggleMenu()` defined somewhere not visible in the reviewed tree, or is mobile navigation currently non-functional in production?
- What form backend fits a fully static, no-server hosting model — third-party form service, serverless function, or an email-only fallback — and has this decision been made or just deferred indefinitely?
- Why has the weekly draft cron introduced in April produced only one published post — is the cron not firing, or is content being drafted somewhere and simply not published?
- Is `_templates/new-client.sh` meant for this repo, or is it a leftover artifact from using this project as a starting template for other client sites?
- Is analytics/monitoring intentionally out of scope for now, or is it a gap nobody has gotten to yet?

## Key Files & Entry Points
- `index.html` — homepage: hero, services, about preview, contact form, structured data
- `styles.css` — full design system and all site styling
- `.github/workflows/deploy.yml` — push-to-deploy automation to Cloudways
- `.github/workflows/notify-obsidian-hub.yml` — post-deploy webhook to external docs system
- `blog/index.html` and `blog.html` — dual (possibly conflicting) blog landing pages
- `blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — sole published post
- `_templates/blog-post.html` — post authoring template
- `.claude/commands/publish-blog.md` — documented blog publishing workflow
- `llms.txt` / `llms-full.txt` — AI-crawler-facing site summaries
- `docs/superpowers/specs/2026-03-28-seo-ai-discoverability-design.md` — design rationale for the SEO/AI discoverability approach

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-07-23_
