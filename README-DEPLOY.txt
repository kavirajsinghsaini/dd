Delhi TRANSPORT CORPORATION PWA — GITHUB PAGES

UPLOAD ALL FILES IN THIS FOLDER TO THE ROOT OF YOUR repository named delhibus.
Keep index.html, manifest.webmanifest, sw.js, icon-192.png and icon-512.png together.
Then open Settings > Pages > Deploy from a branch > main > /(root) > Save.
Site URL: https://Delhisinghsaini.github.io/delhibus/

DATE-BASED TICKET PNG FILES:
Put your own ticket images in this same root folder and name them DDMM.png, e.g. 1710.png for 17 October, 1810.png for 18 October, 0511.png for 5 November.
Profile image: profile.png

PWA INSTALL TROUBLESHOOTING:
Open the live site over HTTPS. Ensure all files are in the repository root and the two icons are PNGs exactly 192x192 and 512x512. After committing changes, wait for GitHub Pages to deploy. In Chrome, clear the old site data if the old manifest/service worker is cached, then reopen the site and try Add to Home screen > Install again.

BACKEND NOTE:
GitHub Pages does not provide a database. The app's local browser storage works on the same browser/device only. For shared cloud persistence, configure Supabase and its database policies separately. Never place a Supabase secret/service-role key in client-side HTML.
