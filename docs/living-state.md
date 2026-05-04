# bwkdigitalsolutions-website — Living State

## What This Is
A professional marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site serves as the primary customer acquisition channel for business owners seeking practical digital solutions, positioning founder Bret Kramer as a problem-solver who cuts through technical complexity.

## How to Run & Access
The site deploys as static HTML/CSS/JavaScript files requiring no build process. Production runs at https://bwkdigitalsolutions.com/ through automated GitHub Actions deployment to Cloudways hosting. Local development works by opening `index.html` directly in a browser or serving through any basic HTTP server. Deployment triggers automatically on pushes to main branch and includes external notification to an Obsidian Hub system.

## Site Map / Content Structure
• **Homepage** (`/`) — Single-page marketing experience with hero section, four-service overview grid, about preview, contact form, and process explanation
• **Blog section** (`/blog/` and `/blog/index.html`) — Landing page structure ready for content but currently empty
• **Service anchors** — On-page navigation to Services (`#services`), About (`#about`), and Contact (`#contact`) sections
• **Legal placeholders** — Stub files exist for `/privacy.html`, `/terms.html`, `/refund.html`, `/contact.html`, `/services.html`, `/about.html` but contain no content
• **SEO foundation** — Complete `/sitemap.xml`, `/robots.txt`, favicon suite, and comprehensive JSON-LD structured data marking BWK as a ProfessionalService entity with geographic targeting for Arkansas

## Current Architecture
Pure static architecture eliminates backend dependencies while maximizing performance and hosting portability. CSS custom properties establish a cohesive design token system with semantic color variables (`--ink`, `--warm`, `--cream`) and consistent spacing patterns. Typography pairs DM Sans for body text with DM Serif Display for headings, loaded via Google Fonts with preconnect optimization. Comprehensive SEO implementation includes JSON-LD structured data, Arkansas geographic targeting, and complete Open Graph/Twitter Card metadata. GitHub Actions handles zero-downtime deployment automation with static file replacement.

## What Works Today
• Fixed navigation bar with backdrop blur effects and scroll-responsive styling changes
• Staggered CSS keyframe animations create polished hero content entrance sequence
• Four-service grid displays automation, integration, development, and AI services with hover interactions and visual accent transitions
• Responsive design adapts to mobile viewports with fluid typography scaling
• Contact form includes complete HTML5 validation, accessibility attributes, and proper ARIA labeling
• Rich metadata enables proper search engine indexing and social media link previews
• Performance optimizations include image lazy loading, font preconnection, and CSS cache-busting
• Automated deployment pipeline preserves static hosting simplicity while enabling continuous delivery

## Recent Activity
The past few weeks focus on **blog infrastructure development** with post templates, CLI publishing commands, and automated weekly draft generation workflows. Mid-April work concentrated on **contact and interaction features** including functional contact forms, detailed process explanations, and the addition of BWK's origin story content. Earlier April emphasized **visual polish and animation** with staggered hero entrance effects, navbar scroll state transitions, service grid hover behaviors, and comprehensive accessibility improvements.

## Known Gaps & Limitations
Contact form captures user input but has no backend processing, making lead generation completely non-functional. Mobile menu button references undefined `toggleMenu()` JavaScript function, breaking navigation on small screens. Blog infrastructure exists but contains zero published content to demonstrate expertise or attract search traffic. No portfolio examples, client testimonials, or case studies exist to establish credibility. Service descriptions remain high-level without specific deliverables, processes, or pricing information for prospect evaluation.

## Next Meaningful Capabilities
Functional contact form processing that maintains static hosting benefits while ensuring reliable lead delivery and spam protection. Published blog content demonstrating technical expertise and practical business problem-solving approaches. Working mobile navigation enabling full site functionality across all device types. Client showcase featuring anonymized case studies that prove measurable business impact. Expanded service pages explaining specific deliverables, project timelines, and investment ranges for better prospect qualification.

## Open Technical Questions
Contact form backend strategy balancing static hosting constraints with spam protection and reliable delivery requirements. Blog content strategy optimizing publishing ease against long-term maintenance overhead for sustainable expertise demonstration. Mobile navigation implementation choice between JavaScript interactivity or CSS-only responsive solutions. Analytics integration approach balancing visitor insights with privacy compliance and site performance impact.

## Key Files & Entry Points
• `index.html` — Complete single-page marketing site with business messaging, service overview, and contact form
• `styles.css` — Comprehensive design system with custom properties, animations, responsive grid layouts, and interaction states
• `.github/workflows/deploy.yml` — Cloudways deployment automation with external notification integration
• `blog/index.html` — Blog landing page infrastructure prepared for content publishing
• `_templates/blog-post.html` — Standardized post template ensuring consistent formatting and SEO metadata
• `.claude/commands/publish-blog.md` — Publishing workflow documentation and automation command specifications
• `sitemap.xml` — SEO site structure with priority weighting and update frequency specifications
• `_templates/new-client.sh` — Client onboarding process automation and project initialization script
• JSON-LD structured data — ProfessionalService schema with geographic targeting and complete service catalog definitions
• `404.html` — Custom error page maintaining brand experience for missing page requests

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-05-04_
