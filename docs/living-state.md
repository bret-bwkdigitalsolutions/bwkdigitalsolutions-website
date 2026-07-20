# bwkdigitalsolutions-website — Living State

## What This Is
A static marketing website for BWK Digital Solutions, a Little Rock, Arkansas consultancy founded by Bret Kramer that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site is the company's primary customer-facing presence and lead-generation surface, built around the positioning statement "Technology Should Solve Problems, Not Create Them," and it doubles as a content/SEO play via an attached blog and AI-crawler-focused metadata.

## How to Run & Access
There is no build step and no package manager in the repo — this is hand-authored static HTML, CSS, and vanilla JS. To run locally, open `index.html` directly in a browser or serve the repo root with any static file server (e.g. `python3 -m http.server`). Deployment is automated: `.github/workflows/deploy.yml` pushes the repo to Cloudways hosting on every commit to `main`, and `.github/workflows/notify-obsidian-hub.yml` fires a webhook to an external documentation system after deploy. `DEPLOYMENT-INSTRUCTIONS.md` documents the manual/Cloudways-side setup. Production is live at **https://bwkdigitalsolutions.com/**. No staging environment is evident — `main` is production, and every commit ships immediately with no test or review gate.

## Site Map / Content Structure
- `/` (`index.html`) — single-page homepage: hero, services grid, about preview, contact form, process section, all stitched together with in-page anchors (`#about`, `#services`, `#contact`)
- `/about.html`, `/services.html`, `/contact.html` — standalone pages that exist alongside the homepage's anchor sections of the same name (overlap not yet reconciled — see Known Gaps)
- `/blog/` (`blog/index.html`) — blog landing/index page
- `/blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — the sole published post
- `/privacy.html`, `/terms.html`, `/refund.html` — legal page shells, currently empty/placeholder
- `/404.html` — branded custom error page
- `/sitemap.xml`, `/robots.txt` — crawler directives and page inventory
- `/llms.txt`, `/llms-full.txt` — machine-readable site summaries aimed at LLM/AI crawlers
- `_templates/blog-post.html` — HTML scaffold for new blog posts
- `_templates/new-client.sh` — shell script scaffold, presumably for onboarding new client sites off this template (not documented in-repo)
- `docs/ideation/` and `docs/superpowers/specs/` — internal planning docs (SEO/AI discoverability design, open ideation notes), not part of the public site

## Current Architecture
Pure static HTML/CSS/vanilla JS with zero backend, framework, or build tooling — a deliberate choice that keeps hosting trivial (Cloudways serving flat files) and performance high with no server-side moving parts to maintain. Styling lives in a single `styles.css` using CSS custom properties for a consistent design system (`--ink`, `--warm`, `--cream`, etc.), CSS Grid/Flexbox for layout, and `clamp()`-based fluid typography. Fonts are Google Fonts (DM Sans + DM Serif Display) loaded with `preconnect` for performance. SEO/AI-discoverability is treated as a first-class concern: every page carries JSON-LD (`ProfessionalService`, `WebSite`), Open Graph and Twitter Card tags, geo-targeting for Little Rock/Arkansas, and dedicated `llms.txt`/`llms-full.txt` files — reflecting a documented design decision (`docs/superpowers/specs/2026-03-28-seo-ai-discoverability-design.md`) to optimize for AI-driven discovery in addition to traditional search. There is no CMS or database; blog posts and pages are authored by hand from a template and committed directly to the repo. Deployment is push-to-deploy via GitHub Actions with no build/test gate in front of it — the entire system's safety net is manual review before merge.

## What Works Today
- Fixed, scroll-aware navbar with backdrop blur and an active-state scroll style
- Animated hero section with staggered CSS keyframe reveals and an interactive logo/bird graphic
- Four-item services grid (Automation, Integration, Web Development, AI) with hover accent-bar animation
- Fully responsive layout using fluid `clamp()` typography across breakpoints
- Contact form markup with semantic HTML and accessibility affordances (skip link, focus-visible states) — front-end only, no submission handling
- Complete on-page SEO: canonical tags, Open Graph, Twitter Cards, structured data with service catalog and geo targeting
- AI-crawler discoverability layer via `llms.txt`/`llms-full.txt` and schema.org markup
- One published, formatted blog post using the standard post template
- Automatic, zero-touch deployment to production on every `main` commit, with a downstream notification hook to an external docs system

## Recent Activity
Since early June, this repo has seen exactly one substantive commit — publishing the blog post "Why Your AI Isn't Saving You as Much Time as It Should" — and roughly a dozen "regenerate living state" documentation commits and nothing else. Over five weeks have now passed since any HTML, CSS, or workflow change landed. **Momentum has fully stalled on the site itself.** The publishing pipeline (templates, publish command, weekly draft cron) built in mid-April is proven to work — it produced one real post — but has not been exercised again since, despite tooling that implies a weekly cadence was intended. The active period that actually shaped the site was mid-April: design polish (staggered hero animation, navbar scroll state), the addition of the contact form/process section/bird origin story, and standing up blog infrastructure end-to-end. Nothing comparable has followed. The project is currently in a holding pattern, coasting on April's work and June's single post.

## Known Gaps & Limitations
- Contact form has no backend — form submissions go nowhere; there is no lead capture today despite the form being visibly present and styled
- Mobile menu button calls `toggleMenu()` in `index.html`, but no corresponding JS file/inline script defining that function is visible in the reviewed files — mobile nav is at high risk of being non-functional
- `/about.html`, `/services.html`, `/contact.html` exist as separate files but the homepage nav links point to in-page anchors (`#about`, `#services`, `#contact`) instead — unclear whether these standalone pages are live, orphaned, or intended as future dedicated destinations
- Blog has exactly one post published over five-plus weeks; the weekly-draft cron tooling exists but has not produced a second post since it was built
- `/privacy.html`, `/terms.html`, `/refund.html` are empty placeholders — the site links to legal pages that don't yet contain policy text
- No portfolio, case studies, testimonials, or other credibility/proof content beyond the service list and copy claims
- No analytics, form-spam protection, or monitoring is evident anywhere in the codebase
- `_templates/new-client.sh` exists with no documentation of what it does or how it relates to this specific site — possibly a cross-project template artifact left in this repo
- The living-state doc itself has been regenerating on a schedule with no corresponding site work behind it, which is a signal the automation is running but the underlying project has gone quiet

