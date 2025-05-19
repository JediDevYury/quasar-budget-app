SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '268c82eb-c712-48a7-85cf-4b196c7a0bdf', '{"action":"user_signedup","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-04-22 16:21:53.048753+00', ''),
	('00000000-0000-0000-0000-000000000000', '31997237-f9a0-4925-b4da-f127c01d8f44', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 16:21:53.059347+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c41118de-08c2-4d47-a556-1f13674d84aa', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 16:33:31.136116+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d9d821f-1f1c-4817-9322-01b92acd09dd', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 16:37:57.093383+00', ''),
	('00000000-0000-0000-0000-000000000000', '836d5e77-4e2e-4904-bb58-bdfb008425bd', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 16:38:19.019888+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd78ebc0e-c2f3-4f2b-9a8b-8041c517092e', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 16:41:48.958104+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0a62233-ba3e-49d6-9241-24808586b9fb', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 16:44:26.621449+00', ''),
	('00000000-0000-0000-0000-000000000000', '0955be87-64e8-4141-a964-aa409e9cb42a', '{"action":"user_signedup","actor_id":"00f16a77-7203-49cb-81d9-b7725634ce9a","actor_username":"yury.dunetsdd.dev@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-04-22 16:49:57.759748+00', ''),
	('00000000-0000-0000-0000-000000000000', '81fc980e-3745-437f-94ad-c86daf6cd797', '{"action":"login","actor_id":"00f16a77-7203-49cb-81d9-b7725634ce9a","actor_username":"yury.dunetsdd.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 16:49:57.76473+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4085494-5e3e-471d-9268-72d85b66972d', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"yury.dunetsdd.dev@gmail.com","user_id":"00f16a77-7203-49cb-81d9-b7725634ce9a","user_phone":""}}', '2025-04-22 16:51:07.594908+00', ''),
	('00000000-0000-0000-0000-000000000000', '631fba6a-4f94-494a-b6ba-480dcf400908', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 16:52:16.214268+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8da6927-a513-4145-bd95-b46d78939bab', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:01:04.962061+00', ''),
	('00000000-0000-0000-0000-000000000000', '740e8f16-10c2-443d-9f98-04b395eebaa9', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:01:08.402471+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c41893e-d1f4-494f-a25c-39cc9dfbc79a', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:11:49.160678+00', ''),
	('00000000-0000-0000-0000-000000000000', '95a74397-00c4-43fd-9d72-023495cd84e1', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:11:50.38063+00', ''),
	('00000000-0000-0000-0000-000000000000', '920aecf0-9d23-44a2-9ed8-096f444c2a0c', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:23:46.704415+00', ''),
	('00000000-0000-0000-0000-000000000000', '3361137c-4827-4e82-a359-e4a323cfcafe', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:23:51.812752+00', ''),
	('00000000-0000-0000-0000-000000000000', '75ffdcae-83cc-46a3-90c2-10c4d69d2157', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:26:29.017989+00', ''),
	('00000000-0000-0000-0000-000000000000', '63a901ae-7ac2-499a-8f7f-ed31a6c6061a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:26:30.675469+00', ''),
	('00000000-0000-0000-0000-000000000000', '36d5d524-d1ea-4f14-9a9d-f2a2fa095944', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:31:02.112448+00', ''),
	('00000000-0000-0000-0000-000000000000', '48e3752e-56a3-47bc-95f7-d9499181b441', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:31:03.723692+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9837bc3-902d-4faa-80c1-e1ab72a8fc6d', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:38:45.66207+00', ''),
	('00000000-0000-0000-0000-000000000000', '83019800-89ab-4ff3-bc16-209a971cc560', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:39:01.216467+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4b674bd-5a48-41d8-89b2-8e1aabd4736a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:39:04.86851+00', ''),
	('00000000-0000-0000-0000-000000000000', '70c4b373-0898-4ecf-b93d-90f2207ea432', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:39:06.953054+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b35cd4a-d9ce-4a4e-b127-75912fce25c3', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:39:27.663556+00', ''),
	('00000000-0000-0000-0000-000000000000', '68423b71-3d36-4b9a-8c3a-dd050ab1d73b', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:39:32.44549+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b71c2b3e-cdd8-41f2-8781-81427f789a51', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:39:33.647654+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b978ad4d-1141-4a4e-a373-a1710107bc1a', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-22 17:39:37.558207+00', ''),
	('00000000-0000-0000-0000-000000000000', '005642d8-d586-45e8-80f3-ef1feb73ce37', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-22 17:39:41.214359+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0df6488-383f-4b23-a8ad-bd7e908b0d02', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-23 08:14:27.232042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da5591bb-86d3-4f63-9183-5d158a2d1b6a', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-23 08:14:27.240507+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd1ed1428-74ed-4343-a3f8-af09d92751d8', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 08:15:39.104586+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1a1d86a-df17-487f-8834-492cda8fb929', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:50:27.650914+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb3a7d54-7596-4105-a6ac-adeb871900c0', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:50:51.530703+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e4786b3-419d-49b5-8da2-d5601c35aaa1', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:52:05.557131+00', ''),
	('00000000-0000-0000-0000-000000000000', '5986d717-878b-4727-a67c-c01d880e1fc8', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 08:52:42.177268+00', ''),
	('00000000-0000-0000-0000-000000000000', '25d120e9-d818-4baa-a40a-c4c4e322967b', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:52:44.1821+00', ''),
	('00000000-0000-0000-0000-000000000000', '37915820-385b-451d-9536-a3a8300d4453', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 08:52:56.758063+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ede8e4b5-3136-4406-8fb6-7429cc2fe72c', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:53:18.918515+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dccc72fa-e41a-4a4b-abc7-6e8b3d6edb92', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:53:21.994372+00', ''),
	('00000000-0000-0000-0000-000000000000', '22e94d15-98a9-4ef7-9322-1b7acdf77c3a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:53:51.841212+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cb18a75-6d43-41a0-9b45-973516a5f8a8', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:53:53.268952+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a9e0424-2c91-4985-b0dd-d5b53b030ffa', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:53:53.455535+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee327cf0-85b7-408d-84be-04595afd3c64', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:54:19.0434+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3ba554f-08a4-4b48-8dbe-aab57cae941d', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:54:20.03306+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdfef6c5-8f6e-493f-b3b1-21cde1abb642', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:54:41.346797+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad9667ee-862c-472b-add1-2a324fdf9afc', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:54:42.823212+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a7029bd-faf8-45fb-8403-66f514281415', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:54:44.469711+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b2b48df-bd7e-41c4-8f40-3cfd9f10b16c', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:55:28.007363+00', ''),
	('00000000-0000-0000-0000-000000000000', '2eb625a0-f3c8-46e4-ba6c-f9aa9accd6f1', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:57:19.875584+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee553a34-89c5-4031-aa63-6193e776c0cb', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:57:21.348243+00', ''),
	('00000000-0000-0000-0000-000000000000', '58dafd08-9458-4924-8c15-8c2cd252734f', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 08:58:20.513377+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf22a08e-99e9-468c-9578-88bf37d0bd39', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:00:41.54416+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dbb464b-c734-4f5c-b673-9dfc9650f9fb', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:04:44.927677+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c149a2cd-455f-4b0f-9ed6-34fbfce25f52', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:04:45.749464+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6e42058-7d2e-4d7f-a69a-fe2ad4462e05', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:05:14.434056+00', ''),
	('00000000-0000-0000-0000-000000000000', '62e274d4-7e86-423d-8a5a-1a5a608db6f2', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:05:16.03733+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a211e6fb-ff5a-438a-b5e6-9581b8d277db', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:05:23.318311+00', ''),
	('00000000-0000-0000-0000-000000000000', '10b1ce67-7b7a-4eb5-884b-0944f83b64a7', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:05:27.781371+00', ''),
	('00000000-0000-0000-0000-000000000000', '01e2e997-08fc-4dbe-b85e-eabe32295d25', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:05:42.805988+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9e72394-d85a-42f0-bcdf-5b03a4f14b35', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:05:45.571182+00', ''),
	('00000000-0000-0000-0000-000000000000', '41c9b3e3-097d-4378-939d-bc416942be4c', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:06:11.678551+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b8b3184-cb0c-41f9-b336-2833c89dc2a6', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:06:46.21808+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aabd1e37-5279-47d8-97c2-c4952b1154b5', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:08:22.971823+00', ''),
	('00000000-0000-0000-0000-000000000000', '99c11fd4-c4d4-4055-a476-170f3c13e49e', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:08:24.553288+00', ''),
	('00000000-0000-0000-0000-000000000000', '27003cd4-6045-4725-955f-4aabfe45f563', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:08:33.410597+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d6616c5-4b3a-4c44-9e19-627aa330f6bf', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:08:35.048944+00', ''),
	('00000000-0000-0000-0000-000000000000', '07f1b37d-5175-4a2a-95dc-593cb3241f11', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:08:40.899185+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea65a5b9-29ac-4612-a71e-986607bfe961', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:08:46.774148+00', ''),
	('00000000-0000-0000-0000-000000000000', '6be5b671-3155-4137-b0e4-463cd18ba5bd', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:08:51.018673+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df53d583-04d5-4306-b69b-3a88fa74825b', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:09:21.238783+00', ''),
	('00000000-0000-0000-0000-000000000000', '60c84e5c-77c6-41f8-86cd-e39d83008136', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:09:48.417754+00', ''),
	('00000000-0000-0000-0000-000000000000', '4db2e3a7-fd1e-43db-99f8-109e9ebc1a40', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:09:51.907176+00', ''),
	('00000000-0000-0000-0000-000000000000', '84b82ccb-337f-48f0-8783-648c7b5d540c', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 09:25:54.964987+00', ''),
	('00000000-0000-0000-0000-000000000000', '53f2e142-89c8-4635-bdad-b0e67ed669c0', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-23 09:25:56.848823+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c4597d2-a4a1-4d83-82ad-5078f357e110', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-23 10:36:00.654625+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e6ac849-67df-4483-94cd-c81597eb219b', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-23 10:36:00.656597+00', ''),
	('00000000-0000-0000-0000-000000000000', '8599e66b-5822-4703-ae7f-5177815a10c5', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-23 11:34:11.038811+00', ''),
	('00000000-0000-0000-0000-000000000000', '28885ad4-9a13-4dcc-9fe9-d547de9fceab', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-23 11:34:11.04131+00', ''),
	('00000000-0000-0000-0000-000000000000', '090902ed-f310-4af0-8a6c-d30fe27b328e', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-23 12:13:28.69296+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d0c1764-8100-4269-810e-3453446bbe30', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-24 15:48:21.450358+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d857b58-a882-4d80-88d9-2791381147f2', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 17:45:33.549227+00', ''),
	('00000000-0000-0000-0000-000000000000', '2798b79e-7570-4355-aa08-cb662e499e04', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-24 17:45:33.553223+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c419c7f2-7603-4e1b-83a5-41664e12c19f', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-25 06:11:47.627281+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa3cad1b-5f37-4957-8a32-3b7c92905df8', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-25 06:11:47.631127+00', ''),
	('00000000-0000-0000-0000-000000000000', '84a05e38-c84b-4432-8165-d4dc8964d33c', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-25 07:12:40.851959+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ec7acde-951c-45c7-b593-29bcdd50d2d9', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-25 07:12:40.862254+00', ''),
	('00000000-0000-0000-0000-000000000000', '408658fe-5821-4719-bcbc-62deacc93c2f', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-25 13:25:29.708703+00', ''),
	('00000000-0000-0000-0000-000000000000', '63efd993-7ddc-47e6-a1db-8e5e96471ac1', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-25 13:25:29.711834+00', ''),
	('00000000-0000-0000-0000-000000000000', '54617796-37e3-4219-aa09-2064b78663f5', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 11:04:05.372337+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fda34d3a-ceaa-4938-b083-a796b8007e73', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 11:04:05.393551+00', ''),
	('00000000-0000-0000-0000-000000000000', '892b91f0-b098-4380-b751-b712075939cf', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 11:51:32.545767+00', ''),
	('00000000-0000-0000-0000-000000000000', '71418c41-a96e-44c0-a102-c5a09aa60da1', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 12:35:02.048865+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ca4ed6b-9600-4a87-8f39-1948dd5f6868', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 12:50:27.961099+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca505dd5-b590-4e08-844f-257e692912dd', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 12:50:36.558794+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d239c5d-abd6-4193-a650-f59c81e06cb6', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 12:50:39.787357+00', ''),
	('00000000-0000-0000-0000-000000000000', '392c32ae-265e-4be0-8853-afa170c0734a', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 13:10:45.360651+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adba897a-644e-4ffa-9ec2-37538a5f5ca8', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 13:19:01.502068+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b92e5b38-33bb-410f-8c76-576567ad55fe', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-04-30 13:19:24.42316+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da9e46ad-3657-4238-9c8c-13243ca5fa91', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-04-30 13:19:38.976254+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a19b3db7-70fe-424d-a01c-7926d48911c3', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 14:18:12.618883+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd810b76-d5cc-40dd-b9e2-102e92032847', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 14:18:12.623784+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dafe3135-b573-427b-9802-3cf60f8e363f', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 15:16:43.200944+00', ''),
	('00000000-0000-0000-0000-000000000000', '800a33d4-3def-4808-99bc-3df115f035d6', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 15:16:43.203279+00', ''),
	('00000000-0000-0000-0000-000000000000', '885415d5-740f-4883-aa24-b1a269eec690', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 17:13:58.922306+00', ''),
	('00000000-0000-0000-0000-000000000000', '91c8b91c-0d93-4a3e-be80-1d319a22417b', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 17:13:58.926226+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3f3dce6-9842-4dc7-885a-a64dbc208dc1', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 18:13:24.913858+00', ''),
	('00000000-0000-0000-0000-000000000000', '371e42eb-acc3-4677-9d11-1678a55349c6', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 18:13:24.915422+00', ''),
	('00000000-0000-0000-0000-000000000000', '9511cac3-9a1c-41dc-afcb-fb73e4cde29e', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 19:12:43.497251+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a2c6d05-b1f4-456b-b29f-c7af0b066c4c', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-04-30 19:12:43.499728+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff9b7cd2-f93a-4f61-8f8a-8cdb525a5af3', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 09:10:53.695683+00', ''),
	('00000000-0000-0000-0000-000000000000', '73dcb1fe-d576-49d4-8904-3689444cd160', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 09:10:53.703483+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ba15fe6-078a-4d77-ae08-aeeddabb3025', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 10:09:28.044154+00', ''),
	('00000000-0000-0000-0000-000000000000', '016a0e2a-3c7a-42c1-a854-3a9f7a1ecab1', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 10:09:28.048512+00', ''),
	('00000000-0000-0000-0000-000000000000', '025e05f7-e076-4da5-9396-1903fb8c1811', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 11:22:09.06153+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3a94dd8-1194-410d-9355-5d11299fb1f5', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 11:22:09.064382+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adfb1d1f-8062-4a0b-b344-ded764859f5f', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 12:14:41.675515+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aee3a8b3-692f-48cc-8a30-53faffa5b563', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 12:14:43.559882+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afb9cb16-57ba-4dd3-837a-d7247e013376', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 12:17:08.025789+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f5337bd-9907-48d6-a0ce-70969661f29a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 12:17:10.385324+00', ''),
	('00000000-0000-0000-0000-000000000000', '4333d308-bac1-445e-99b5-4b9b4232585d', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 12:17:31.367156+00', ''),
	('00000000-0000-0000-0000-000000000000', '544a7a1d-350e-416e-ae44-38c43d9fb12f', '{"action":"user_signedup","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-05-01 12:17:47.150901+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f44dba9a-4962-4619-b5a2-9c5c585ceafe', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 12:17:47.157582+00', ''),
	('00000000-0000-0000-0000-000000000000', '7985b87e-e163-4f94-93ed-4748f5abdfff', '{"action":"logout","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 12:29:00.867731+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c76dad1-3861-47d9-97d4-857a39e5f4af', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 12:29:02.567797+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df7b3111-ac13-4176-bc09-6cd18f570c20', '{"action":"logout","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 12:39:04.963871+00', ''),
	('00000000-0000-0000-0000-000000000000', '3027e178-0ae4-44c6-8a2c-3fd8626d31e4', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 12:39:06.721873+00', ''),
	('00000000-0000-0000-0000-000000000000', '062cc29f-5ea8-47f7-a838-34e2c4406bc7', '{"action":"logout","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 12:40:44.03191+00', ''),
	('00000000-0000-0000-0000-000000000000', '62f52daa-ef58-4fb6-8fbb-c825dbc4d791', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 12:40:45.856506+00', ''),
	('00000000-0000-0000-0000-000000000000', '62106489-d908-4dd3-b876-f2d38ebb3e2e', '{"action":"token_refreshed","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 13:40:42.655595+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c49f97c-3ef1-4756-9d1b-bce0531e9bcf', '{"action":"token_revoked","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-01 13:40:42.657784+00', ''),
	('00000000-0000-0000-0000-000000000000', '91f2c73c-27a0-4aa2-bfbf-02078aecdbb3', '{"action":"logout","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-01 14:23:24.448633+00', ''),
	('00000000-0000-0000-0000-000000000000', '476fc6e8-8c7c-40f4-a7c6-d0965d48119e', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-01 14:23:31.289179+00', ''),
	('00000000-0000-0000-0000-000000000000', '71b4371a-b4a0-4b78-b7a3-66701e836829', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 09:23:47.592975+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac0b07d8-7488-42cc-912a-3330098221c0', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 09:28:42.229806+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a13291c1-8132-4ada-84af-14b6af17a085', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 09:59:19.369626+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f8ca42d-d64d-4251-b6d3-aee5dd86399d', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 09:59:19.373405+00', ''),
	('00000000-0000-0000-0000-000000000000', '4400158f-e50e-4428-950d-719bc9f03476', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-02 09:59:24.369649+00', ''),
	('00000000-0000-0000-0000-000000000000', '0fd96577-c767-4354-8240-b82e10320939', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 10:37:03.615065+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c069f09-d6c8-47b6-8d3a-859599c740ed', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-02 11:10:40.046438+00', ''),
	('00000000-0000-0000-0000-000000000000', '40f502ef-08ff-4b27-8f07-c4716bacd70a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 11:10:41.66267+00', ''),
	('00000000-0000-0000-0000-000000000000', '80788b11-ad46-408c-99ea-4ced184341a4', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-02 11:50:58.907751+00', ''),
	('00000000-0000-0000-0000-000000000000', '332cc184-35e9-4feb-8db4-6dcb01c8bcfa', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 13:15:28.436924+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b1b0008-2772-41e7-be7a-6ccaeb22ed19', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 14:02:22.430131+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2503143-60e8-44bc-b1e1-9b04a42060a5', '{"action":"token_refreshed","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 15:01:01.169815+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c60af330-b545-4afc-a83c-c6378b914597', '{"action":"token_revoked","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-02 15:01:01.172202+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ff7e85c-a92a-49e5-ad32-0f360d73a60a', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-02 15:33:33.75083+00', ''),
	('00000000-0000-0000-0000-000000000000', '798e3bf4-c64f-404f-bb11-7442e53584b3', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 15:33:35.983743+00', ''),
	('00000000-0000-0000-0000-000000000000', '652ffa47-a157-407c-8764-1c0aa3dd0f52', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-02 15:37:36.389178+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de75500b-1314-4089-8e87-77cc9b8f636a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 15:37:38.531654+00', ''),
	('00000000-0000-0000-0000-000000000000', '26bc6b21-77e0-479f-933a-61bf5b1bb202', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-02 15:37:41.55446+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2e35fd5-ca89-40a7-90e6-79ca2600891c', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-02 15:37:50.817525+00', ''),
	('00000000-0000-0000-0000-000000000000', '05314b85-d8b0-4815-a0ed-0dc3bdd1d36a', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 08:50:01.901601+00', ''),
	('00000000-0000-0000-0000-000000000000', '70b5772a-148f-48f8-8a19-ef3ee5937ab4', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 08:53:01.408946+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ad8b290-829b-4fdf-ae3b-93cadce5ec0c', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 09:19:10.213482+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4f201e3-8207-4d2c-8eb8-16a6cde61e7d', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 09:19:15.094197+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d5f2d5d-eb83-4cec-8b04-3142ac9213cb', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 09:19:17.884628+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ee377a8-ac34-41dd-a1ff-7e509346e26d', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 09:20:36.929128+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b40c202-5807-4f9c-95ba-566afcc4160f', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 09:20:39.625558+00', ''),
	('00000000-0000-0000-0000-000000000000', '1986b5bc-4574-4c9e-ba07-9a68b4609133', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 09:48:30.222615+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be0e4de7-8cc5-4ff7-9e72-4c4d6bf51473', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 09:48:43.353867+00', ''),
	('00000000-0000-0000-0000-000000000000', '73602c1a-7fa6-4d3f-8567-27afc2357fee', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 09:49:00.906325+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b6c21b8-b6c7-423a-aec8-26b21d5e91fb', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 09:50:08.145664+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1238599-adca-4242-b6b5-bd2a3596f708', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 09:50:18.425918+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4965ba3-212d-4dae-9596-aa949e4d8c20', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 09:50:33.944301+00', ''),
	('00000000-0000-0000-0000-000000000000', '19ae4ec6-6801-4066-af0b-502c0c0b6e14', '{"action":"logout","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 10:00:56.510981+00', ''),
	('00000000-0000-0000-0000-000000000000', '442d6d09-9f6b-4f8b-8a0e-23aa5b9f7466', '{"action":"login","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 10:01:36.874968+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d5a95d3-2f10-4413-8d7a-23b7aea13bdb', '{"action":"logout","actor_id":"78eed150-655b-4cc1-8213-8951dddfd005","actor_username":"test@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 10:01:44.293505+00', ''),
	('00000000-0000-0000-0000-000000000000', '8117d681-c635-4c1d-a544-e3a1a3628276', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-05 10:01:47.925512+00', ''),
	('00000000-0000-0000-0000-000000000000', '948de69d-b486-4ff0-a752-623d5966e01f', '{"action":"logout","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-05 10:01:55.301682+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d34772a-ebcd-4431-9cef-9510de69c252', '{"action":"login","actor_id":"ba685089-ff43-44a6-b2d4-94ba12d4e54f","actor_username":"yury.dunets.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-19 09:38:51.942769+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '78eed150-655b-4cc1-8213-8951dddfd005', 'authenticated', 'authenticated', 'test@gmail.com', '$2a$10$O7bfVhjycYSvdWzde0p79uu1UiMqesA15/3qenyAhijswrCqB32lu', '2025-05-01 12:17:47.151571+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-05-05 10:01:36.877312+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "78eed150-655b-4cc1-8213-8951dddfd005", "email": "test@gmail.com", "email_verified": true, "phone_verified": false}', NULL, '2025-05-01 12:17:47.133264+00', '2025-05-05 10:01:36.879539+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', 'authenticated', 'authenticated', 'yury.dunets.dev@gmail.com', '$2a$10$LTeZshG3OnIFStLjfJj2lObLZpeGZI9V8gxcL7yGfUJB0KO6Qy3w6', '2025-04-22 16:21:53.051315+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-05-19 09:38:51.959168+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "ba685089-ff43-44a6-b2d4-94ba12d4e54f", "email": "yury.dunets.dev@gmail.com", "email_verified": true, "phone_verified": false}', NULL, '2025-04-22 16:21:53.017812+00', '2025-05-19 09:38:51.976013+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('ba685089-ff43-44a6-b2d4-94ba12d4e54f', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{"sub": "ba685089-ff43-44a6-b2d4-94ba12d4e54f", "email": "yury.dunets.dev@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-04-22 16:21:53.042288+00', '2025-04-22 16:21:53.042349+00', '2025-04-22 16:21:53.042349+00', 'f0819df4-b500-4116-ba28-da3775f20f8b'),
	('78eed150-655b-4cc1-8213-8951dddfd005', '78eed150-655b-4cc1-8213-8951dddfd005', '{"sub": "78eed150-655b-4cc1-8213-8951dddfd005", "email": "test@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-05-01 12:17:47.145225+00', '2025-05-01 12:17:47.145287+00', '2025-05-01 12:17:47.145287+00', 'e22c6f2d-f2e6-4dc1-aa60-1473961d8f15');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('d756288b-ca8b-422e-95c0-34424cdd1e76', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-19 09:38:51.959791+00', '2025-05-19 09:38:51.959791+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '178.134.56.175', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('d756288b-ca8b-422e-95c0-34424cdd1e76', '2025-05-19 09:38:51.979885+00', '2025-05-19 09:38:51.979885+00', 'password', 'f7653fe4-7241-4bde-aff0-ea9c0f92ccdc');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 101, 'vc5zdn4tpqlo', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', false, '2025-05-19 09:38:51.966692+00', '2025-05-19 09:38:51.966692+00', NULL, 'd756288b-ca8b-422e-95c0-34424cdd1e76');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."entries" ("id", "name", "amount", "created_at", "paid", "order", "user_id") VALUES
	('3b849782-59e6-4da4-bd4d-788c8cdd62dd', 'Salary', 2000, '2025-05-02 11:26:26.042241', false, 1, 'ba685089-ff43-44a6-b2d4-94ba12d4e54f'),
	('d403fa04-d311-45f9-806d-4af57c1d5331', 'Netflix', -200, '2025-05-02 11:34:51.241811', false, 2, 'ba685089-ff43-44a6-b2d4-94ba12d4e54f'),
	('95f47b5e-70c9-4a49-9ed1-98ba3fbcf09c', 'Setanta', -200, '2025-05-02 11:35:25.779827', false, 3, 'ba685089-ff43-44a6-b2d4-94ba12d4e54f'),
	('18624478-f9fc-4a29-ad9b-e5e39bad520e', 'Setanta', -200, '2025-05-05 09:53:11.906742', false, 1, '78eed150-655b-4cc1-8213-8951dddfd005'),
	('c048d192-6cb6-4521-9f77-166534f8f54a', 'Salary', 2000, '2025-05-05 09:50:56.031513', false, 2, '78eed150-655b-4cc1-8213-8951dddfd005');


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "created_at", "avatar_filename") VALUES
	('ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 14:49:16.056694+00', '1746436809524_avatar-5.jpg'),
	('78eed150-655b-4cc1-8213-8951dddfd005', '2025-05-02 15:38:03.400521+00', '1746439082268_avatar-1.png');


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."stats" ("id", "created_at", "name", "value") VALUES
	(1, '2025-05-02 10:03:44.067128+00', 'entries_count', 5);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('avatars', 'avatars', NULL, '2025-05-02 12:57:13.740987+00', '2025-05-02 12:57:13.740987+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('f854ef64-c17f-484b-adae-da5e1f8fb2c2', 'avatars', '78eed150-655b-4cc1-8213-8951dddfd005/1746200282339_avatar-5.jpg', '78eed150-655b-4cc1-8213-8951dddfd005', '2025-05-02 15:38:03.166622+00', '2025-05-02 15:38:03.166622+00', '2025-05-02 15:38:03.166622+00', '{"eTag": "\"53c5b3b9fb9d8cc1b74ce22a0cfe2b83\"", "size": 8205, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:38:04.000Z", "contentLength": 8205, "httpStatusCode": 200}', '9cfcf380-ebe6-40e7-afe0-4fd2676de2e3', '78eed150-655b-4cc1-8213-8951dddfd005', '{}'),
	('2118a631-ceaf-4808-8828-e79ca85c5bb8', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746197354792_avatar-2.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 14:49:15.818796+00', '2025-05-02 14:49:15.818796+00', '2025-05-02 14:49:15.818796+00', '{"eTag": "\"b92436bf43acf0687d7e526741cae598\"", "size": 5664, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T14:49:16.000Z", "contentLength": 5664, "httpStatusCode": 200}', '7a0f575d-73dc-46c9-9bf1-674eae2efe88', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('69bfa3c4-0ad1-48c7-8ff3-a879e4fa0389', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746197558642_avatar-3.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 14:52:39.556701+00', '2025-05-02 14:52:39.556701+00', '2025-05-02 14:52:39.556701+00', '{"eTag": "\"7ca50ff104919fb1c4f35a7d5d453ba5\"", "size": 5174, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T14:52:40.000Z", "contentLength": 5174, "httpStatusCode": 200}', 'e6e2c033-34c3-4669-ad86-8a59f6be5e9e', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('dd5aeb0c-3bb7-4794-9063-d76bda73259c', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746198395660_avatar-4.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:06:36.274316+00', '2025-05-02 15:06:36.274316+00', '2025-05-02 15:06:36.274316+00', '{"eTag": "\"63bee6ed56056b9098698890ff772967\"", "size": 16529, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:06:37.000Z", "contentLength": 16529, "httpStatusCode": 200}', 'a3b02472-9f4f-4251-b74f-0c1dd77fa593', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('e5a0c80d-3117-42f9-b209-8aad327baa9d', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746198640131_avatar-3.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:10:40.911975+00', '2025-05-02 15:10:40.911975+00', '2025-05-02 15:10:40.911975+00', '{"eTag": "\"7ca50ff104919fb1c4f35a7d5d453ba5\"", "size": 5174, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:10:41.000Z", "contentLength": 5174, "httpStatusCode": 200}', '95770575-dca9-48f6-8908-8c29e72c8d05', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('1c3ae95f-618f-4479-a33d-cb4f256f1569', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746198940535_avatar-1.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:15:42.15224+00', '2025-05-02 15:15:42.15224+00', '2025-05-02 15:15:42.15224+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:15:43.000Z", "contentLength": 6715, "httpStatusCode": 200}', 'b57858ba-1ab0-496c-8425-2a28fbe07f3b', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('4c8ab480-f1ed-4dfe-937b-0697c7953690', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199088747_avatar-5.jpg', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:18:09.540632+00', '2025-05-02 15:18:09.540632+00', '2025-05-02 15:18:09.540632+00', '{"eTag": "\"53c5b3b9fb9d8cc1b74ce22a0cfe2b83\"", "size": 8205, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:18:10.000Z", "contentLength": 8205, "httpStatusCode": 200}', '74ff1cc1-41a5-4dc9-8d02-6bb16adec24d', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('fcc52169-5aaf-49f1-a2f8-9b6af1829cf2', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199122020_avatar-1.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:18:42.645084+00', '2025-05-02 15:18:42.645084+00', '2025-05-02 15:18:42.645084+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:18:43.000Z", "contentLength": 6715, "httpStatusCode": 200}', 'd6349756-9949-466a-88c3-ba0fc748d7a8', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('26a4e5e3-cb27-4c12-ba76-98161bdc8446', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199135348_avatar-2.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:18:55.625333+00', '2025-05-02 15:18:55.625333+00', '2025-05-02 15:18:55.625333+00', '{"eTag": "\"b92436bf43acf0687d7e526741cae598\"", "size": 5664, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:18:56.000Z", "contentLength": 5664, "httpStatusCode": 200}', 'eb55124f-8764-4b01-9b3a-6053eaafe926', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('0eed1b9a-af3a-4c20-90ae-a4675b5e4cec', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199210152_avatar-5.jpg', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:20:10.94382+00', '2025-05-02 15:20:10.94382+00', '2025-05-02 15:20:10.94382+00', '{"eTag": "\"53c5b3b9fb9d8cc1b74ce22a0cfe2b83\"", "size": 8205, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:20:11.000Z", "contentLength": 8205, "httpStatusCode": 200}', '4b31d2a6-851d-4835-946d-6efbad6e8a94', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('8b8dced9-e928-422c-ae79-d6de1b82e73b', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199260510_avatar-1.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:21:01.408797+00', '2025-05-02 15:21:01.408797+00', '2025-05-02 15:21:01.408797+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:21:02.000Z", "contentLength": 6715, "httpStatusCode": 200}', '6bc10960-df8f-4ec4-9d73-caf716d23d6b', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('6144f580-8efe-47ad-ae01-09b6b178950d', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199726298_avatar-3.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:28:47.308782+00', '2025-05-02 15:28:47.308782+00', '2025-05-02 15:28:47.308782+00', '{"eTag": "\"7ca50ff104919fb1c4f35a7d5d453ba5\"", "size": 5174, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:28:48.000Z", "contentLength": 5174, "httpStatusCode": 200}', '49be4ac5-0190-4bdb-8cc1-dea9a8e29ec4', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('dc93cac5-5fa3-4fee-bc9f-797b3f779a2f', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199773947_avatar-1.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:29:34.748819+00', '2025-05-02 15:29:34.748819+00', '2025-05-02 15:29:34.748819+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:29:35.000Z", "contentLength": 6715, "httpStatusCode": 200}', 'edb78103-603b-4be8-8622-a071f5b2b522', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('e76dfe29-072e-40a8-a2e2-da8ae9c12a43', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746436780030_avatar-3.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-05 09:19:41.079217+00', '2025-05-05 09:19:41.079217+00', '2025-05-05 09:19:41.079217+00', '{"eTag": "\"7ca50ff104919fb1c4f35a7d5d453ba5\"", "size": 5174, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-05T09:19:42.000Z", "contentLength": 5174, "httpStatusCode": 200}', 'c125ae38-8142-4fda-966b-e7bb49efdc94', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('e029ae91-ef04-4446-896e-de11d0e55788', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199975451_avatar-4.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:32:56.731761+00', '2025-05-02 15:32:56.731761+00', '2025-05-02 15:32:56.731761+00', '{"eTag": "\"63bee6ed56056b9098698890ff772967\"", "size": 16529, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:32:57.000Z", "contentLength": 16529, "httpStatusCode": 200}', '39db484a-0983-4c1f-8ddc-f99fbfd7028b', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('69c61209-9104-4b45-98b4-d14693e8e15e', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746199986095_avatar-1.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:33:06.439989+00', '2025-05-02 15:33:06.439989+00', '2025-05-02 15:33:06.439989+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:33:07.000Z", "contentLength": 6715, "httpStatusCode": 200}', '55ef2951-2299-489b-950c-5ba05b109c78', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('42c5338b-1b33-4173-b9d7-c56718a40b8b', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746436789979_avatar-4.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-05 09:19:50.895232+00', '2025-05-05 09:19:50.895232+00', '2025-05-05 09:19:50.895232+00', '{"eTag": "\"63bee6ed56056b9098698890ff772967\"", "size": 16529, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-05T09:19:51.000Z", "contentLength": 16529, "httpStatusCode": 200}', '6402ae15-7770-4c35-a161-8a62c715f0af', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('f96eab84-c61f-4097-a502-96eeb534c2cc', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746200022774_avatar-2.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:33:43.601667+00', '2025-05-02 15:33:43.601667+00', '2025-05-02 15:33:43.601667+00', '{"eTag": "\"b92436bf43acf0687d7e526741cae598\"", "size": 5664, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:33:44.000Z", "contentLength": 5664, "httpStatusCode": 200}', '5f7e2b40-131a-4a1b-a0f0-62e5e100ef4f', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('6512296f-3547-4023-b32b-db782c8fa0b9', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746200031746_avatar-3.png', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-02 15:33:52.217687+00', '2025-05-02 15:33:52.217687+00', '2025-05-02 15:33:52.217687+00', '{"eTag": "\"7ca50ff104919fb1c4f35a7d5d453ba5\"", "size": 5174, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-02T15:33:53.000Z", "contentLength": 5174, "httpStatusCode": 200}', 'e602ff15-6d81-4e3b-8954-b5dc0956bb0e', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('f4b9b34d-2d3c-4df9-a49a-576800598468', 'avatars', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f/1746436809524_avatar-5.jpg', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '2025-05-05 09:20:10.310583+00', '2025-05-05 09:20:10.310583+00', '2025-05-05 09:20:10.310583+00', '{"eTag": "\"53c5b3b9fb9d8cc1b74ce22a0cfe2b83\"", "size": 8205, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-05T09:20:11.000Z", "contentLength": 8205, "httpStatusCode": 200}', 'ea2c10d8-a44b-461e-8337-7d69925e8a5c', 'ba685089-ff43-44a6-b2d4-94ba12d4e54f', '{}'),
	('0c67d528-43d3-414d-bafd-6b6a33216e80', 'avatars', '78eed150-655b-4cc1-8213-8951dddfd005/1746439082268_avatar-1.png', '78eed150-655b-4cc1-8213-8951dddfd005', '2025-05-05 09:58:03.323948+00', '2025-05-05 09:58:03.323948+00', '2025-05-05 09:58:03.323948+00', '{"eTag": "\"b3503738b3245e431a14576aedcce503\"", "size": 6715, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-05T09:58:04.000Z", "contentLength": 6715, "httpStatusCode": 200}', '1465446b-fb52-4fb2-9887-29d72f3dc1d0', '78eed150-655b-4cc1-8213-8951dddfd005', '{}');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 101, true);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."stats_id_seq"', 1, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
