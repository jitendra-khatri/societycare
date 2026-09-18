-- Run this once in Supabase SQL Editor if the issues table already exists.
update public.issues set reporter = 'Unknown flat' where reporter is null or trim(reporter) = '';
alter table public.issues alter column reporter set not null;
alter table public.issues drop constraint if exists issues_reporter_not_blank;
alter table public.issues add constraint issues_reporter_not_blank
  check (char_length(trim(reporter)) between 3 and 20);
