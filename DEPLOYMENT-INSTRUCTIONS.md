# BWK Digital Solutions Website Deployment Plan

## Overview
Complete static HTML/CSS website for BWK Digital Solutions, ready to deploy to Cloudways WordPress hosting.

## Files Included
- `index.html` - Home page
- `about.html` - About page  
- `services.html` - Services page
- `contact.html` - Contact page (needs form setup)
- `blog.html` - Blog page (placeholder)
- `privacy.html` - Privacy Policy (Stripe compliant)
- `terms.html` - Terms of Service (Stripe compliant)
- `refund.html` - Refund Policy (Stripe compliant)
- `styles.css` - All styling
- `logo.jpg` - Needs to be added (BWK logo)

---

## DEPLOYMENT OPTION 1: Static HTML (Simplest)

### Step 1: Get Cloudways Server Ready
1. Login to platform.cloudways.com
2. Go to the bwkdigitalsolutions-server
3. Note the **Public IP address**
4. Go to Applications → bwkdigitalsolutions
5. Get SFTP credentials from "Access Details"

### Step 2: Update Cloudflare DNS
1. Login to dash.cloudflare.com
2. Go to bwkdigitalsolutions.com → DNS
3. Delete existing A records for @ and www
4. Add new A record: @ → [Cloudways IP], Proxied
5. Add new A record: www → [Cloudways IP], Proxied

### Step 3: Configure Domain in Cloudways
1. In Cloudways app, go to Domain Management
2. Add: bwkdigitalsolutions.com (set as Primary)
3. Add: www.bwkdigitalsolutions.com
4. Go to SSL Certificate → Let's Encrypt → Install for both domains

### Step 4: Upload Files via SFTP
1. Connect using FileZilla or similar:
   - Host: [Cloudways server IP]
   - Username: [from Access Details]
   - Password: [from Access Details]
   - Port: 22
2. Navigate to: /applications/[app-folder]/public_html/
3. Delete existing WordPress files (or move to backup folder)
4. Upload all HTML, CSS files
5. Upload logo.jpg

### Step 5: Set Up Contact Form
The contact form uses Formspree (free tier = 50 submissions/month):
1. Go to formspree.io and create free account
2. Create new form, get your form ID
3. Edit contact.html, replace `YOUR_FORM_ID` with actual ID
4. Re-upload contact.html

---

## DEPLOYMENT OPTION 2: WordPress Theme

If you want to keep WordPress for future blog posts:

### Step 1: Install WordPress normally via Cloudways

### Step 2: Create Custom Theme
Create folder: /wp-content/themes/bwk-theme/

Required files:
- style.css (with theme header)
- index.php
- header.php
- footer.php
- front-page.php
- page.php
- single.php
- functions.php

### Step 3: Convert HTML to PHP Templates
- Extract nav into header.php
- Extract footer into footer.php
- Convert each page to template

### Step 4: Create Pages in WordPress Admin
- Create pages: Home, About, Services, Contact, Blog, Privacy, Terms, Refund
- Set Home as static front page
- Set Blog as posts page

---

## DEPLOYMENT OPTION 3: Use Claude Code to Deploy

Give Claude Code these instructions:

```
Deploy the BWK Digital Solutions website to Cloudways:

Server: bwkdigitalsolutions-server on Cloudways
Domain: bwkdigitalsolutions.com
Files location: [path to downloaded files]

Tasks:
1. SSH into Cloudways server using provided credentials
2. Navigate to public_html directory
3. Backup existing files
4. Upload all HTML, CSS, and image files
5. Set proper file permissions (644 for files, 755 for directories)
6. Verify site loads at https://bwkdigitalsolutions.com

Note: DNS should already be configured in Cloudflare pointing to Cloudways IP.
SSL should be configured via Cloudways Let's Encrypt.
```

---

## POST-DEPLOYMENT CHECKLIST

- [ ] Site loads at https://bwkdigitalsolutions.com
- [ ] Site loads at https://www.bwkdigitalsolutions.com (redirects to non-www)
- [ ] All pages accessible: Home, About, Services, Contact, Blog
- [ ] Legal pages accessible: Privacy, Terms, Refund
- [ ] Logo displays correctly
- [ ] Mobile menu works
- [ ] Contact form submits successfully
- [ ] SSL certificate active (green padlock)
- [ ] All internal links work

---

## STRIPE COMPLIANCE CHECKLIST

Your website meets Stripe requirements:
- [x] Business name visible
- [x] Clear description of services
- [x] Contact information (email)
- [x] Physical location (Little Rock, Arkansas)
- [x] Privacy Policy
- [x] Terms of Service  
- [x] Refund/Cancellation Policy

---

## FUTURE ENHANCEMENTS

1. **Add Google Analytics** - Track visitors
2. **Set up Formspree** - Enable contact form
3. **Add blog posts** - If using WordPress, start posting for SEO
4. **Add testimonials** - Once you have client feedback
5. **Add case studies** - Showcase your work
6. **Social media links** - When profiles are ready
