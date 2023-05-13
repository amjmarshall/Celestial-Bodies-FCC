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
-- Name: famous_astrologers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.famous_astrologers (
    famous_astrologers_id integer NOT NULL,
    name character varying(30) NOT NULL,
    bodies_discovered text
);


ALTER TABLE public.famous_astrologers OWNER TO freecodecamp;

--
-- Name: famous_astrologers_astro_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.famous_astrologers_astro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.famous_astrologers_astro_id_seq OWNER TO freecodecamp;

--
-- Name: famous_astrologers_astro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.famous_astrologers_astro_id_seq OWNED BY public.famous_astrologers.famous_astrologers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_in_light_years numeric,
    year_discovered integer NOT NULL,
    has_life boolean,
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
    name character varying(30),
    distance_from_planet_in_au numeric,
    year_discovered integer NOT NULL,
    has_life boolean,
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
    name character varying(30),
    distance_from_earth_in_au numeric,
    year_discovered integer NOT NULL,
    has_life boolean,
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
    name character varying(30),
    distance_in_light_years numeric,
    year_discovered integer NOT NULL,
    has_life boolean,
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
-- Name: famous_astrologers famous_astrologers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_astrologers ALTER COLUMN famous_astrologers_id SET DEFAULT nextval('public.famous_astrologers_astro_id_seq'::regclass);


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
-- Data for Name: famous_astrologers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.famous_astrologers VALUES (1, 'Galileo Galilei', 'Four moons of Jupiter; Rings of Saturn');
INSERT INTO public.famous_astrologers VALUES (2, 'Christiaan Huygens', 'Titan; Orion Nebula');
INSERT INTO public.famous_astrologers VALUES (3, 'Charles Messier', 'Andromeda Galaxy');
INSERT INTO public.famous_astrologers VALUES (4, 'William Herschel', 'Uranus; Two of Saturns Moons; Polar Ice Caps on Mars');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 1610, true, 'disc-shaped');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.5, 964, false, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 24, 1779, false, 'bright nucleus w/ a dark band; evil eye');
INSERT INTO public.galaxy VALUES (4, 'Bodes', 12, 1774, false, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 500, 1941, false, 'lenticular and ring');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 12, 1774, false, 'starburst');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Charon', 1.3, 1978, false, 'almost the same size as pluto', 10);
INSERT INTO public.moon VALUES (2, 'Atlas', 0.8, 1980, false, 'shaped like a UFO', 6);
INSERT INTO public.moon VALUES (3, 'Hyperion', 0.9, 1848, false, 'the space sponge', 6);
INSERT INTO public.moon VALUES (4, 'Mimas', 0.09, 1789, false, 'the death star moon', 6);
INSERT INTO public.moon VALUES (5, 'Iapetus', 0.07, 1671, false, 'tidally locked', 6);
INSERT INTO public.moon VALUES (6, 'Pan', 0.08, 1990, false, 'saucer shaped', 6);
INSERT INTO public.moon VALUES (7, 'Neried', 0.03, 1949, false, 'largest orbit of any moon in solar system', 8);
INSERT INTO public.moon VALUES (8, 'Callisto', 0.012, 1610, false, 'outermost jovian moon', 5);
INSERT INTO public.moon VALUES (9, 'Phobos', 0.001, 1877, false, 'completes three orbits a day', 4);
INSERT INTO public.moon VALUES (10, 'Ganymede', 0.007, 1610, false, 'largest moon in the solar system', 5);
INSERT INTO public.moon VALUES (11, 'Miranda', 0.0001, 1948, false, 'frankenstein moon', 7);
INSERT INTO public.moon VALUES (12, 'Epimethius', 0.0002, 1966, false, 'twin to moon Janus', 6);
INSERT INTO public.moon VALUES (13, 'Janus', 0.0002, 1966, false, 'twin to moon Epimetheus', 6);
INSERT INTO public.moon VALUES (14, 'Triton', 0.002, 1846, false, 'the cantalope moon; volcanic', 7);
INSERT INTO public.moon VALUES (15, 'Titan', 0.008, 1655, false, 'thickest atmosphere; second largest planet', 6);
INSERT INTO public.moon VALUES (16, 'Io', 0.002, 1610, false, 'volcanic; tidally locked', 5);
INSERT INTO public.moon VALUES (17, 'Rhea', 0.003, 1672, false, 'Oxygen in atmosphere; has rings', 6);
INSERT INTO public.moon VALUES (18, 'Europa', 0.004, 1610, false, 'smoothest object in solar system', 5);
INSERT INTO public.moon VALUES (19, 'Moon', 0.002, -500, false, 'the one and only', 1);
INSERT INTO public.moon VALUES (20, 'Enceladus', 0.002, 1789, false, 'ice moon; potential for life ', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.4, 1631, false, 'terrestrial; rocky-surface', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.28, 1639, false, 'terrestrial; runaway greenhouse effect', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0, -500, false, 'terrestrial; tiny blue dot', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1.8, 1609, false, 'terrestrial; no atmosphere', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4.2, 1610, false, 'gas giant; 79 moons', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 8.5, 1610, false, 'gas planet; known for rings', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 18.21, 1781, false, 'orbits on side; tinted blue-green', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 29.09, 1846, false, 'coldest planet; supersonic wind', 1);
INSERT INTO public.planet VALUES (9, 'Eris', 96.6, 2005, false, 'largest dwarf planet', 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 28, 1930, false, 'downgraded to dwarf planet, has 5 moons', 1);
INSERT INTO public.planet VALUES (11, 'Ceres', 1.9, 1801, false, 'only dwarf planet within the inner solar system', 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 49.2, 2004, false, 'shaped like an egg', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 450, true, 'yellow', 1);
INSERT INTO public.star VALUES (2, 'Polaris', 360, 1780, false, 'blue-green Cepheid variable', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 520, 1836, false, 'red supergiant', 1);
INSERT INTO public.star VALUES (4, 'Arcturus', 34, 1635, false, 'red giant', 1);
INSERT INTO public.star VALUES (5, 'Sirius', 8.6, 1844, false, 'binary', 1);
INSERT INTO public.star VALUES (6, 'Vega', 25, 1850, false, 'light blue', 1);


--
-- Name: famous_astrologers_astro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.famous_astrologers_astro_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: famous_astrologers famous_astrologers_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_astrologers
    ADD CONSTRAINT famous_astrologers_name_key UNIQUE (name);


--
-- Name: famous_astrologers famous_astrologers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_astrologers
    ADD CONSTRAINT famous_astrologers_pkey PRIMARY KEY (famous_astrologers_id);


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
