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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    mass_in_ton numeric(4,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    mass_in_ton numeric(4,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    mass_in_ton numeric(4,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    mass_in_ton numeric(4,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: tab; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tab (
    tab_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    killcount integer,
    description text,
    weight numeric(4,2)
);


ALTER TABLE public.tab OWNER TO freecodecamp;

--
-- Name: tab_tab_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tab_tab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_tab_id_seq OWNER TO freecodecamp;

--
-- Name: tab_tab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tab_tab_id_seq OWNED BY public.tab.tab_id;


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
-- Name: tab tab_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tab ALTER COLUMN tab_id SET DEFAULT nextval('public.tab_tab_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 26, 1.20, 'The galaxy we live in', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 25, 1.20, 'The closest large galaxy to the Milky Way', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 23, 0.30, 'A small spiral galaxy', false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 7, 20, 0.70, 'A spiral galaxy located in the Canes Venatici constellation', false, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 10, 28, 1.30, 'A spiral galaxy with a prominent dust lane', false, true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 12, 30, 1.50, 'A galaxy located in the constellation Coma Berenices', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4, 384400, 7.22, 'The Earths natural satellite', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 9280, 1.16, 'The larger moon of Mars', false, true, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 3, 628, 4.22, 'A moon of Jupiter with a potential subsurface ocean', false, true, 3);
INSERT INTO public.moon VALUES (22, 'Titan', 4500, 1200000, 1.35, 'Largest moon of Saturn with a thick atmosphere', false, true, 2);
INSERT INTO public.moon VALUES (23, 'Io', 4500, 421800, 0.89, 'The most geologically active body in the solar system', false, true, 4);
INSERT INTO public.moon VALUES (24, 'Callisto', 4500, 1880000, 1.08, 'One of Jupiters moons, with a heavily cratered surface', false, true, 5);
INSERT INTO public.moon VALUES (25, 'Ganymede', 4500, 1070000, 1.48, 'Largest moon in the solar system, also a moon of Jupiter', false, true, 6);
INSERT INTO public.moon VALUES (26, 'Enceladus', 4500, 2380000, 0.10, 'A small moon of Saturn with icy plumes', false, true, 7);
INSERT INTO public.moon VALUES (27, 'Rhea', 4500, 5270000, 0.23, 'A moon of Saturn, characterized by its icy surface', false, true, 8);
INSERT INTO public.moon VALUES (28, 'Triton', 4500, 3547000, 0.21, 'Largest moon of Neptune with retrograde orbit', false, true, 9);
INSERT INTO public.moon VALUES (29, 'Mimas', 4500, 1850000, 0.04, 'A small moon of Saturn with a large crater', false, true, 10);
INSERT INTO public.moon VALUES (30, 'Dione', 4500, 3774000, 0.56, 'A moon of Saturn known for its icy surface and bright streaks', false, true, 11);
INSERT INTO public.moon VALUES (31, 'Iapetus', 4500, 3564000, 0.59, 'Saturns moon with a striking two-tone coloration', false, true, 12);
INSERT INTO public.moon VALUES (32, 'Phoebe', 4500, 12700000, 0.20, 'A retrograde irregular moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (33, 'Miranda', 4500, 1290000, 0.06, 'A moon of Uranus with an extremely varied surface', false, true, 9);
INSERT INTO public.moon VALUES (34, 'Umbriel', 4500, 1850000, 0.03, 'A moon of Uranus with a dark, heavily cratered surface', false, true, 9);
INSERT INTO public.moon VALUES (35, 'Ariel', 4500, 1170000, 0.14, 'A moon of Uranus with icy canyons and ridges', false, true, 9);
INSERT INTO public.moon VALUES (36, 'Titania', 4500, 4350000, 0.31, 'Largest moon of Uranus, with a geologically varied surface', false, true, 9);
INSERT INTO public.moon VALUES (37, 'Oberon', 4500, 5820000, 0.25, 'A moon of Uranus with a heavily cratered surface', false, true, 9);
INSERT INTO public.moon VALUES (38, 'Leda', 4500, 12000000, 0.04, 'One of Jupiters small irregular moons', false, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 44, 0, 5.24, 'The only known planet to support life', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 46, 225, 6.23, 'The Red Planet, home to potential signs of ancient life', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4600, 778, 1.27, 'The largest planet in our solar system', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 4600, 41, 44.00, 'Known as Earth’s twin, but with extreme temperatures', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 4600, 1300, 52.60, 'Known for its prominent ring system', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 4600, 2300, 85.00, 'A gas giant with a tilted rotation axis', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 4600, 4300, 10.00, 'The furthest planet in our solar system', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 4600, 773, 33.00, 'The smallest planet and closest to the Sun', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Titan', 4500, 1200000, 13.50, 'A moon of Saturn with a thick atmosphere', false, true, 4);
INSERT INTO public.planet VALUES (10, 'Europa', 4500, 628300, 4.80, 'A moon of Jupiter with potential subsurface oceans', false, true, 4);
INSERT INTO public.planet VALUES (11, 'Io', 4500, 421800, 8.93, 'The most geologically active body in the solar system', false, true, 4);
INSERT INTO public.planet VALUES (12, 'Callisto', 4500, 1880000, 10.80, 'One of Jupiter’s moons, with a heavily cratered surface', false, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 46, 10, 1.30, 'The star at the center of our solar system', true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 200, 86, 2.10, 'The brightest star in Earths night sky', true, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 5, 47, 1.00, 'The closest star system to Earth', true, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10, 64, 18.00, 'A red supergiant star in the constellation Orion', false, true, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4500, 44, 1.29, 'The closest known star to the Sun', false, true, 2);
INSERT INTO public.star VALUES (7, 'Rigel', 800, 860, 1.30, 'A blue supergiant star in the constellation Orion', false, true, 3);
INSERT INTO public.star VALUES (5, 'betelegtwo', 800, 642, 2.30, 'A red supergiant star in the constellation Orion', false, true, 3);


--
-- Data for Name: tab; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tab VALUES (1, 'John', 30, 50, 'Experienced fighter', 85.75);
INSERT INTO public.tab VALUES (2, 'Sarah', 28, 40, 'Skilled archer', 60.50);
INSERT INTO public.tab VALUES (3, 'Alex', 35, 60, 'Tactical expert', 75.90);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 38, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: tab_tab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tab_tab_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: tab tab_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tab
    ADD CONSTRAINT tab_name_key UNIQUE (name);


--
-- Name: tab tab_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tab
    ADD CONSTRAINT tab_pkey PRIMARY KEY (tab_id);


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

