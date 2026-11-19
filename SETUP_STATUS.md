# Setup status: The Respected Man store

Separate copy of the Revival Fire Forum store code (including the Bachs card-in-another-currency fix and Nigerian 12-hour portal times), rebranded. Own domain, database, private files, Pixel, emails and portal login. No secrets here.

## Done
- 2026-11-19: Domain therespectedman.online bought at Namecheap by the owner; added to Cloudflare (Free plan) and shown as protected by Cloudflare; nameservers cleo/dora.ns.cloudflare.com. Owner was asked to delete Namecheap's parking A and www CNAME records; not yet confirmed.
- Support email supplied by owner: therespectedman1@gmail.com.
- Code rebranded (name, logo 96x96 supplied by owner, homepage wording draft, About text, portal title, CSV file name) and configured with `npm run configure` for https://therespectedman.online/books/. Resource names: the-respected-man-store, the-respected-man-db, the-respected-man-files.
- Owner confirmed the terms, privacy, refund and delivery pages stay the same as the other brand's, with this brand name.
- npm run check, npm test (124 passing) and npm run build pass.

## Not done
- Pushing to GitHub: repository https://github.com/Emmytech258/the-respected-man-store exists (empty, currently public; owner wants private). The session can read it but pushes were refused until the Claude GitHub App is granted access to it.
- Cloudflare Worker, D1 database, private R2 bucket, secrets and deployment: not created. Nothing deployed.
- Bachs account/keys/webhook, Flutterwave (if wanted), Resend sender for this domain, new Pixel and token: owner to supply in the portal.
- Books, prices, covers and PDFs: none; production stays empty until supplied.
- Larger logo (the supplied one is 96x96) and a black-and-gold theme: not built.
- Homepage wording is a draft awaiting approval.
- Nothing proven live: no live payment, receipt or Meta event for this brand.
