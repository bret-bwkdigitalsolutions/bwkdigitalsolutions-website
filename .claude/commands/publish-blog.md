---
description: Publish a blog post from a Google Doc. Reads the doc, converts to HTML, adds to the blog listing, commits, and pushes.
---

# Publish Blog Post

The user has a blog draft ready in Google Docs. Your job is to convert it to a static HTML blog post and publish it.

## Step 1: Find the Google Doc

If the user provided a Google Doc URL or title, use that. Otherwise, use the `mcp__claude_ai_Google_Drive__search_files` tool to search for recent Google Docs with "BWK" or "blog" in the title. Present the most recent candidates and ask which one to publish.

## Step 2: Read the Google Doc

Use `mcp__claude_ai_Google_Drive__read_file_content` to read the document content.

Parse the document to extract:
- **Title**: The first heading or first line
- **Description**: First paragraph or a generated 1-2 sentence summary
- **Category**: Infer from content (Automation, AI, Development, Integration, or General)
- **Content**: The body of the post

## Step 3: Generate the blog post HTML

Read the template at `_templates/blog-post.html`. Replace all template variables:

- `{{POST_TITLE}}` — the post title
- `{{POST_DESCRIPTION}}` — the meta description (1-2 sentences)
- `{{POST_SLUG}}` — kebab-case slug derived from the title (e.g., `why-automation-matters`)
- `{{POST_DATE_ISO}}` — today's date in ISO format (YYYY-MM-DD)
- `{{POST_DATE_DISPLAY}}` — today's date in readable format (e.g., "April 18, 2026")
- `{{POST_CATEGORY}}` — the category label
- `{{POST_CONTENT}}` — the post body converted to clean HTML

When converting the Google Doc content to HTML:
- Use `<h2>` for section headings
- Use `<h3>` for sub-headings
- Wrap paragraphs in `<p>` tags
- Convert bullet lists to `<ul><li>` and numbered lists to `<ol><li>`
- Convert bold to `<strong>`, italic to `<em>`
- Convert links to `<a>` tags
- Wrap code snippets in `<code>` or `<pre><code>` for blocks
- Use `<blockquote>` for callouts/quotes
- Preserve the author's voice and tone — do NOT rewrite or "improve" the content

Write the file to `blog/{{POST_SLUG}}.html`.

## Step 4: Update the blog listing

Read `blog/index.html`. Find the `<!-- BLOG_POSTS_START -->` comment. Insert a new blog card **after** that comment (newest posts first):

```html
<a href="{{POST_SLUG}}.html" class="blog-card">
    <div class="blog-card-image"></div>
    <div class="blog-card-content">
        <p class="blog-card-meta">{{POST_DATE_DISPLAY}} &middot; {{POST_CATEGORY}}</p>
        <h3>{{POST_TITLE}}</h3>
        <p>{{POST_DESCRIPTION}}</p>
    </div>
</a>
```

If the `coming-soon` div exists, remove it entirely (both the div and its contents).

## Step 5: Update sitemap

Read `sitemap.xml` and add a new `<url>` entry for the blog post:
```xml
<url>
    <loc>https://bwkdigitalsolutions.com/blog/{{POST_SLUG}}.html</loc>
    <lastmod>{{POST_DATE_ISO}}</lastmod>
</url>
```

## Step 6: Commit and push

Stage the new/modified files:
- `blog/{{POST_SLUG}}.html` (new post)
- `blog/index.html` (updated listing)
- `sitemap.xml` (updated sitemap)

Commit with message: `feat: publish blog post — {{POST_TITLE}}`

Push to origin.

## Step 7: Confirm

Tell the user the post is live and provide the URL: `https://bwkdigitalsolutions.com/blog/{{POST_SLUG}}.html`