## Next Meaningful Capabilities
- A working contact form backend (e.g. static-form service or serverless function) turns the site from a brochure into an actual lead-generation channel
- A reconciled information architecture (deciding anchors vs. standalone pages for About/Services/Contact) removes navigational ambiguity and unlocks per-page SEO for those topics
- A resumed, consistent blog cadence compounds the SEO/AI-discoverability investment already made in metadata and schema — right now that investment is mostly latent
- Fixed/verified mobile navigation makes the site fully usable on phones, where most first-touch traffic likely lands
- Populated legal pages (privacy/terms/refund) remove a trust and compliance gap for a business handling client engagements
- Case studies or client proof points give prospects a reason to convert beyond service descriptions alone

## Open Technical Questions
- What is the actual relationship between the homepage's anchor sections and the standalone `about.html`/`services.html`/`contact.html` pages — duplicate, deprecated, or planned expansion?
- Is `toggleMenu()` defined somewhere not captured in the reviewed files, or is mobile navigation currently broken in production?
- What form backend approach fits a fully static, no-server hosting model — third-party form service, serverless function, or email-only fallback — and has this been decided or just deferred?
- Why has the weekly draft cron produced only one post since it was introduced in April — is the cron not firing, or is content being drafted and not published?
- Is `_templates/new-client.sh` an artifact meant for this repo, or leftover from using this project as a template for other client sites?
- Is there any intended analytics/monitoring solution, or is visibility into traffic and conversions deliberately out of scope for now?

## Key Files & Entry Points
- `index.html` — homepage: hero, services, about preview, contact form, structured data
- `styles.css` — full design system and all site styling
- `.github/workflows/deploy.yml` — push-to-deploy automation to Cloudways
- `.github/workflows/notify-obsidian-hub.yml` — post-deploy webhook to external docs system
- `blog/index.html` — blog landing page
- `blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — sole published post
- `_templates/blog-post.html` — post authoring template
- `.claude/commands/publish-blog.md` — documented blog publishing workflow
- `llms.txt` / `llms-full.txt` — AI-crawler-facing site summaries
- `docs/superpowers/specs/2026-03-28-seo-ai-discoverability-design.md` — design rationale for the SEO/AI discoverability approach

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-07-20_
