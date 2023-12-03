

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('a0929c00-22ee-4646-814a-4479fa022801', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2023-12-03 18:16:00.929334+03');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('2e7c8c87-85f5-4e2c-9d5d-8ebac000f51c', 'a0929c00-22ee-4646-814a-4479fa022801', 'Marc', 'Hello world!', '2023-12-03 19:57:22.21757+03');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('e56c5121-68fd-49a6-99e6-b0b6fbc5ea17', 'a0929c00-22ee-4646-814a-4479fa022801', 'Marc', 'I get cat!', '2023-12-03 19:57:30.801357+03');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


