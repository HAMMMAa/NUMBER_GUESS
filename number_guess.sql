--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guess integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (26, 26, 3);
INSERT INTO public.games VALUES (27, 27, 169);
INSERT INTO public.games VALUES (28, 27, 326);
INSERT INTO public.games VALUES (29, 29, 807);
INSERT INTO public.games VALUES (30, 29, 813);
INSERT INTO public.games VALUES (31, 27, 196);
INSERT INTO public.games VALUES (32, 27, 446);
INSERT INTO public.games VALUES (33, 27, 766);
INSERT INTO public.games VALUES (34, 26, 1);
INSERT INTO public.games VALUES (35, 26, 2);
INSERT INTO public.games VALUES (36, 35, 783);
INSERT INTO public.games VALUES (37, 35, 262);
INSERT INTO public.games VALUES (38, 36, 862);
INSERT INTO public.games VALUES (39, 36, 913);
INSERT INTO public.games VALUES (40, 35, 58);
INSERT INTO public.games VALUES (41, 35, 275);
INSERT INTO public.games VALUES (42, 35, 779);
INSERT INTO public.games VALUES (43, 37, 94);
INSERT INTO public.games VALUES (44, 37, 736);
INSERT INTO public.games VALUES (45, 38, 373);
INSERT INTO public.games VALUES (46, 38, 642);
INSERT INTO public.games VALUES (47, 37, 341);
INSERT INTO public.games VALUES (48, 37, 155);
INSERT INTO public.games VALUES (49, 37, 213);
INSERT INTO public.games VALUES (50, 39, 1);
INSERT INTO public.games VALUES (51, 26, 1);
INSERT INTO public.games VALUES (52, 40, 202);
INSERT INTO public.games VALUES (53, 40, 940);
INSERT INTO public.games VALUES (54, 41, 213);
INSERT INTO public.games VALUES (55, 41, 505);
INSERT INTO public.games VALUES (56, 40, 165);
INSERT INTO public.games VALUES (57, 40, 914);
INSERT INTO public.games VALUES (58, 40, 558);
INSERT INTO public.games VALUES (59, 42, 784);
INSERT INTO public.games VALUES (60, 42, 49);
INSERT INTO public.games VALUES (61, 43, 200);
INSERT INTO public.games VALUES (62, 43, 299);
INSERT INTO public.games VALUES (63, 42, 813);
INSERT INTO public.games VALUES (64, 42, 728);
INSERT INTO public.games VALUES (65, 42, 395);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (26, 'Minh');
INSERT INTO public.users VALUES (27, 'user_1736838909173');
INSERT INTO public.users VALUES (29, 'user_1736838909172');
INSERT INTO public.users VALUES (35, 'user_1736839100086');
INSERT INTO public.users VALUES (36, 'user_1736839100085');
INSERT INTO public.users VALUES (37, 'user_1736839103461');
INSERT INTO public.users VALUES (38, 'user_1736839103460');
INSERT INTO public.users VALUES (39, 'Nga');
INSERT INTO public.users VALUES (40, 'user_1736839203357');
INSERT INTO public.users VALUES (41, 'user_1736839203356');
INSERT INTO public.users VALUES (42, 'user_1736839221111');
INSERT INTO public.users VALUES (43, 'user_1736839221110');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 65, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

