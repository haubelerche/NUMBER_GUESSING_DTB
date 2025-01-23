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
-- Name: guessing_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guessing_games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.guessing_games OWNER TO freecodecamp;

--
-- Name: guessing_games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guessing_games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guessing_games_game_id_seq OWNER TO freecodecamp;

--
-- Name: guessing_games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guessing_games_game_id_seq OWNED BY public.guessing_games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: guessing_games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing_games ALTER COLUMN game_id SET DEFAULT nextval('public.guessing_games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guessing_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guessing_games VALUES (87, 30, 10);
INSERT INTO public.guessing_games VALUES (88, 31, 854);
INSERT INTO public.guessing_games VALUES (89, 31, 916);
INSERT INTO public.guessing_games VALUES (90, 32, 625);
INSERT INTO public.guessing_games VALUES (91, 32, 790);
INSERT INTO public.guessing_games VALUES (92, 31, 162);
INSERT INTO public.guessing_games VALUES (93, 31, 912);
INSERT INTO public.guessing_games VALUES (94, 31, 963);
INSERT INTO public.guessing_games VALUES (95, 30, 14);
INSERT INTO public.guessing_games VALUES (96, 33, 762);
INSERT INTO public.guessing_games VALUES (97, 33, 966);
INSERT INTO public.guessing_games VALUES (98, 34, 805);
INSERT INTO public.guessing_games VALUES (99, 34, 419);
INSERT INTO public.guessing_games VALUES (100, 33, 332);
INSERT INTO public.guessing_games VALUES (101, 33, 180);
INSERT INTO public.guessing_games VALUES (102, 33, 901);
INSERT INTO public.guessing_games VALUES (103, 35, 634);
INSERT INTO public.guessing_games VALUES (104, 35, 708);
INSERT INTO public.guessing_games VALUES (105, 36, 835);
INSERT INTO public.guessing_games VALUES (106, 36, 853);
INSERT INTO public.guessing_games VALUES (107, 35, 992);
INSERT INTO public.guessing_games VALUES (108, 35, 697);
INSERT INTO public.guessing_games VALUES (109, 35, 145);
INSERT INTO public.guessing_games VALUES (110, 37, 975);
INSERT INTO public.guessing_games VALUES (111, 37, 194);
INSERT INTO public.guessing_games VALUES (112, 38, 626);
INSERT INTO public.guessing_games VALUES (113, 38, 740);
INSERT INTO public.guessing_games VALUES (114, 37, 888);
INSERT INTO public.guessing_games VALUES (115, 37, 42);
INSERT INTO public.guessing_games VALUES (116, 37, 415);
INSERT INTO public.guessing_games VALUES (117, 39, 181);
INSERT INTO public.guessing_games VALUES (118, 39, 105);
INSERT INTO public.guessing_games VALUES (119, 40, 727);
INSERT INTO public.guessing_games VALUES (120, 40, 84);
INSERT INTO public.guessing_games VALUES (121, 39, 215);
INSERT INTO public.guessing_games VALUES (122, 39, 648);
INSERT INTO public.guessing_games VALUES (123, 39, 877);
INSERT INTO public.guessing_games VALUES (124, 41, 431);
INSERT INTO public.guessing_games VALUES (125, 41, 711);
INSERT INTO public.guessing_games VALUES (126, 42, 509);
INSERT INTO public.guessing_games VALUES (127, 42, 330);
INSERT INTO public.guessing_games VALUES (128, 41, 281);
INSERT INTO public.guessing_games VALUES (129, 41, 110);
INSERT INTO public.guessing_games VALUES (130, 41, 914);
INSERT INTO public.guessing_games VALUES (131, 43, 83);
INSERT INTO public.guessing_games VALUES (132, 43, 803);
INSERT INTO public.guessing_games VALUES (133, 44, 642);
INSERT INTO public.guessing_games VALUES (134, 44, 218);
INSERT INTO public.guessing_games VALUES (135, 43, 674);
INSERT INTO public.guessing_games VALUES (136, 43, 260);
INSERT INTO public.guessing_games VALUES (137, 43, 250);
INSERT INTO public.guessing_games VALUES (138, 45, 435);
INSERT INTO public.guessing_games VALUES (139, 45, 909);
INSERT INTO public.guessing_games VALUES (140, 46, 188);
INSERT INTO public.guessing_games VALUES (141, 46, 495);
INSERT INTO public.guessing_games VALUES (142, 45, 23);
INSERT INTO public.guessing_games VALUES (143, 45, 614);
INSERT INTO public.guessing_games VALUES (144, 45, 971);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (30, 'hau');
INSERT INTO public.users VALUES (31, 'user_1737641120539');
INSERT INTO public.users VALUES (32, 'user_1737641120538');
INSERT INTO public.users VALUES (33, 'user_1737641614432');
INSERT INTO public.users VALUES (34, 'user_1737641614431');
INSERT INTO public.users VALUES (35, 'user_1737641643187');
INSERT INTO public.users VALUES (36, 'user_1737641643186');
INSERT INTO public.users VALUES (37, 'user_1737641970322');
INSERT INTO public.users VALUES (38, 'user_1737641970321');
INSERT INTO public.users VALUES (39, 'user_1737642048813');
INSERT INTO public.users VALUES (40, 'user_1737642048812');
INSERT INTO public.users VALUES (41, 'user_1737642086766');
INSERT INTO public.users VALUES (42, 'user_1737642086765');
INSERT INTO public.users VALUES (43, 'user_1737642135841');
INSERT INTO public.users VALUES (44, 'user_1737642135840');
INSERT INTO public.users VALUES (45, 'user_1737642190814');
INSERT INTO public.users VALUES (46, 'user_1737642190813');


--
-- Name: guessing_games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guessing_games_game_id_seq', 144, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


--
-- Name: guessing_games guessing_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing_games
    ADD CONSTRAINT guessing_games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guessing_games guessing_games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing_games
    ADD CONSTRAINT guessing_games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

