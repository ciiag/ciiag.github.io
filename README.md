# Cook Islands Internet Action Group — Website

The website of the **Cook Islands Internet Action Group (CIIAG)** — a Pacific voice in the global internet, since 2010. CIIAG promotes the safe and effective use of the internet and related technologies for Rarotonga, the Pa Enua, and the wider Pacific.

## 🌐 Live site

**https://ciiag.github.io/**

## About this repo

A single-page static website. No build step — `index.html` and the `assets/` folder are the entire site.

```
index.html        # the website
assets/           # leadership photos
.github/workflows # auto-deploy to GitHub Pages on every push
```

Fonts (Newsreader, IBM Plex Mono) and the Leaflet map library load from CDNs; the Cook Islands chart data is embedded directly in `index.html`.

## Deployment

Every push to `main` triggers the **Deploy to GitHub Pages** GitHub Action, which publishes the site automatically. No manual steps required.

## Local preview

Open `index.html` in a browser, or serve the folder:

```bash
python3 -m http.server 8000   # then visit http://localhost:8000
```

---

*Kia orāna. Cook Islands Internet Action Group Inc. · Reg. I343 · Rarotonga.*
