KAVIRAJ TRANSPORT CORPORATION — DEMO PWA

5-HOUR TRANSACTION RETENTION
- A demo transaction is saved to browser storage immediately when Click Here opens the order summary.
- Local transaction history older than 5 hours is filtered out and removed on the next app access.
- When Supabase is configured, the same transaction is sent to the cloud backend. Last Transaction only shows cloud records from the last 5 hours, and the app attempts to delete expired cloud rows when the app is used.
- IMPORTANT: GitHub Pages alone is static hosting and does not provide a backend. Cloud saving will NOT work until you complete the setup below.

CONNECT THE BACKEND (required for cross-device cloud saving)
1. Create a Supabase project at https://supabase.com.
2. In Supabase SQL Editor, run backend-setup.sql.
3. Open Project Settings > API and copy the Project URL and anon/public key.
4. In index.html, find: const BACKEND = { url: 'YOUR_SUPABASE_PROJECT_URL', anonKey: 'YOUR_SUPABASE_ANON_KEY' };
5. Replace both placeholder values with your own Project URL and anon/public key, then save and upload the updated index.html to GitHub Pages.
6. Create a demo booking and open Last Transaction to test cloud saving.

SECURITY
The SQL policies are intentionally public for a demo. Anyone with the site may read/write demo transaction rows. Do not use real customer details, payment data, or sensitive information. The app attempts to delete rows older than 5 hours when it is used; if you require guaranteed timed deletion while nobody opens the app, configure a scheduled database job in Supabase.

IMAGE FILE NAMES
- Business profile/logo: profile.png (also profile.jpg, profile.jpeg, profile.webp)
- Ticket image: DDMM.png / .jpg / .jpeg / .webp, e.g. 17 October = 1710.png; 5 November = 0511.jpg.
- Put image files beside index.html.

FLOW
Click Here, View details, and Add Now are in-chat actions and do not create outgoing user messages.
This is a demonstration simulator, not a real booking or validation service.
