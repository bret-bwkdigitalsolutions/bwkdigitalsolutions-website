# SEO & AI Discoverability — Design Spec

## Goal
Optimize bwkdigitalsolutions.com for national online discoverability through both traditional search engines (Google) and AI search engines (ChatGPT, Perplexity, Google AI Overviews). Prepare the site for ongoing blog content publishing.

## Target Audience
Business owners nationwide looking for digital solutions: automation, integration, web development, and AI consulting.

## Scope
Static HTML/CSS site hosted on Cloudways. No build tools, no frameworks — all changes are direct HTML file edits and new static files.

---

## 1. Structured Data (JSON-LD)

### All Pages
- `Organization` schema: name, url, logo, email, address (Little Rock, AR), areaServed (US)
- `WebSite` schema with `SearchAction` potential

### Homepage (`index.html`)
- `ProfessionalService` schema with:
  - Service offerings as `hasOfferCatalog`
  - `areaServed: US`
  - Contact point
  - Tagline as `slogan`

### Services (`services.html`)
- Individual `Service` schemas for: Automation, Integration, Development, AI Leverage
- Each with description and provider reference

### About (`about.html`)
- `Person` schema for Bret (founder)
- `worksFor` linking to Organization

### Contact (`contact.html`)
- `ContactPage` schema
- Duplicate `Organization` contact point

### Blog Post Template
- `BlogPosting` schema with: headline, author, datePublished, dateModified, description, publisher

---

## 2. AI Crawler Files

### `/llms.txt`
Concise plaintext summary following the llms.txt spec:
- Business name, tagline, URL
- Service list (one line each)
- Contact info
- Key differentiators

### `/llms-full.txt`
Extended version with:
- Full service descriptions
- Approach and philosophy
- FAQ-style Q&A (anticipating LLM queries)
- Links to relevant pages

### `/robots.txt`
- Allow all crawlers
- Explicitly allow: GPTBot, ChatGPT-User, anthropic-ai, ClaudeBot, PerplexityBot, Google-Extended
- Reference sitemap

---

## 3. Sitemap

### `/sitemap.xml`
All pages with:
- `lastmod` dates
- `changefreq` values
- `priority` weights (homepage=1.0, services=0.9, about=0.8, blog=0.8, contact=0.7, legal=0.3)

---

## 4. Meta Tags (All Pages)

### Open Graph
- `og:title`, `og:description`, `og:url`, `og:image` (logo.jpg), `og:type` (website), `og:site_name`

### Twitter Cards
- `twitter:card` (summary_large_image), `twitter:title`, `twitter:description`, `twitter:image`

### Canonical
- `<link rel="canonical" href="https://bwkdigitalsolutions.com/{page}">` on every page

### Additional
- `<meta name="author" content="Bret Kramer">`
- `<meta name="geo.region" content="US-AR">`
- `<meta name="geo.placename" content="Little Rock">`

---

## 5. Semantic HTML

- Wrap page content in `<main>` on all pages
- Add `role="main"` for older screen readers
- Ensure clean heading hierarchy (single h1, logical h2/h3 nesting)

---

## 6. Blog Post Template

`_templates/blog-post.html`:
- Full HTML template with all SEO/AI optimizations baked in
- Placeholder variables for: title, description, date, content
- `BlogPosting` JSON-LD
- Open Graph + Twitter Card tags
- `<article>` + `<time>` semantic markup
- Author section

---

## Files

| Action | File |
|--------|------|
| Modify | `index.html` |
| Modify | `about.html` |
| Modify | `services.html` |
| Modify | `contact.html` |
| Modify | `blog.html` |
| Modify | `privacy.html` |
| Modify | `terms.html` |
| Modify | `refund.html` |
| Create | `sitemap.xml` |
| Create | `robots.txt` |
| Create | `llms.txt` |
| Create | `llms-full.txt` |
| Create | `_templates/blog-post.html` |

## Success Criteria
- All pages pass Google Rich Results Test for structured data
- llms.txt accessible at root URL
- sitemap.xml valid and referenced in robots.txt
- Open Graph tags render correct previews when shared
- Blog post template ready for first article
