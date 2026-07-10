--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'testuser', 0, NULL);
INSERT INTO public.users VALUES (2, 'player1', 2, 9);
INSERT INTO public.users VALUES (4, 'user_1783425086899', 1, 99);
INSERT INTO public.users VALUES (20, 'user_1783445920775', 1, 840);
INSERT INTO public.users VALUES (3, 'user_1783425086900', 4, 87);
INSERT INTO public.users VALUES (95, 'user_1783706577678', 2, 180);
INSERT INTO public.users VALUES (101, 'user_1783706716528', 2, 527);
INSERT INTO public.users VALUES (19, 'user_1783445920776', 4, 245);
INSERT INTO public.users VALUES (6, 'user_1783425435711', 1, 604);
INSERT INTO public.users VALUES (85, 'user_1783706131984', 5, 3);
INSERT INTO public.users VALUES (34, 'user_1783447368276', 1, 391);
INSERT INTO public.users VALUES (5, 'user_1783425435712', 4, 386);
INSERT INTO public.users VALUES (53, 'user_1783451216876', 1, 142);
INSERT INTO public.users VALUES (22, 'user_1783446176532', 1, 823);
INSERT INTO public.users VALUES (8, 'user_1783425623037', 1, 844);
INSERT INTO public.users VALUES (33, 'user_1783447368277', 4, 25);
INSERT INTO public.users VALUES (21, 'user_1783446176533', 4, 13);
INSERT INTO public.users VALUES (7, 'user_1783425623038', 4, 8);
INSERT INTO public.users VALUES (104, 'user_1783706852500', 5, 75);
INSERT INTO public.users VALUES (10, 'user_1783425806133', 1, 528);
INSERT INTO public.users VALUES (94, 'user_1783706577679', 5, 65);
INSERT INTO public.users VALUES (24, 'user_1783446939531', 1, 2);
INSERT INTO public.users VALUES (9, 'user_1783425806134', 4, 70);
INSERT INTO public.users VALUES (52, 'user_1783451216877', 4, 224);
INSERT INTO public.users VALUES (37, 'user_1783447944411', 1, 190);
INSERT INTO public.users VALUES (23, 'user_1783446939532', 4, 17);
INSERT INTO public.users VALUES (12, 'user_1783426000088', 1, 605);
INSERT INTO public.users VALUES (11, 'user_1783426000089', 4, 559);
INSERT INTO public.users VALUES (35, 'ali', 1, 5);
INSERT INTO public.users VALUES (54, 'user_1783457684080', 0, NULL);
INSERT INTO public.users VALUES (14, 'user_1783426144566', 1, 157);
INSERT INTO public.users VALUES (36, 'user_1783447944412', 4, 115);
INSERT INTO public.users VALUES (55, 'user_1783457684079', 0, NULL);
INSERT INTO public.users VALUES (13, 'user_1783426144567', 4, 320);
INSERT INTO public.users VALUES (27, 'user_1783446941148', 1, 259);
INSERT INTO public.users VALUES (39, 'ali2', 0, NULL);
INSERT INTO public.users VALUES (16, 'user_1783426268715', 1, 921);
INSERT INTO public.users VALUES (56, 'user_1783457928258', 0, NULL);
INSERT INTO public.users VALUES (15, 'user_1783426268716', 4, 163);
INSERT INTO public.users VALUES (28, 'user_1783446941891', 1, 200);
INSERT INTO public.users VALUES (57, 'user_1783457928257', 0, NULL);
INSERT INTO public.users VALUES (18, 'user_1783426275441', 1, 18);
INSERT INTO public.users VALUES (41, 'user_1783448566505', 1, 286);
INSERT INTO public.users VALUES (17, 'user_1783426275442', 4, 168);
INSERT INTO public.users VALUES (25, 'user_1783446941149', 4, 255);
INSERT INTO public.users VALUES (88, 'user_1783706286901', 2, 294);
INSERT INTO public.users VALUES (26, 'user_1783446941892', 4, 97);
INSERT INTO public.users VALUES (30, 'user_1783446943121', 1, 440);
INSERT INTO public.users VALUES (40, 'user_1783448566506', 4, 199);
INSERT INTO public.users VALUES (59, 'user_1783458317169', 1, 847);
INSERT INTO public.users VALUES (29, 'user_1783446943122', 4, 91);
INSERT INTO public.users VALUES (100, 'user_1783706716529', 5, 136);
INSERT INTO public.users VALUES (87, 'user_1783706286902', 5, 72);
INSERT INTO public.users VALUES (32, 'user_1783447014565', 1, 36);
INSERT INTO public.users VALUES (58, 'user_1783458317170', 4, 53);
INSERT INTO public.users VALUES (31, 'user_1783447014566', 4, 307);
INSERT INTO public.users VALUES (45, 'user_1783449140084', 1, 302);
INSERT INTO public.users VALUES (44, 'user_1783449140085', 4, 205);
INSERT INTO public.users VALUES (43, 'test22', 2, 10);
INSERT INTO public.users VALUES (97, 'user_1783706596908', 2, 262);
INSERT INTO public.users VALUES (47, 'user_1783449652635', 1, 92);
INSERT INTO public.users VALUES (61, 'user_1783458902983', 1, 532);
INSERT INTO public.users VALUES (90, 'user_1783706298895', 2, 880);
INSERT INTO public.users VALUES (46, 'user_1783449652636', 4, 229);
INSERT INTO public.users VALUES (60, 'user_1783458902984', 4, 51);
INSERT INTO public.users VALUES (62, 'user_1783458975929', 0, NULL);
INSERT INTO public.users VALUES (49, 'user_1783449855613', 1, 384);
INSERT INTO public.users VALUES (63, 'user_1783458975928', 0, NULL);
INSERT INTO public.users VALUES (64, 'user_1783459305853', 0, NULL);
INSERT INTO public.users VALUES (65, 'user_1783459305852', 0, NULL);
INSERT INTO public.users VALUES (66, 'user_1783705306246', 0, NULL);
INSERT INTO public.users VALUES (67, 'user_1783705306245', 0, NULL);
INSERT INTO public.users VALUES (48, 'user_1783449855614', 4, 255);
INSERT INTO public.users VALUES (68, 'user_1783705406069', 0, NULL);
INSERT INTO public.users VALUES (69, 'user_1783705406068', 0, NULL);
INSERT INTO public.users VALUES (70, 'user_1783705605023', 0, NULL);
INSERT INTO public.users VALUES (51, 'user_1783449987179', 1, 171);
INSERT INTO public.users VALUES (71, 'user_1783705605022', 0, NULL);
INSERT INTO public.users VALUES (50, 'user_1783449987180', 4, 31);
INSERT INTO public.users VALUES (72, 'rrr', 1, 12);
INSERT INTO public.users VALUES (73, 'user_1783705743342', 0, NULL);
INSERT INTO public.users VALUES (74, 'user_1783705743341', 0, NULL);
INSERT INTO public.users VALUES (75, 'user_1783705769292', 0, NULL);
INSERT INTO public.users VALUES (76, 'user_1783705769291', 0, NULL);
INSERT INTO public.users VALUES (77, 'user_1783705871062', 0, NULL);
INSERT INTO public.users VALUES (78, 'user_1783705871061', 0, NULL);
INSERT INTO public.users VALUES (79, 'user_1783705885269', 0, NULL);
INSERT INTO public.users VALUES (80, 'user_1783705885268', 0, NULL);
INSERT INTO public.users VALUES (81, 'user_1783705982731', 0, NULL);
INSERT INTO public.users VALUES (82, 'user_1783705982730', 0, NULL);
INSERT INTO public.users VALUES (114, 'user_1783707090404', 5, 278);
INSERT INTO public.users VALUES (89, 'user_1783706298896', 5, 153);
INSERT INTO public.users VALUES (84, 'user_1783706093764', 2, 45);
INSERT INTO public.users VALUES (91, 'fff', 1, 17);
INSERT INTO public.users VALUES (83, 'user_1783706093765', 5, 54);
INSERT INTO public.users VALUES (96, 'user_1783706596909', 5, 64);
INSERT INTO public.users VALUES (86, 'user_1783706131983', 2, 240);
INSERT INTO public.users VALUES (93, 'user_1783706570183', 2, 397);
INSERT INTO public.users VALUES (103, 'user_1783706843148', 2, 397);
INSERT INTO public.users VALUES (92, 'user_1783706570184', 5, 518);
INSERT INTO public.users VALUES (99, 'user_1783706689406', 2, 207);
INSERT INTO public.users VALUES (108, 'user_1783706932077', 5, 354);
INSERT INTO public.users VALUES (102, 'user_1783706843149', 5, 247);
INSERT INTO public.users VALUES (98, 'user_1783706689407', 5, 387);
INSERT INTO public.users VALUES (107, 'user_1783706931051', 2, 77);
INSERT INTO public.users VALUES (105, 'user_1783706852499', 2, 303);
INSERT INTO public.users VALUES (113, 'user_1783706970969', 2, 162);
INSERT INTO public.users VALUES (106, 'user_1783706931052', 5, 281);
INSERT INTO public.users VALUES (109, 'user_1783706932076', 2, 28);
INSERT INTO public.users VALUES (111, 'user_1783706958188', 2, 269);
INSERT INTO public.users VALUES (117, 'user_1783707126825', 2, 665);
INSERT INTO public.users VALUES (115, 'user_1783707090403', 2, 530);
INSERT INTO public.users VALUES (110, 'user_1783706958189', 5, 332);
INSERT INTO public.users VALUES (112, 'user_1783706970970', 5, 51);
INSERT INTO public.users VALUES (116, 'user_1783707126826', 5, 67);
INSERT INTO public.users VALUES (119, 'user_1783707224747', 2, 137);
INSERT INTO public.users VALUES (118, 'user_1783707224748', 5, 699);
INSERT INTO public.users VALUES (120, 'user_1783707226091', 5, 116);
INSERT INTO public.users VALUES (121, 'user_1783707226090', 2, 419);
INSERT INTO public.users VALUES (122, 'user_1783707240143', 5, 22);
INSERT INTO public.users VALUES (123, 'user_1783707240142', 2, 202);
INSERT INTO public.users VALUES (124, 'user_1783707404294', 5, 455);
INSERT INTO public.users VALUES (125, 'user_1783707404293', 2, 29);
INSERT INTO public.users VALUES (126, 'user_1783707417399', 5, 463);
INSERT INTO public.users VALUES (127, 'user_1783707417398', 2, 322);
INSERT INTO public.users VALUES (128, 'user_1783707427614', 5, 39);
INSERT INTO public.users VALUES (129, 'user_1783707427613', 2, 558);
INSERT INTO public.users VALUES (130, 'user_1783707583264', 5, 7);
INSERT INTO public.users VALUES (131, 'user_1783707583263', 2, 341);
INSERT INTO public.users VALUES (133, 'user_1783707594960', 2, 22);
INSERT INTO public.users VALUES (135, 'user_1783707595677', 2, 679);
INSERT INTO public.users VALUES (132, 'user_1783707594961', 5, 344);
INSERT INTO public.users VALUES (134, 'user_1783707595679', 5, 25);
INSERT INTO public.users VALUES (137, 'user_1783707743954', 2, 226);
INSERT INTO public.users VALUES (136, 'user_1783707743955', 5, 492);
INSERT INTO public.users VALUES (139, 'user_1783707754958', 2, 255);
INSERT INTO public.users VALUES (138, 'user_1783707754959', 5, 536);
INSERT INTO public.users VALUES (141, 'user_1783707760317', 2, 112);
INSERT INTO public.users VALUES (140, 'user_1783707760318', 5, 181);
INSERT INTO public.users VALUES (143, 'user_1783707769002', 2, 227);
INSERT INTO public.users VALUES (142, 'user_1783707769003', 5, 89);
INSERT INTO public.users VALUES (145, 'user_1783707773675', 2, 85);
INSERT INTO public.users VALUES (144, 'user_1783707773676', 5, 196);
INSERT INTO public.users VALUES (147, 'user_1783707991646', 2, 143);
INSERT INTO public.users VALUES (146, 'user_1783707991647', 5, 93);
INSERT INTO public.users VALUES (149, 'user_1783707996700', 2, 637);
INSERT INTO public.users VALUES (148, 'user_1783707996701', 5, 27);
INSERT INTO public.users VALUES (151, 'user_1783708174573', 2, 648);
INSERT INTO public.users VALUES (150, 'user_1783708174574', 5, 73);
INSERT INTO public.users VALUES (153, 'user_1783708177748', 2, 314);
INSERT INTO public.users VALUES (152, 'user_1783708177749', 5, 300);
INSERT INTO public.users VALUES (155, 'user_1783708182569', 2, 534);
INSERT INTO public.users VALUES (154, 'user_1783708182570', 5, 302);
INSERT INTO public.users VALUES (157, 'user_1783708189400', 2, 47);
INSERT INTO public.users VALUES (156, 'user_1783708189401', 5, 42);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 157, true);


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
-- PostgreSQL database dump complete
--

