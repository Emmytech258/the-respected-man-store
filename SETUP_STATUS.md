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

## Not done
- Make the GitHub repository private (owner will do this later; check Cloudflare Workers Builds still has access afterwards).
- Cloudflare Worker, D1 database, private R2 bucket, secrets and deployment: not created. Nothing deployed.
- Bachs account/keys/webhook, Flutterwave (if wanted), Resend sender for this domain, new Pixel and token: owner to supply in the portal.
- Books, prices, covers and PDFs: none; production stays empty until supplied.
- Larger logo (the supplied one is 96x96) and a black-and-gold theme: not built.
- Homepage wording is a draft awaiting approval.
- Nothing proven live: no live payment, receipt or Meta event for this brand.
