# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site positions technology as a problem-solving tool rather than complexity source, targeting business owners who need practical digital solutions without technical overhead.

## How to Run & Access
Operates as static HTML/CSS/JavaScript files with no build process or server dependencies. Production deployment runs at https://bwkdigitalsolutions.com/ through automated GitHub Actions workflow deploying to Cloudways hosting. Local development requires only opening `index.html` in a browser or serving through any basic HTTP server. No staging environment exists.

## Site Map / Content Structure
• **Homepage** (`/`) — Complete marketing funnel with hero section, four-service overview, about preview, process walkthrough, and contact form
• **Blog section** (`/blog/`) — Infrastructure exists with templating system but contains no published content
• **Missing pages** — Service detail pages (`/about.html`, `/contact.html`, `/services.html`), privacy/legal pages (`/privacy.html`, `/terms.html`, `/refund.html`) referenced in navigation but return 404 errors
• **SEO foundation** — `/sitemap.xml`, `/robots.txt`, complete favicon suite, and JSON-LD structured data
• **Custom 404** (`/404.html`) — Handles missing page requests

## Current Architecture
Pure static architecture eliminates backend complexity while maximizing hosting flexibility and performance. CSS custom properties establish a design token system with semantic color variables and consistent spacing. Typography combines DM Sans and DM Serif Display fonts with Google Fonts preconnect optimization. Comprehensive SEO implementation includes JSON-LD structured data defining BWK as a ProfessionalService entity, Arkansas geographic targeting, and complete social sharing metadata. GitHub Actions automates deployment with external Obsidian Hub notifications for change tracking.

## What Works Today
• Fixed navigation with backdrop blur effects and active scroll state styling
• Staggered hero animations creating visual interest during page load
• Interactive service grid with hover states and accent color transitions  
• Responsive design adapting to mobile viewports with hamburger menu structure
• Contact form with HTML5 validation and accessibility compliance
• Rich metadata enabling proper social sharing and search engine understanding
• Performance optimizations including image lazy loading and font preloading
• Automated Git-based deployment preserving static hosting simplicity
• Blog publishing infrastructure with post templates and CLI commands

## Recent Activity
Development over the past week centers on **publishing infrastructure** with blog templating system, automated publishing commands, and deployment workflow integration. Earlier work focused on **interaction design** including staggered entrance animations, navbar scroll states, and service grid hover effects; **technical foundation** with contact form implementation, mobile navigation structure, and performance optimizations; and **content strategy** establishing the bird logo origin story and "Technology Should Solve Problems" messaging framework.

## Known Gaps & Limitations
Contact form collects user input but lacks backend processing, making lead capture completely non-functional. Mobile menu button references undefined `toggleMenu()` JavaScript function, breaking navigation on all mobile devices. Navigation menu links to about, services, and contact pages that return 404 errors, creating broken user journeys. Blog infrastructure exists without any published content to demonstrate expertise or improve search visibility. No portfolio examples, case studies, or client testimonials limit credibility for prospect evaluation.

## Next Meaningful Capabilities
Functional contact form processing that captures leads while maintaining static hosting benefits. Complete service detail pages explaining deliverables, processes, and investment levels for prospect qualification. Working mobile navigation enabling full site access across device types. Published blog content demonstrating technical expertise and business understanding. Client showcase with anonymized case studies proving real-world impact and implementation depth.

## Open Technical Questions
Contact form backend strategy balancing static hosting constraints with reliable lead delivery and spam protection needs. Content management approach optimizing publishing ease against technical maintenance overhead. Mobile navigation implementation choice between JavaScript-driven interactivity or CSS-only solution. Blog content strategy for sustainable expertise demonstration without overwhelming production requirements. Analytics implementation balancing visitor insight needs with privacy compliance and site performance.

## Key Files & Entry Points
• `index.html` — Complete homepage with all functional content and business messaging
• `styles.css` — Design system with custom properties, animations, and responsive components
• `.github/workflows/deploy.yml` — Automated Cloudways deployment workflow
• `blog/index.html` — Blog landing page ready for content publishing
• `_templates/blog-post.html` — Standardized post template for consistent publishing
• `.claude/commands/publish-blog.md` — Publishing automation and workflow documentation
• `sitemap.xml` — SEO structure defining site organization for search engines
• JSON-LD structured data — ProfessionalService schema with geographic and service targeting
• `_templates/new-client.sh` — Client onboarding process template infrastructure
• `404.html` — Custom error handling for missing page requests

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-04-27_
