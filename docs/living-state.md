# bwkdigitalsolutions-website — Living State

## What This Is
A static marketing website for BWK Digital Solutions, a Little Rock-based consultancy that helps businesses solve digital problems through automation, integration, web development, and AI implementation. The site serves as the primary touchpoint where prospects discover Bret Kramer's services, evaluate his problem-solving philosophy, and initiate conversations through direct contact.

## How to Run & Access
Serves as static HTML/CSS/JavaScript files requiring no build process or server-side dependencies. Production deployment runs at https://bwkdigitalsolutions.com/ with automated GitHub Actions deployment to Cloudways hosting. Local development works by opening `index.html` in any browser or running a basic HTTP server. No staging environment exists.

## Site Map / Content Structure
• **Homepage** (`/`) — Complete business funnel with hero section, four-service overview, about preview, process explanation, and contact form
• **Blog section** (`/blog/`) — Landing page with publishing infrastructure but no content
• **Service detail pages** — Navigation targets for `/automation`, `/integration`, `/development`, `/ai-leverage` return 404s
• **About page** (`/about.html`) — Menu destination exists but page unimplemented  
• **Contact page** (`/contact.html`) — Dedicated form destination, currently 404
• **Legal pages** (`/privacy.html`, `/terms.html`, `/refund.html`) — Footer links to missing policy pages
• **Custom 404** (`/404.html`) — Error handling for missing content
• **SEO infrastructure** — `/sitemap.xml`, `/robots.txt`, favicon suite

## Current Architecture
Pure static architecture with no backend dependencies optimizes for hosting simplicity and performance. CSS custom properties create a design token system with semantic naming conventions throughout. Comprehensive SEO implementation includes JSON-LD structured data defining BWK as a ProfessionalService entity with detailed service catalog, Arkansas geographic targeting, and complete Open Graph/Twitter Card metadata. Typography stack combines DM Sans and DM Serif Display with Google Fonts preconnect optimization. GitHub Actions automates deployment with change notifications to an external Obsidian Hub system.

## What Works Today
• Fixed navigation with backdrop blur effects and scroll state transitions
• Staggered hero animations with dual CTA conversion paths  
• Interactive four-service grid with hover states and visual feedback
• Mobile-responsive layouts throughout with hamburger menu structure
• Contact form with HTML5 validation and accessibility attributes
• Rich social sharing metadata and business schema markup
• Performance optimizations including image lazy loading and font preloading
• Automated Git-based deployment pipeline
• Blog publishing infrastructure with post templates and CLI commands

## Recent Activity
Development over the past month focuses on **design sophistication** with staggered entrance animations, navbar scroll states, and refined visual hierarchy; **content infrastructure** including blog templating system, automated publishing commands, and deployment automation; and **quality assurance** addressing form accessibility compliance, performance bottlenecks, and interaction state polish. Current momentum centers on establishing publishing workflows while maintaining deployment simplicity.

## Known Gaps & Limitations
Contact form collects submissions but lacks backend processing, making lead generation non-functional. Navigation links to service pages, about section, and dedicated contact page return 404 errors since only homepage content exists. Mobile menu button references undefined `toggleMenu()` JavaScript function, breaking smartphone navigation entirely. Blog infrastructure exists without published content. No client examples, case studies, or testimonials limit credibility establishment for prospect conversion.

## Next Meaningful Capabilities
Working contact form processing that captures leads while preserving static hosting benefits. Complete service detail pages with clear deliverables, timelines, and investment levels for prospect qualification. Functional mobile navigation enabling full site access on smartphones. Published blog content demonstrating expertise and improving search discovery. Portfolio showcase with anonymized client results proving business impact and technical depth.

## Open Technical Questions
Contact form processing approach balancing static hosting constraints with reliable lead delivery and spam protection. Content management workflow optimizing update ease against technical maintenance complexity. Mobile navigation implementation strategy—JavaScript-driven or CSS-only solution. Blog content strategy for sustainable thought leadership without overwhelming maintenance overhead. Analytics implementation balancing visitor privacy with conversion measurement requirements.

## Key Files & Entry Points
• `index.html` — Homepage with complete business funnel and all functional content
• `styles.css` — Design system with custom properties, animations, and responsive grid components
• `.github/workflows/deploy.yml` — Automated deployment workflow targeting Cloudways hosting
• `blog/index.html` — Blog landing page with templating infrastructure ready for content
• `_templates/blog-post.html` — Consistent post structure template for content publishing
• `.claude/commands/publish-blog.md` — Publishing workflow automation and command documentation
• `sitemap.xml` — SEO site structure for search engine indexing
• `404.html` — Custom error handling for missing page requests
• JSON-LD structured data in `index.html` — ProfessionalService schema with geographic and service targeting
• `_templates/new-client.sh` — Client onboarding template infrastructure

---
_Auto-generated by [obsidian-hub](https://github.com/bret-bwkdigitalsolutions/obsidian-hub) · 2026-04-23_
