--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (180, 2018, 'Final', 670, 671, 4, 2);
INSERT INTO public.games VALUES (181, 2018, 'Third Place', 672, 673, 2, 0);
INSERT INTO public.games VALUES (182, 2018, 'Semi-Final', 671, 673, 2, 1);
INSERT INTO public.games VALUES (183, 2018, 'Semi-Final', 670, 672, 1, 0);
INSERT INTO public.games VALUES (184, 2018, 'Quarter-Final', 671, 674, 3, 2);
INSERT INTO public.games VALUES (185, 2018, 'Quarter-Final', 673, 675, 2, 0);
INSERT INTO public.games VALUES (186, 2018, 'Quarter-Final', 672, 676, 2, 1);
INSERT INTO public.games VALUES (187, 2018, 'Quarter-Final', 670, 677, 2, 0);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 673, 678, 2, 1);
INSERT INTO public.games VALUES (189, 2018, 'Eighth-Final', 675, 679, 1, 0);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 672, 680, 3, 2);
INSERT INTO public.games VALUES (191, 2018, 'Eighth-Final', 676, 681, 2, 0);
INSERT INTO public.games VALUES (192, 2018, 'Eighth-Final', 671, 682, 2, 1);
INSERT INTO public.games VALUES (193, 2018, 'Eighth-Final', 674, 683, 2, 1);
INSERT INTO public.games VALUES (194, 2018, 'Eighth-Final', 677, 684, 2, 1);
INSERT INTO public.games VALUES (195, 2018, 'Eighth-Final', 670, 685, 4, 3);
INSERT INTO public.games VALUES (196, 2014, 'Final', 686, 685, 1, 0);
INSERT INTO public.games VALUES (197, 2014, 'Third Place', 687, 676, 3, 0);
INSERT INTO public.games VALUES (198, 2014, 'Semi-Final', 685, 687, 1, 0);
INSERT INTO public.games VALUES (199, 2014, 'Semi-Final', 686, 676, 7, 1);
INSERT INTO public.games VALUES (200, 2014, 'Quarter-Final', 687, 688, 1, 0);
INSERT INTO public.games VALUES (201, 2014, 'Quarter-Final', 685, 672, 1, 0);
INSERT INTO public.games VALUES (202, 2014, 'Quarter-Final', 676, 678, 2, 1);
INSERT INTO public.games VALUES (203, 2014, 'Quarter-Final', 686, 670, 1, 0);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 676, 689, 2, 1);
INSERT INTO public.games VALUES (205, 2014, 'Eighth-Final', 678, 677, 2, 0);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 670, 690, 2, 0);
INSERT INTO public.games VALUES (207, 2014, 'Eighth-Final', 686, 691, 2, 1);
INSERT INTO public.games VALUES (208, 2014, 'Eighth-Final', 687, 681, 2, 1);
INSERT INTO public.games VALUES (209, 2014, 'Eighth-Final', 688, 692, 2, 1);
INSERT INTO public.games VALUES (210, 2014, 'Eighth-Final', 685, 679, 1, 0);
INSERT INTO public.games VALUES (211, 2014, 'Eighth-Final', 672, 693, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (670, 'France');
INSERT INTO public.teams VALUES (671, 'Croatia');
INSERT INTO public.teams VALUES (672, 'Belgium');
INSERT INTO public.teams VALUES (673, 'England');
INSERT INTO public.teams VALUES (674, 'Russia');
INSERT INTO public.teams VALUES (675, 'Sweden');
INSERT INTO public.teams VALUES (676, 'Brazil');
INSERT INTO public.teams VALUES (677, 'Uruguay');
INSERT INTO public.teams VALUES (678, 'Colombia');
INSERT INTO public.teams VALUES (679, 'Switzerland');
INSERT INTO public.teams VALUES (680, 'Japan');
INSERT INTO public.teams VALUES (681, 'Mexico');
INSERT INTO public.teams VALUES (682, 'Denmark');
INSERT INTO public.teams VALUES (683, 'Spain');
INSERT INTO public.teams VALUES (684, 'Portugal');
INSERT INTO public.teams VALUES (685, 'Argentina');
INSERT INTO public.teams VALUES (686, 'Germany');
INSERT INTO public.teams VALUES (687, 'Netherlands');
INSERT INTO public.teams VALUES (688, 'Costa Rica');
INSERT INTO public.teams VALUES (689, 'Chile');
INSERT INTO public.teams VALUES (690, 'Nigeria');
INSERT INTO public.teams VALUES (691, 'Algeria');
INSERT INTO public.teams VALUES (692, 'Greece');
INSERT INTO public.teams VALUES (693, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 211, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 693, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

