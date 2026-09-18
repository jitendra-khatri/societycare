# SocietyCare: shared hosting setup

This folder is a lightweight issue tracker for a residential society. In demo mode it stores reports in one browser. To make it shared, use the included Supabase database and host the files on Vercel, Netlify, or GitHub Pages.

## 1. Create the central database

1. Create a free project at [Supabase](https://supabase.com).
2. In **SQL Editor**, run `supabase/schema.sql`.
3. In **Project Settings > API**, copy the Project URL and **anon public** key into `config.js`.

The app will then read and submit reports to the shared database and refresh when another resident submits a report.

## 2. Protect committee actions before allowing public use

The supplied policies intentionally allow public **viewing and submission**, but do not grant the public permission to change a status or delete an issue. The current interface hides those controls in shared mode. Before adding committee actions, set up Supabase Auth and an administrator/committee role; do not expose a service-role key in the website.

## 3. Publish the website

Upload this `society-issues` folder to a GitHub repository, then import that repository into Vercel or Netlify. There is no build command: publish the repository root and set `index.html` as the entry page.

Use the generated HTTPS link (or your own domain) in the society WhatsApp group.

## Data use

Use only the minimum personal information needed to follow up. Tell residents what is collected, who can access it, and how long it will be retained. Avoid collecting phone numbers, IDs, or sensitive personal details in the report text.
