# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based consultancy founded by Bret Kramer that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site serves as the primary customer acquisition channel with the core positioning "Technology Should Solve Problems, Not Create Them" and targets businesses seeking practical digital solutions without complexity.

## How to Run & Access
The site runs as static HTML/CSS/JavaScript files with no build process—open `index.html` directly in any browser for local development or serve through any HTTP server. Production deploys automatically to https://bwkdigitalsolutions.com/ via GitHub Actions workflow that pushes to Cloudways hosting on every main branch commit. The deployment includes automated notifications to an external Obsidian Hub documentation system for change tracking.

## Site Map / Content Structure
• **Homepage** (`/`) — Single-page marketing site with hero, four-service showcase, about preview, and contact form  
• **Blog section** (`/blog/`) — Blog index with one published article: "Why Your AI Isn't Saving You as Much Time as It Should"  
• **Service pages** — Skeleton pages at `/services.html`, `/about.html`, `/contact.html` for future expansion  
• **Legal framework** — Empty placeholder files at `/privacy.html`, `/terms.html`, `/refund.html`  
• **SEO infrastructure** — Complete `/sitemap.xml`, `/robots.txt`, favicon suite, and comprehensive JSON-LD structured data  
• **AI discoverability** — `/llms.txt` and `/llms-full.txt` files optimizing for search engine AI crawlers  
• **Error handling** — Custom `/404.html` maintaining brand consistency

## Current Architecture
Pure static HTML/CSS/JavaScript architecture eliminates backend dependencies while maximizing performance and reliability. The CSS design system uses semantic custom properties (`--ink`, `--warm`, `--cream`) with modern Grid and Flexbox layouts. Typography combines DM Sans for body text with DM Serif Display for headings, loaded via Google Fonts with preconnect optimization. JSON-LD structured data defines BWK as a ProfessionalService with Arkansas geographic targeting and detailed service catalogs. GitHub Actions handles deployment through direct file replacement with zero downtime and automated documentation synchronization.

## What Works Today
• Fixed navigation with backdrop blur effects and scroll-responsive styling changes  
• Staggered CSS keyframe hero animations with sequential content reveals and interactive bird graphic  
• Four-service grid displaying automation, integration, development, and AI with animated accent bars on hover  
• Fully responsive design using CSS clamp functions for fluid typography across all screen sizes  
• Semantic HTML5 contact form with built-in validation and accessibility features including skip links  
• Complete SEO foundation with Open Graph metadata, Twitter Cards, and geographic schema markup  
• Performance optimizations including lazy loading, font preconnection, and CSS cache-busting  
• Blog infrastructure with standardized post templates and established publishing workflow

## Recent Activity
Content creation became the primary focus in June 2026 with the publication of the first substantial blog post on AI implementation, establishing thought leadership after months of foundational development. The blog infrastructure built in April 2026 transitioned from empty framework to active content publishing. The site shows renewed development momentum after extended dormancy, with content strategy emerging as the next growth phase beyond the technical foundation.

## Known Gaps & Limitations
Contact form captures visitor input but lacks any backend processing, making lead generation completely non-functional. Mobile navigation references undefined `toggleMenu()` JavaScript function, breaking small-screen usability entirely. Blog contains only one article with no established publishing schedule or content pipeline. Service descriptions remain generic without specific deliverables, processes, or pricing guidance. Legal pages exist as empty shells without actual policy content. No portfolio examples, client testimonials, or credibility proof points beyond service claims.

## Next Meaningful Capabilities
Functional contact form processing that works within static hosting constraints while providing spam protection and reliable delivery. Consistent blog publishing schedule with technical content demonstrating expertise and driving organic discovery. Working mobile navigation enabling full site functionality across all devices. Client case studies with specific outcomes and measurable results that build credibility. Service detail pages with clear processes, timelines, and pricing ranges for better prospect qualification.

## Open Technical Questions
Contact form backend strategy balancing static hosting simplicity with spam protection—evaluating serverless functions versus third-party form services. Blog content frequency and topics for optimal SEO impact without overwhelming production capacity. Mobile navigation implementation choosing between JavaScript solutions or CSS-only alternatives. Analytics integration approach balancing visitor insights with privacy compliance and performance impact. Service page architecture deciding between single-page anchors versus dedicated pages for SEO value.

## Key Files & Entry Points
• `index.html` — Complete marketing site with hero animations, service grid, and contact form  
• `styles.css` — Design system with custom properties, responsive layouts, and interaction animations  
• `.github/workflows/deploy.yml` — Cloudways deployment automation with external notification hooks  
• `blog/index.html` — Blog landing page with current content  
• `blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — Published AI implementation article  
• `_templates/blog-post.html` — Standardized post template for consistent structure  
• `.claude/commands/publish-blog.md` — Blog publishing workflow documentation  
• `_templates/new-client.sh` — Client onboarding automation script  
• `sitemap.xml` — SEO-optimized site structure with page priorities  
• `llms.txt` — AI crawler optimization for search engine discovery

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-06-15_
