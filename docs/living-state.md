# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site serves as founder Bret Kramer's primary customer acquisition channel, positioning him as a practical problem-solver with the core philosophy "Technology Should Solve Problems, Not Create Them."

## How to Run & Access
The site runs as static HTML/CSS/JavaScript files with no build process—open `index.html` in any browser or serve through any HTTP server for local development. Production deploys automatically to https://bwkdigitalsolutions.com/ via GitHub Actions workflow that pushes to Cloudways hosting on every main branch commit. The deployment pipeline includes automated notifications to an external Obsidian Hub system for documentation synchronization.

## Site Map / Content Structure
• **Homepage** (`/`) — Single-page marketing site with hero section, services showcase (#services), about section (#about), and contact form (#contact)  
• **Blog section** (`/blog/`) — Blog index page with one published article: "Why Your AI Isn't Saving You as Much Time as It Should" (`/blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html`)  
• **Standalone page shells** — Prepared but minimal files at `/services.html`, `/about.html`, `/contact.html` for future expansion  
• **Legal pages** — Empty placeholder pages at `/privacy.html`, `/terms.html`, `/refund.html`  
• **SEO foundation** — Complete `/sitemap.xml`, `/robots.txt`, favicon suite, and comprehensive JSON-LD structured data  
• **Error handling** — Custom `/404.html` maintaining brand consistency  
• **AI discoverability** — `/llms.txt` and `/llms-full.txt` files for search engine AI optimization

## Current Architecture
Pure static architecture maximizes performance while eliminating backend dependencies. CSS custom properties create a cohesive design system with semantic naming (`--ink`, `--warm`, `--cream`) and the layout uses modern CSS Grid and Flexbox. Typography pairs DM Sans for body text with DM Serif Display for headings, loaded via Google Fonts with preconnect optimization. Rich SEO implementation includes JSON-LD structured data marking BWK as a ProfessionalService with Arkansas geographic targeting, comprehensive Open Graph metadata, and detailed service definitions. GitHub Actions handles deployment through static file replacement with automated external documentation sync via Obsidian Hub notifications.

## What Works Today
• Fixed navigation with backdrop blur and scroll-responsive styling that adds shadows and opacity changes  
• Staggered CSS keyframe animations create polished hero entrance with sequential reveals  
• Four-service grid showcasing automation, integration, development, and AI with hover interactions including animated accent bars  
• Responsive design with fluid typography using CSS clamp functions across all viewports  
• Contact form with HTML5 validation and accessibility features including skip-to-content navigation  
• Complete SEO foundation with structured data, meta tags, and geographic targeting  
• Performance optimizations including lazy loading, font preconnection, and CSS cache-busting  
• Blog infrastructure with standardized post template and publishing workflow documentation  
• One published blog post demonstrating AI implementation expertise

## Recent Activity
Blog content creation emerged as the primary focus in early June 2026 with the publication of "Why Your AI Isn't Saving You as Much Time as It Should," marking the first substantial content addition since the site's foundational development. The blog infrastructure built in mid-April 2026 now contains actual published content, establishing thought leadership in AI implementation. The past month shows renewed activity after weeks of dormancy, with content creation becoming the active development focus.

## Known Gaps & Limitations
Contact form captures input but lacks backend processing, making lead generation completely non-functional. Mobile menu references undefined `toggleMenu()` JavaScript function, breaking small-screen navigation entirely. Blog contains only one article with no content calendar or regular publishing schedule. Service descriptions remain vague without deliverables, pricing, or process details. Legal pages contain no actual policy content. No portfolio examples, testimonials, or credibility indicators exist beyond service descriptions.

## Next Meaningful Capabilities
Functional contact form processing that works with static hosting while providing spam protection and reliable delivery. Regular blog publishing schedule with consistent thought leadership content demonstrating technical expertise. Working mobile navigation enabling full functionality across devices. Client showcase with specific case studies and measurable outcomes. Detailed service pages with processes, timelines, and pricing guidance for better prospect qualification.

## Open Technical Questions
Contact form backend strategy balancing static hosting with spam protection—serverless functions versus third-party services. Blog publishing frequency and content strategy for optimal SEO and lead generation impact. Mobile navigation implementation choosing between JavaScript functionality or CSS-only solutions. Analytics integration balancing visitor insights with privacy and performance. Service page architecture deciding between single-page anchors versus dedicated pages for SEO optimization.

## Key Files & Entry Points
• `index.html` — Complete single-page site with messaging, services, animations, and contact form  
• `styles.css` — Design system with custom properties, layouts, animations, and responsive interactions  
• `.github/workflows/deploy.yml` — Cloudways deployment automation with external notifications  
• `blog/index.html` — Blog landing page with published content  
• `blog/why-your-ai-isnt-saving-you-as-much-time-as-it-should.html` — First published blog post on AI implementation  
• `_templates/blog-post.html` — Standardized post template for consistent formatting  
• `.claude/commands/publish-blog.md` — Publishing workflow documentation  
• `sitemap.xml` — SEO site structure with priority optimization  
• `_templates/new-client.sh` — Client onboarding automation script  
• `llms.txt` — AI discoverability optimization file

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-06-11_
