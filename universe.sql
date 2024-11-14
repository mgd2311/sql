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
    name character varying(45),
    kita integer NOT NULL,
    pito integer,
    pita integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(45),
    planet_id integer,
    size integer NOT NULL,
    pota integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nabo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nabo (
    nabo_id integer NOT NULL,
    name character varying(45),
    lefa numeric(4,1),
    description text,
    hola boolean NOT NULL,
    adios boolean NOT NULL,
    kata integer NOT NULL
);


ALTER TABLE public.nabo OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(45),
    star_id integer,
    kuta integer NOT NULL,
    ey integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(45),
    galaxy_id integer,
    kota integer NOT NULL,
    gato integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'yo', 45, 56, 67);
INSERT INTO public.galaxy VALUES (2, 'rt', 23, 34, 12);
INSERT INTO public.galaxy VALUES (3, 'ytu', 99, 87, 745);
INSERT INTO public.galaxy VALUES (4, 'pol', 456, 6788, 2344);
INSERT INTO public.galaxy VALUES (5, 'iju', 7887, 37363, 7373);
INSERT INTO public.galaxy VALUES (6, 'kdjd', 2938, 46748, 73637);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'klk', 1, 28937, 282652);
INSERT INTO public.moon VALUES (2, 'asr', 2, 4256, 7820);
INSERT INTO public.moon VALUES (3, 'jsus', 3, 63536, 228);
INSERT INTO public.moon VALUES (4, 'acs', 4, 833, 82839);
INSERT INTO public.moon VALUES (5, 'sis', 5, 17625, 3478);
INSERT INTO public.moon VALUES (6, 'hhk', 6, 9934, 173772);
INSERT INTO public.moon VALUES (7, 'plot', 7, 2526, 7282);
INSERT INTO public.moon VALUES (8, 'qwe', 8, 2536, 3738);
INSERT INTO public.moon VALUES (9, 'der', 9, 2625, 83830);
INSERT INTO public.moon VALUES (10, 'sgst', 10, 36627, 3893);
INSERT INTO public.moon VALUES (11, 'dhdh', 11, 3563, 83930);
INSERT INTO public.moon VALUES (12, 'shjs', 12, 28763, 3678);
INSERT INTO public.moon VALUES (13, 'sjsj', 1, 2627, 38930);
INSERT INTO public.moon VALUES (14, 'shshs', 2, 34567, 354);
INSERT INTO public.moon VALUES (15, 'duncj', 3, 7329, 63739);
INSERT INTO public.moon VALUES (16, 'jsjs', 4, 343567, 4673892);
INSERT INTO public.moon VALUES (17, 'shshs', 5, 353839, 28373);
INSERT INTO public.moon VALUES (18, 'shshsh', 6, 8474, 336378);
INSERT INTO public.moon VALUES (19, 'dhdhh', 7, 262728, 33637);
INSERT INTO public.moon VALUES (20, 'hgdfk', 9, 63535, 12123);


--
-- Data for Name: nabo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nabo VALUES (1, 'ksk', 345.0, 'ghj', true, false, 123);
INSERT INTO public.nabo VALUES (2, 'jjj', 678.0, 'sjsj', false, false, 3777);
INSERT INTO public.nabo VALUES (3, 'hshs', 443.0, 'ssm', true, true, 2782);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'hdhd', 1, 7869, 2345);
INSERT INTO public.planet VALUES (2, 'qw', 2, 386, 3937);
INSERT INTO public.planet VALUES (3, 'poi', 3, 648, 973);
INSERT INTO public.planet VALUES (4, 'trt', 4, 88876, 909090);
INSERT INTO public.planet VALUES (5, 'lll', 5, 1123, 1134);
INSERT INTO public.planet VALUES (6, 'popi', 6, 9865, 35672);
INSERT INTO public.planet VALUES (7, 'sd', 2, 55678, 9999);
INSERT INTO public.planet VALUES (8, 'ksk', 1, 92827, 347478);
INSERT INTO public.planet VALUES (9, 'bola', 3, 64748, 27839);
INSERT INTO public.planet VALUES (10, 'lol', 3, 2020, 2034);
INSERT INTO public.planet VALUES (11, 'peni', 4, 9282, 25);
INSERT INTO public.planet VALUES (12, 'flor', 6, 9292, 39403);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'iop', 1, 768, 9898);
INSERT INTO public.star VALUES (2, 'jkj', 2, 876, 6565);
INSERT INTO public.star VALUES (3, 'popo', 3, 444, 6765);
INSERT INTO public.star VALUES (4, 'ty', 4, 9098, 5545);
INSERT INTO public.star VALUES (5, 'lpl', 5, 2338, 3847);
INSERT INTO public.star VALUES (6, 'jhjh', 6, 63536738, 3393);


--
-- Name: galaxy galaxy_kita_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_kita_key UNIQUE (kita);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: nabo nabo_kata_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nabo
    ADD CONSTRAINT nabo_kata_key UNIQUE (kata);


--
-- Name: nabo nabo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nabo
    ADD CONSTRAINT nabo_pkey PRIMARY KEY (nabo_id);


--
-- Name: planet planet_kuta_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_kuta_key UNIQUE (kuta);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_kota_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_kota_key UNIQUE (kota);


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

