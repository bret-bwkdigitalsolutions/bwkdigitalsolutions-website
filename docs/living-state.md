# bwkdigitalsolutions-website — Living State

## What This Is
A static marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses eliminate digital friction through automation, integration, web development, and AI implementation. The site serves as the primary lead generation funnel where prospects discover Bret Kramer's services, evaluate his problem-solving approach, and initiate business conversations through direct contact.

## How to Run & Access
Serves directly from static files via any web server or file system with no build process required. Production deployment lives at https://bwkdigitalsolutions.com/ with GitHub Actions deployment workflow targeting Cloudways hosting. Local development requires only opening `index.html` in a browser or running a simple HTTP server. No staging environment exists in the current setup.

## Site Map / Content Structure
• **Homepage** (`/`) — Complete funnel with hero, services overview, about preview, and contact form
• **Blog section** (`/blog/`) — Infrastructure exists with index page and templating system
• **Service pages** — Links exist for automation, integration, development, and AI services but return 404s
• **About page** (`/about.html`) — Navigation target exists but page not implemented
• **Contact page** (`/contact.html`) — Dedicated contact form destination, currently 404
• **Legal pages** — Privacy, terms, and refund policy pages referenced but not built
• **404 handler** — Custom error page exists for missing content

## Current Architecture
Pure HTML/CSS/JavaScript static architecture optimizing for hosting simplicity over dynamic capabilities. Uses CSS custom properties as a design token system with semantic component naming and comprehensive responsive grid layouts. Implements extensive SEO through JSON-LD structured data marking BWK as a ProfessionalService entity with detailed service catalog, geographic targeting for Arkansas, and complete Open Graph/Twitter Card optimization. Typography combines DM Sans and DM Serif Display with Google Fonts preconnect optimization. GitHub Actions handles automated deployment to Cloudways with change notifications to an Obsidian Hub system.

## What Works Today
• Fixed navigation with backdrop blur, scroll states, and active page indicators
• Staggered hero entrance animations with dual conversion paths
• Four-service overview grid with hover effects and visual feedback
• Complete mobile responsiveness with hamburger menu structure
• Contact form with HTML5 validation and accessibility compliance
• Rich social sharing metadata and business schema markup
• Performance optimizations including lazy loading and font preloading
• Automated deployment pipeline with Git-based publishing workflow
• Blog infrastructure with post templates and publishing commands

## Recent Activity
Over the past month, development has concentrated on three main areas: **design and interaction polish** with staggered entrance animations, navbar scroll states, and enhanced visual hierarchy; **infrastructure buildout** including blog templating system, automated publishing commands, and deployment workflows; and **comprehensive audit remediation** addressing form accessibility, performance optimization, and interaction state refinement. The trajectory shows movement from basic static site toward content publishing capabilities while maintaining deployment simplicity.

## Known Gaps & Limitations
Contact form captures leads but lacks backend processing, rendering lead generation non-functional. Navigation links to service pages, about page, and dedicated contact page return 404 errors since only the homepage exists. Mobile menu button references undefined `toggleMenu()` JavaScript function, breaking mobile navigation entirely. Blog infrastructure exists but contains no published content. No portfolio examples, case studies, or client testimonials limit credibility establishment. Missing service detail pages prevent informed prospect evaluation.

## Next Meaningful Capabilities
Functional contact form processing enabling actual lead capture without abandoning static hosting benefits. Complete service detail pages with deliverables, timelines, and investment information for qualified prospect conversion. Working mobile navigation allowing smartphone users to access all site sections. Published blog content demonstrating expertise and improving search visibility. Portfolio showcase with anonymized client outcomes proving business impact and technical competency.

## Open Technical Questions
Contact form processing solution maintaining static hosting while ensuring reliable lead delivery and spam protection. Content management workflow balancing update simplicity with technical maintenance overhead. Mobile navigation implementation approach — JavaScript-based or CSS-only solution. Blog publishing frequency and content strategy for sustainable thought leadership. Analytics implementation choice balancing visitor privacy with conversion measurement needs.

## Key Files & Entry Points
• `index.html` — Complete homepage funnel with all current functionality and content
• `styles.css` — Design system with custom properties, animations, and responsive components
• `.github/workflows/deploy.yml` — Automated deployment pipeline to Cloudways hosting
• `blog/index.html` — Blog landing page with infrastructure for content publishing
• `_templates/blog-post.html` — Template structure for consistent blog post formatting
• `.claude/commands/publish-blog.md` — Publishing workflow documentation and automation commands
• `sitemap.xml` — SEO site structure mapping for search engine discovery
• `robots.txt` — Search engine crawling permissions and sitemap location
• `404.html` — Custom error page for missing content handling
• JSON-LD structured data — ProfessionalService schema with geographic and service targeting

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-04-20_
