-- KAVIRAJ TRANSPORT CORPORATION demo simulator only.
-- Run this entire script in Supabase SQL Editor.
-- The app hides and attempts to delete transactions older than 5 hours.
-- Public demo policy: do not store real customer/payment/sensitive data.
create table if not exists public.ktc_transactions (
  order_id text primary key,
  business_name text not null,
  booked_at timestamptz not null,
  fare text,
  origin text,
  destination text,
  status text not null default 'Order complete'
);

alter table public.ktc_transactions enable row level security;

drop policy if exists "demo transactions readable" on public.ktc_transactions;
drop policy if exists "demo transactions insertable" on public.ktc_transactions;
drop policy if exists "demo transactions updatable" on public.ktc_transactions;
drop policy if exists "demo transactions cleanup" on public.ktc_transactions;

create policy "demo transactions readable" on public.ktc_transactions
  for select to anon using (true);
create policy "demo transactions insertable" on public.ktc_transactions
  for insert to anon with check (true);
create policy "demo transactions updatable" on public.ktc_transactions
  for update to anon using (true) with check (true);
create policy "demo transactions cleanup" on public.ktc_transactions
  for delete to anon using (booked_at < now() - interval '5 hours');
