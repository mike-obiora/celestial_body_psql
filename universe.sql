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
    name character varying(60),
    description text,
    age integer NOT NULL,
    distance numeric,
    large boolean,
    has_life boolean,
    id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age integer NOT NULL,
    distance numeric,
    large boolean,
    has_life boolean,
    id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age integer NOT NULL,
    distance numeric,
    large boolean,
    has_life boolean,
    id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: shape; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.shape (
    shape_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.shape OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    distance numeric,
    large boolean,
    has_life boolean,
    description text,
    id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral', 'first type of galaxies', 3000, 400000, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Elliptical', 'oblong shape', 4000, 150000, true, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Peculiar', 'galatic collisions', 6000, 100000, true, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Lenticular', 'bulg and disk', 2000, 71000, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bared Spiral', 'barrred ', 9000, 79000, false, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Irregular', 'NA', 29000, 74000, false, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Full Moon', NULL, 15000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Half Moon', NULL, 15000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Last quarter Moon', NULL, 14300, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Mikel', NULL, 471, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Mikael', NULL, 34, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Philips', NULL, 983, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Mike', NULL, 470, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Mitchell', NULL, 234, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Philip', NULL, 123, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Lydia', NULL, 231, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Jessie', NULL, 890, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mikey', NULL, 470, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Mills', NULL, 434, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Philips', NULL, 823, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Lee', NULL, 251, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Jessica', NULL, 830, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Gilbert', NULL, 470, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Miller', NULL, 134, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Tola', NULL, 423, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Olayinka', NULL, 151, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Venus', NULL, 15000, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, 19000, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, 29000, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'James', NULL, 450, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Mike', NULL, 470, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Mitchell', NULL, 234, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Philip', NULL, 123, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Lydia', NULL, 231, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Jessie', NULL, 890, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mikel', NULL, 471, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Mikael', NULL, 34, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Philips', NULL, 983, NULL, NULL, NULL, NULL);


--
-- Data for Name: shape; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.shape VALUES (1, 'Triangle', 'NA');
INSERT INTO public.shape VALUES (2, 'Square', 'NA');
INSERT INTO public.shape VALUES (3, 'Circle', 'NA');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solar type', 29000, 74000, false, true, 'NA', NULL);
INSERT INTO public.star VALUES (2, 'Hot Blue', 19000, 64000, false, true, 'NA', NULL);
INSERT INTO public.star VALUES (3, 'Red Dwarfs', 12000, 94000, true, true, 'NA', NULL);
INSERT INTO public.star VALUES (4, 'Red Giants', 2000, 4000, true, true, 'NA', NULL);
INSERT INTO public.star VALUES (5, 'White Dwarfs', 12000, 314000, true, true, 'NA', NULL);
INSERT INTO public.star VALUES (6, 'Black Holes', 31000, 12000000, true, false, 'NA', NULL);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key1 UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key1 UNIQUE (id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key1 UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: shape shape_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_id_key UNIQUE (shape_id);


--
-- Name: shape shape_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_pkey PRIMARY KEY (shape_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key1 UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_fkey FOREIGN KEY (id) REFERENCES public.planet(id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (id) REFERENCES public.star(id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--

