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
    name character varying(30) NOT NULL,
    description text,
    habitable boolean,
    age integer
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
    name character varying(30) NOT NULL,
    age integer,
    planet_id integer,
    habitable boolean
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
    name character varying(30) NOT NULL,
    age integer,
    habitable boolean,
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
    name character varying(30) NOT NULL,
    age integer,
    galaxy_id integer,
    distance_from_earth numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_cluster (
    star_cluster_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.star_cluster OWNER TO freecodecamp;

--
-- Name: star_cluster_star_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_cluster_star_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_cluster_star_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: star_cluster_star_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_cluster_star_cluster_id_seq OWNED BY public.star_cluster.star_cluster_id;


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
-- Name: star_cluster star_cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster ALTER COLUMN star_cluster_id SET DEFAULT nextval('public.star_cluster_star_cluster_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'VIA LÁCTEA', 'Galaxia espiral da qual o sistema solar faz parte', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andrômeda', 'Recebe esse nome a partir da área do céu em que aparece, constelação andrômeda', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Olho Negro', 'Ela tem uma faixa escura espetacular de observar, a poeira na frente do nucleo brilhante da galaxia, dando origem ao nome "Olho Negro"', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxia de bode', 'Nomeado pelo Johann Elert Bode, que descobriu esta galaxia em 1774', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxia Charuto', ' A sua aparencia visual é semelhante a um charuto', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxia do sombreiro', 'Semelhante em aparencia a um sombrero', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 45000, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 4500, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Gânio', 45000, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 45000, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Betraier', 2005, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Diadema', 100, 1, NULL);
INSERT INTO public.moon VALUES (7, 'São Paulo', 900, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Capela', 256, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Tatuir', 128, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Araçoiaba', 79, 3, NULL);
INSERT INTO public.moon VALUES (11, 'Botucatu', 100, 1, NULL);
INSERT INTO public.moon VALUES (12, 'Itapetininga', 300, 7, NULL);
INSERT INTO public.moon VALUES (13, 'São Bernardo', 171, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Americanopolis', 200, 1, NULL);
INSERT INTO public.moon VALUES (15, 'Jardim Miriam', 157, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Catarina', 12, 1, NULL);
INSERT INTO public.moon VALUES (17, 'Guarapiranga', 89, 3, NULL);
INSERT INTO public.moon VALUES (18, 'Ipiranga', 70, 2, NULL);
INSERT INTO public.moon VALUES (19, 'Calzedonia', 13, 1, NULL);
INSERT INTO public.moon VALUES (21, 'Valdac', 3, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Marte', 46000, false, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 45000, false, 1);
INSERT INTO public.planet VALUES (3, 'Terra', 454000, true, 6);
INSERT INTO public.planet VALUES (4, 'Mercudio', 46000, false, 6);
INSERT INTO public.planet VALUES (5, 'Saturno', 46000, false, 6);
INSERT INTO public.planet VALUES (6, 'Venus', 46000, false, 6);
INSERT INTO public.planet VALUES (7, 'Urano', 46000, false, 6);
INSERT INTO public.planet VALUES (8, 'Netuno', 46000, false, 6);
INSERT INTO public.planet VALUES (9, 'Messier 31', NULL, false, 7);
INSERT INTO public.planet VALUES (10, 'Ípsilon', NULL, false, 7);
INSERT INTO public.planet VALUES (11, 'Planeta wizard', 15000, false, 5);
INSERT INTO public.planet VALUES (12, 'Dream Land', 520, true, 4);
INSERT INTO public.planet VALUES (13, 'Never Land', 1000, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 110010000, 1, 550);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10010000, 1, 643);
INSERT INTO public.star VALUES (3, 'KW Sagittarri', NULL, 1, 7800);
INSERT INTO public.star VALUES (4, 'Mu Cephei', NULL, 1, 6000);
INSERT INTO public.star VALUES (5, 'KY Cygni', NULL, 1, 5000);
INSERT INTO public.star VALUES (6, 'Sol', 45000, 1, 1496000000);
INSERT INTO public.star VALUES (7, 'Zeta Andromedae', NULL, 2, 181);
INSERT INTO public.star VALUES (8, 'Upsilon Andromedae', NULL, 2, 4426);


--
-- Data for Name: star_cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_cluster VALUES (1, 'Pleiades (M45)', 'Alson know as seven sisters');
INSERT INTO public.star_cluster VALUES (2, 'The Beehive Cluster (M44)', 'It is one of the nearest star cluster of the earth');
INSERT INTO public.star_cluster VALUES (3, 'The Alpha Persei Cluster', 'Also know as Melotte 20');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_cluster_star_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_cluster_star_cluster_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: star_cluster star_cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster
    ADD CONSTRAINT star_cluster_name_key UNIQUE (name);


--
-- Name: star_cluster star_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster
    ADD CONSTRAINT star_cluster_pkey PRIMARY KEY (star_cluster_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

