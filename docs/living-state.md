# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site serves as the primary customer acquisition channel for business owners seeking practical digital solutions, positioning founder Bret Kramer as a problem-solver who cuts through technical complexity rather than creating it.

## How to Run & Access
The site deploys as static HTML/CSS/JavaScript files requiring no build process or server dependencies. Production runs at https://bwkdigitalsolutions.com/ through automated GitHub Actions workflow deploying to Cloudways hosting. Local development works by opening `index.html` in any browser or serving through basic HTTP server. The deployment workflow triggers on pushes to main branch and includes external notification to an Obsidian Hub system for change tracking.

## Site Map / Content Structure
• **Homepage** (`/`) — Single-page marketing experience with hero section, four-service overview (automation, integration, development, AI), about preview, contact form, and footer
• **Blog infrastructure** (`/blog/` and `/blog/index.html`) — Landing page and templating system ready for content but currently empty
• **Navigation placeholders** — Links exist for About (`#about`), Services (`#services`), and Contact (`#contact`) as page anchors, plus Blog (`blog/`) as separate page
• **Legal pages** — Placeholder files for `/privacy.html`, `/terms.html`, `/refund.html` referenced in code but not implemented
• **SEO foundation** — Complete `/sitemap.xml`, `/robots.txt`, favicon suite, and comprehensive JSON-LD structured data marking BWK as a ProfessionalService entity

## Current Architecture
Pure static architecture eliminates backend dependencies while maximizing performance and hosting portability. CSS custom properties create a cohesive design token system with semantic color variables (--ink, --warm, --cream) and consistent spacing patterns. Typography pairs DM Sans for body text with DM Serif Display for headings, loaded via Google Fonts with preconnect optimization. Comprehensive SEO implementation includes JSON-LD structured data, geographic targeting for Arkansas, and complete Open Graph/Twitter Card metadata. GitHub Actions handles deployment automation with zero-downtime static file replacement.

## What Works Today
• Fixed navigation bar with backdrop blur effects and scroll-responsive styling
• Staggered CSS keyframe animations for hero content entrance
• Four-service grid with hover interactions and visual accent transitions
• Responsive design with mobile viewport adaptation (though mobile menu JavaScript is missing)
• Contact form with complete HTML5 validation and accessibility attributes
• Rich metadata enabling proper search indexing and social media sharing
• Performance optimizations including image lazy loading and font preconnection
• Automated deployment pipeline preserving static hosting simplicity
• Blog publishing command structure and post template infrastructure

## Recent Activity
The past week focuses on **content publishing infrastructure** with blog post templates, CLI publishing commands, and weekly draft automation. Earlier April work concentrated on **visual polish and interaction design** including staggered hero animations, navbar scroll states, service grid hover effects, and contact form implementation. Late March development established **technical foundation** with mobile navigation structure, performance audit fixes, SEO optimization, and the complete site redesign around warm editorial aesthetics with bird-forward branding.

## Known Gaps & Limitations
Contact form captures user input but has no backend processing, making lead generation completely non-functional. Mobile menu button calls undefined `toggleMenu()` JavaScript function, breaking navigation on mobile devices. Blog infrastructure exists without published content to demonstrate expertise or drive search traffic. No portfolio examples, case studies, or client testimonials exist to establish credibility. Service descriptions remain high-level without specific deliverables, processes, or pricing guidance for prospect evaluation.

## Next Meaningful Capabilities
Functional contact form processing that maintains static hosting benefits while ensuring reliable lead delivery. Published blog content demonstrating technical expertise and business problem-solving approach. Working mobile navigation enabling full site functionality across device types. Client showcase featuring anonymized case studies that prove real-world impact. Service detail expansion explaining specific deliverables, timelines, and investment levels for better prospect qualification.

## Open Technical Questions
Contact form backend strategy balancing static hosting constraints with spam protection and reliable delivery requirements. Blog content strategy optimizing publishing ease against maintenance overhead for sustainable expertise demonstration. Mobile navigation implementation choice between JavaScript interactivity or CSS-only solutions. Analytics integration approach balancing visitor insights with privacy compliance and performance impact. Content management workflow for scaling beyond single-page marketing into comprehensive business resource.

## Key Files & Entry Points
• `index.html` — Complete homepage with business messaging, service overview, and contact form
• `styles.css` — Design system with custom properties, animations, responsive grid, and interaction states
• `.github/workflows/deploy.yml` — Cloudways deployment automation with external notification integration
• `blog/index.html` — Blog landing page infrastructure ready for content publishing
• `_templates/blog-post.html` — Standardized post template ensuring consistent formatting and metadata
• `.claude/commands/publish-blog.md` — Publishing workflow documentation and automation commands
• `sitemap.xml` — SEO site structure with priority weighting and update frequency hints
• `_templates/new-client.sh` — Client onboarding process automation and project initialization
• JSON-LD structured data in `index.html` — ProfessionalService schema with geographic and service catalog targeting
• `404.html` — Custom error handling maintaining brand experience for missing pages

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-04-30_
