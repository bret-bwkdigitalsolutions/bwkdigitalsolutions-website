# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site serves as the primary customer acquisition channel for business owners seeking practical digital solutions, positioning founder Bret Kramer as a problem-solver who cuts through technical complexity with the tagline "Technology Should Solve Problems, Not Create Them."

## How to Run & Access
The site deploys as static HTML/CSS/JavaScript files requiring no build process. Production runs at https://bwkdigitalsolutions.com/ through automated GitHub Actions deployment to Cloudways hosting. Local development works by opening `index.html` directly in a browser or serving through any basic HTTP server. Deployment triggers automatically on pushes to main branch via `.github/workflows/deploy.yml` and includes external notification to an Obsidian Hub system for documentation sync.

## Site Map / Content Structure
• **Homepage** (`/`) — Single-page marketing experience with hero section, four-service grid (automation, integration, development, AI), about preview with bird origin story, contact form, and process explanation
• **Blog section** (`/blog/` and `/blog/index.html`) — Infrastructure ready for content publishing with empty landing page
• **Service anchors** — On-page navigation to Services (`#services`), About (`#about`), and Contact (`#contact`) sections within homepage
• **Standalone pages** — Empty files at `/services.html`, `/about.html`, `/contact.html` prepared for expansion beyond single-page architecture
• **Legal pages** — Placeholder files at `/privacy.html`, `/terms.html`, `/refund.html` with no content
• **SEO foundation** — Complete `/sitemap.xml`, `/robots.txt`, favicon suite, and comprehensive JSON-LD structured data marking BWK as a ProfessionalService entity with Arkansas geographic targeting

## Current Architecture
Pure static architecture eliminates backend dependencies while maximizing performance and hosting portability. CSS custom properties establish a cohesive design system with semantic color variables (`--ink`, `--warm`, `--cream`) and consistent spacing patterns using CSS Grid and Flexbox layouts. Typography pairs DM Sans for body text with DM Serif Display for headings, loaded via Google Fonts with preconnect optimization. Comprehensive SEO implementation includes JSON-LD structured data for ProfessionalService schema, Arkansas geographic targeting, complete Open Graph/Twitter Card metadata, and structured service catalog definitions. GitHub Actions handles zero-downtime deployment with static file replacement and external system notifications.

## What Works Today
• Fixed navigation with backdrop blur effects and scroll-responsive styling that adds shadow and opacity changes
• Staggered CSS keyframe animations create polished hero entrance with sequential reveals for heading, description, and CTA buttons
• Four-service grid displays automation, integration, development, and AI services with hover interactions including left accent bars and background glow effects
• Responsive design adapts to mobile viewports with fluid typography scaling using CSS clamp functions
• Contact form includes HTML5 validation, accessibility attributes, proper ARIA labeling, and skip-to-content navigation
• Rich metadata enables proper search engine indexing with structured data for services, founder info, and geographic targeting
• Performance optimizations include image lazy loading, font preconnection, CSS cache-busting with version parameters, and optimized image sizing
• Automated deployment pipeline preserves static hosting benefits while enabling continuous delivery

## Recent Activity
The site maintains regular automated living state documentation updates occurring weekly. Core functionality remains stable with no significant feature development visible in recent commit history. Blog infrastructure exists from April buildout including post templates and publishing commands, but shows no active content creation or publishing activity. The codebase appears in a maintenance phase with documentation automation being the primary ongoing activity rather than active feature development or content expansion.

## Known Gaps & Limitations
Contact form captures user input but lacks backend processing, making lead generation completely non-functional. Mobile menu button references undefined `toggleMenu()` JavaScript function, breaking navigation on small screens. Blog infrastructure exists but contains zero published content to demonstrate expertise or drive search traffic. Service descriptions remain high-level without specific deliverables, processes, pricing information, or project timelines. Legal pages exist as empty placeholders with no actual terms, privacy policy, or refund policy content. No portfolio examples, client testimonials, or case studies exist to establish credibility beyond surface-level service descriptions.

## Next Meaningful Capabilities
Functional contact form processing that maintains static hosting benefits while ensuring reliable lead delivery and spam protection. Published blog content demonstrating technical expertise and practical business problem-solving to establish thought leadership. Working mobile navigation enabling full site functionality across all device types. Client showcase featuring case studies with measurable business impact and specific outcomes. Expanded service pages explaining detailed deliverables, project processes, timeline expectations, and investment ranges for better prospect qualification.

## Open Technical Questions
Contact form backend strategy balancing static hosting constraints with spam protection and reliable delivery requirements—considering serverless functions vs third-party form services. Blog content strategy optimizing publishing ease against long-term maintenance overhead for sustainable expertise demonstration. Mobile navigation implementation choice between JavaScript interactivity or CSS-only responsive solutions for maintenance simplicity. Analytics integration approach balancing visitor insights with privacy compliance and site performance impact. Service page architecture decision between single-page anchors vs dedicated pages for SEO and user experience optimization.

## Key Files & Entry Points
• `index.html` — Complete single-page marketing site with business messaging, service grid, hero animations, and contact form structure
• `styles.css` — Comprehensive design system with custom properties, CSS Grid layouts, keyframe animations, and responsive interaction states
• `.github/workflows/deploy.yml` — Cloudways deployment automation with external Obsidian Hub notification integration
• `blog/index.html` — Blog landing page infrastructure with empty content structure ready for publishing
• `_templates/blog-post.html` — Standardized post template ensuring consistent formatting and site integration
• `.claude/commands/publish-blog.md` — Publishing workflow documentation and CLI automation command specifications
• `sitemap.xml` — SEO site structure with priority weighting and update frequency for search engine optimization
• `_templates/new-client.sh` — Client onboarding automation script for project initialization
• `llms.txt` and `llms-full.txt` — AI discoverability optimization files for improved search recognition
• `404.html` — Custom error page maintaining brand experience for missing page requests

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-05-14_
