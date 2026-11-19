# Setup status: The Respected Man store

Separate copy of the Revival Fire Forum store code (including the Bachs card-in-another-currency fix and Nigerian 12-hour portal times), rebranded. Own domain, database, private files, Pixel, emails and portal login. No secrets here.

## Done
- 2026-11-19: Domain therespectedman.online bought at Namecheap by the owner; added to Cloudflare (Free plan) and shown as protected by Cloudflare; nameservers cleo/dora.ns.cloudflare.com. Owner was asked to delete Namecheap's parking A and www CNAME records; not yet confirmed.
- Support email supplied by owner: therespectedman1@gmail.com.
- Code rebranded (name, logo 96x96 supplied by owner, homepage wording draft, About text, portal title, CSV file name) and configured with `npm run configure` for https://therespectedman.online/books/. Resource names: the-respected-man-store, the-respected-man-db, the-respected-man-files.
- 2026-11-19: Owner confirmed he deleted Namecheap's parking records. Code pushed to https://github.com/Emmytech258/the-respected-man-store (main) after the owner granted the Claude GitHub App access; push permission verified by an actual push. Repository is public for now; owner will set it private later.
- Owner confirmed the terms, privacy, refund and delivery pages stay the same as the other brand's, with this brand name.
- npm run check, npm test (124 passing) and npm run build pass.

- 2026-11-19: Worker the-respected-man-store created from GitHub; custom domain attached. First build (f309c361) ran Cloudflare's default `npm run build` and `npx wrangler deploy`, not `npm run deploy`. Wrangler auto-created the D1 database and R2 bucket, but no migrations, CONFIG_KEY or initial password were set, so /books/ and /books/author/ return the generic store error (no tables yet). Build settings now read `npm run check` and `npm run deploy`; a new build was triggered to run the real setup. Not yet proven: setup output, private-bucket check, tables, working store page.

- 2026-11-19 (22:04 UTC): After the owner retried the build with `npm run check` / `npm run deploy`, the log (version 71a955a2) shows: private R2 verified, CONFIG_KEY and AUTHOR_INITIAL_PASSWORD secrets created, migrations 0001-0010 applied, "The database, private file storage and store encryption are ready", Worker deployed with custom domain therespectedman.online and the per-minute schedule. Still to confirm by looking at the live site: /books/ and /books/author/ load, portal login works.
- Open issue: pushes to main did not start new Cloudflare builds (only the first build and a manual retry ran). Check Settings > Builds > Trigger events and the Git connection.

- 2026-11-19: Owner asked for a black-and-gold look that works in light and dark mode. Done: light = ivory/black with dark-gold accents, dark = near-black with gold accents; logo clipped to a circle; placeholder cover recoloured; receipt email colours; logo.svg recoloured. Contrast checked by calculation (all text pairs at least 4.5:1, most above 8:1) and the store was viewed in a real browser (desktop and phone, light and dark) against a throwaway local database with made-up sample books that were deleted afterwards. npm run check, npm test (124) and npm run build pass. Not yet seen on the live site (needs a Cloudflare build). Owner author portal still uses the old green; not changed.

- 2026-11-20: Payment parity with the Revival Fire Forum store checked by comparing source: Bachs accepted-charge handling, naira-via-Bachs switch with bank-transfer/card-only methods, card-paid-in-another-currency settlement fix (migration 0010), Nigerian 12-hour times, unpaid orders kept, Option B tracking are all present (src/bachs.js, src/markets.js, src/store.js, src/meta.js, public/tracking.js identical; other files differ only in brand name/colours).
- Settings that are database values, not code, and must be set by the owner in this portal (defaults differ from Revival): Who takes naira payments = Bachs (default is Flutterwave); 15-minute reminder email on (default is off); Bachs live API key and live webhook signing secret; Resend key, verified sender and sender name; Pixel and Conversions API token; mode live. Owner chose to use his existing Bachs account for both brands, with a second webhook destination for https://therespectedman.online/books/api/bachs/webhook/live.
- Owner reported fixing the Cloudflare Git connection (Cloudflare banner previously said the project was disconnected). Verified only if a push now starts a build; check Deployments after this commit.

## Not done
- Make the GitHub repository private (owner will do this later; check Cloudflare Workers Builds still has access afterwards).
- Cloudflare Worker, D1 database, private R2 bucket, secrets and deployment: not created. Nothing deployed.
- Bachs account/keys/webhook, Flutterwave (if wanted), Resend sender for this domain, new Pixel and token: owner to supply in the portal.
- Books, prices, covers and PDFs: none; production stays empty until supplied.
- Larger logo: the supplied one is 96x96 and looks acceptable at header size; a bigger original would be sharper on high-density screens.
- Homepage wording is a draft awaiting approval.
- Nothing proven live: no live payment, receipt or Meta event for this brand.
