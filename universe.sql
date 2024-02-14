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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(64) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    galaxy_types character varying(64),
    number_of_star integer,
    distance_from_earch integer,
    radius numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(64) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_planet integer,
    age_in_millions_of_years integer,
    radius numeric,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(64) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    number_of_moon integer,
    age_in_millions_of_years integer,
    radius numeric,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(64) NOT NULL,
    is_spherical boolean,
    has_light boolean,
    number_of_planet integer,
    age_in_millions_of_years integer,
    radius numeric,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(64) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    number_of_planet integer,
    age_in_millions_of_years integer,
    radius numeric,
    description text
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'GalaxyB', false, true, 'TypeB', 3, NULL, 4543536643543, 'GalaxyB');
INSERT INTO public.galaxy VALUES (2, 'GalaxyC', false, true, 'TypeC', 3, NULL, 454354536643543, 'GalaxyC');
INSERT INTO public.galaxy VALUES (3, 'GalaxyD', false, true, 'TypeD', 3, NULL, 4543536643543, 'GalaxyD');
INSERT INTO public.galaxy VALUES (4, 'GalaxyE', false, true, 'TypeE', 3, NULL, 4543536643543, 'GalaxyE');
INSERT INTO public.galaxy VALUES (5, 'GalaxyF', false, true, 'TypeF', 3, NULL, 4543536643543, 'GalaxyF');
INSERT INTO public.galaxy VALUES (6, 'GalaxyA', false, true, 'TypeA', 3, NULL, 4543536643543, 'GalaxyA');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'moon1', false, true, NULL, 3445, 454353, 'moon1', 14);
INSERT INTO public.moon VALUES (22, 'moon2', false, true, NULL, 3445, 454353, 'moon2', 14);
INSERT INTO public.moon VALUES (23, 'moon3', false, true, NULL, 3445, 454353, 'moon1', 15);
INSERT INTO public.moon VALUES (24, 'moon4', false, true, NULL, 3445, 454353, 'moon4', 16);
INSERT INTO public.moon VALUES (25, 'moon5', false, true, NULL, 3445, 454353, 'moon1', 13);
INSERT INTO public.moon VALUES (26, 'moon6', false, true, NULL, 3445, 454353, 'moon1', 14);
INSERT INTO public.moon VALUES (27, 'moon7', false, true, NULL, 3445, 454353, 'moon1', 14);
INSERT INTO public.moon VALUES (28, 'moon8', false, true, NULL, 3445, 454353, 'moon1', 15);
INSERT INTO public.moon VALUES (29, 'moon9', false, true, NULL, 3445, 454353, 'moon1', 18);
INSERT INTO public.moon VALUES (30, 'moon10', false, true, NULL, 3445, 454353, 'moon1', 18);
INSERT INTO public.moon VALUES (31, 'moon11', false, true, NULL, 3445, 454353, 'moon11', 14);
INSERT INTO public.moon VALUES (32, 'moon12', false, true, NULL, 3445, 454353, 'moon12', 14);
INSERT INTO public.moon VALUES (33, 'moon13', false, true, NULL, 3445, 454353, 'moon12', 13);
INSERT INTO public.moon VALUES (34, 'moon14', false, true, NULL, 3445, 454353, 'moon12', 17);
INSERT INTO public.moon VALUES (35, 'moon15', false, true, NULL, 3445, 454353, 'moon12', 14);
INSERT INTO public.moon VALUES (36, 'moon16', false, true, NULL, 3445, 454353, 'moon12', 14);
INSERT INTO public.moon VALUES (37, 'moon17', false, true, NULL, 3445, 454353, 'moon12', 12);
INSERT INTO public.moon VALUES (38, 'moon18', false, true, NULL, 3445, 454353, 'moon12', 18);
INSERT INTO public.moon VALUES (39, 'moon19', false, true, NULL, 3445, 454353, 'moon12', 12);
INSERT INTO public.moon VALUES (40, 'mooon20', false, true, NULL, 3445, 454353, 'moon12', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'planet4', false, true, 3, 335434343, 454353, 'planet4', 19);
INSERT INTO public.planet VALUES (11, 'planet5', false, true, 3, 335434343, 454353, 'planet5', 20);
INSERT INTO public.planet VALUES (12, 'planet6', false, true, 3, 3354343, 4543533, 'planet6', 21);
INSERT INTO public.planet VALUES (13, 'planet7', false, true, 3, 3354343, 4543533, 'planet7', 20);
INSERT INTO public.planet VALUES (14, 'planet8', false, true, 3, 3354343, 4543533, 'planet8', 20);
INSERT INTO public.planet VALUES (15, 'planet9', false, true, 3, 3354343, 4543533, 'planet9', 24);
INSERT INTO public.planet VALUES (16, 'planet10', false, true, 3, 3354343, 4543533, 'planet6', 23);
INSERT INTO public.planet VALUES (17, 'planet11', false, true, 3, 3354343, 4543533, 'planet6', 20);
INSERT INTO public.planet VALUES (18, 'planet12', false, true, 3, 3354343, 4543533, 'planet6', 20);
INSERT INTO public.planet VALUES (19, 'planet1', false, true, 3, 335434343, 454353, 'planet4', 19);
INSERT INTO public.planet VALUES (20, 'planet2', false, true, 3, 335434343, 454353, 'planet5', 20);
INSERT INTO public.planet VALUES (21, 'planet3', false, true, 3, 3354343, 4543533, 'planet6', 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (19, 'starA', false, true, 3, 335434343, 4545, 'starA', 1);
INSERT INTO public.star VALUES (20, 'starB', false, true, 3, 335344343, 4545, 'starB', 2);
INSERT INTO public.star VALUES (21, 'starC', false, true, 3, 33434343, 543434, 'starC', 3);
INSERT INTO public.star VALUES (22, 'starD', false, false, 3, 45, 545, 'starD', 4);
INSERT INTO public.star VALUES (23, 'starE', true, true, 3, 33434343, 543434, 'starE', 5);
INSERT INTO public.star VALUES (24, 'starF', true, true, 3, 3343433, 543434, 'starF', 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sunA', true, false, 54, NULL, 54545, 'sunA');
INSERT INTO public.sun VALUES (2, 'sunB', true, false, 54, NULL, 54545, 'sunB');
INSERT INTO public.sun VALUES (3, 'sunC', true, false, 54, NULL, 54545, 'sunC');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

