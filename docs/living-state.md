# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based digital consultancy that helps businesses eliminate friction through automation, integration, web development, and AI implementation. The site positions founder Bret Kramer as a problem-solving partner with the core message "Technology Should Solve Problems, Not Create Them" and serves as the primary customer acquisition channel for business owners seeking practical digital solutions.

## How to Run & Access
The site runs as static HTML/CSS/JavaScript files requiring no build process—open `index.html` directly in a browser or serve through any HTTP server for local development. Production deploys automatically to https://bwkdigitalsolutions.com/ via GitHub Actions workflow that pushes to Cloudways hosting on every main branch commit. The deployment pipeline includes automated notification to an external Obsidian Hub system for documentation synchronization.

## Site Map / Content Structure
• **Homepage** (`/`) — Single-page marketing experience with hero section, four-service showcase (automation, integration, web development, AI leverage), about preview featuring the company's bird logo origin story, contact form, and process explanation
• **Blog infrastructure** (`/blog/` and `/blog/index.html`) — Landing page structure prepared for content publishing
• **Service anchors** — On-page navigation to Services (`#services`), About (`#about`), and Contact (`#contact`) sections within homepage
• **Prepared standalone pages** — Shell files at `/services.html`, `/about.html`, `/contact.html` for future expansion beyond single-page architecture  
• **Legal framework** — Placeholder pages at `/privacy.html`, `/terms.html`, `/refund.html`
• **SEO infrastructure** — Complete `/sitemap.xml`, `/robots.txt`, favicon suite, comprehensive JSON-LD structured data marking BWK as a ProfessionalService with Arkansas geographic targeting
• **Error handling** — Custom 404 page maintains brand experience

## Current Architecture
Pure static architecture maximizes performance while eliminating backend dependencies. CSS custom properties establish a cohesive design system with semantic color variables (`--ink` for dark navy, `--warm` for gold accents, `--cream` for backgrounds) and consistent spacing using CSS Grid and Flexbox. Typography pairs DM Sans for body text with DM Serif Display for headings, optimized through Google Fonts preconnect. Rich SEO implementation includes JSON-LD structured data for ProfessionalService schema, Arkansas geographic targeting, comprehensive Open Graph/Twitter Card metadata, and detailed service catalog definitions. GitHub Actions handles deployment through static file replacement with external system notifications.

## What Works Today
• Fixed navigation with backdrop blur effects and scroll-responsive styling that adds shadow and opacity changes on page scroll
• Staggered CSS keyframe animations create polished hero entrance with sequential reveals for heading, description, and CTA buttons
• Four-service grid displays automation, integration, development, and AI services with hover interactions including animated left accent bars and background glow effects
• Responsive design adapts across viewports with fluid typography scaling using CSS clamp functions
• Contact form includes HTML5 validation, proper ARIA labeling, and accessibility features like skip-to-content navigation
• Rich metadata enables proper search engine indexing with structured data for services, founder information, and geographic targeting
• Performance optimizations include image lazy loading, font preconnection, CSS cache-busting with version parameters
• Automated deployment maintains hosting simplicity while enabling continuous delivery

## Recent Activity
Over the past six weeks, activity consists entirely of automated living state documentation updates occurring every 3-4 days with no feature development or content creation. The last meaningful development burst occurred in mid-April when blog infrastructure, contact form implementation, enhanced design polish with staggered hero animations, and comprehensive accessibility fixes were completed. Current momentum focuses exclusively on documentation automation with zero active site development or content publishing.

## Known Gaps & Limitations
Contact form captures user input but lacks backend processing, making lead generation completely non-functional. Mobile menu button references undefined `toggleMenu()` JavaScript function, breaking navigation on small screens. Blog infrastructure exists but contains zero published content to demonstrate expertise or thought leadership. Service descriptions remain high-level without specific deliverables, processes, pricing guidance, or project timelines. Legal pages exist as empty placeholders with no actual policy content. No portfolio examples, client testimonials, case studies, or credibility indicators exist beyond service descriptions.

## Next Meaningful Capabilities
Functional contact form processing that maintains static hosting benefits while ensuring reliable lead delivery and spam protection. Published blog content demonstrating technical expertise and business problem-solving to establish thought leadership and search visibility. Working mobile navigation enabling full site functionality across device types. Client showcase featuring case studies with measurable business outcomes and social proof. Expanded service pages with detailed deliverables, processes, timelines, and investment ranges for better prospect qualification.

## Open Technical Questions
Contact form backend strategy balancing static hosting constraints with spam protection and reliable delivery—considering serverless functions versus third-party form services. Blog publishing workflow that optimizes content creation ease against long-term maintenance overhead. Mobile navigation implementation choice between JavaScript interactivity or CSS-only solutions for maintenance simplicity. Analytics integration approach balancing visitor insights with privacy compliance and performance impact. Service page architecture decision between single-page anchors versus dedicated pages for SEO and user experience optimization.

## Key Files & Entry Points
• `index.html` — Complete single-page marketing site with business messaging, service showcase, hero animations, and contact form structure
• `styles.css` — Comprehensive design system with custom properties, CSS Grid layouts, keyframe animations, and responsive interaction states
• `.github/workflows/deploy.yml` — Cloudways deployment automation with Obsidian Hub notification integration  
• `blog/index.html` — Blog landing page infrastructure ready for content publishing
• `_templates/blog-post.html` — Standardized post template ensuring consistent formatting and site integration
• `.claude/commands/publish-blog.md` — Publishing workflow documentation and CLI automation specifications
• `sitemap.xml` — SEO site structure with priority weighting and update frequency optimization
• `_templates/new-client.sh` — Client onboarding automation script for project initialization
• `llms.txt` and `llms-full.txt` — AI discoverability optimization files for improved search recognition
• `404.html` — Custom error page maintaining brand experience for missing page requests

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-06-01_
