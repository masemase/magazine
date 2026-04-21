# GitHub Pages + Custom Domain Setup

## Recommended structure
- repo name: `daily-magazines` (or similar)
- publish this folder (`published_magazine_site/`) to the repo root
- use a custom subdomain like `mag.yourdomain.com`

## Public URLs
- `https://mag.yourdomain.com/latest-hn.html`
- `https://mag.yourdomain.com/latest-newsblur.html`
- `https://mag.yourdomain.com/hn/YYYY-MM-DD.html`
- `https://mag.yourdomain.com/newsblur/YYYY-MM-DD.html`

## Steps
1. Create a GitHub repo.
2. Copy contents of `published_magazine_site/` into that repo.
3. Enable GitHub Pages for the repo.
4. Add your custom domain in Pages settings (example: `mag.yourdomain.com`).
5. In your DNS provider, create a CNAME record:
   - name: `mag`
   - target: `<your-github-username>.github.io`
6. Wait for DNS + Pages to settle.

## Suggested workflow later
- After generating HN issue: run `published_magazine_site/scripts/publish_hn_local.sh`
- After generating NewsBlur issue: run `published_magazine_site/scripts/publish_newsblur_local.sh`
- Then commit/push the updated site repo.

## Nice stable links
- `latest-hn.html` is the one to send in Telegram every morning
- `latest-newsblur.html` is the one to send for the NewsBlur magazine
