--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Data for Name: cad_protocolo_lab_apoio; Type: TABLE DATA; Schema: nepher; Owner: postgres
--

INSERT INTO nepher.cad_protocolo_lab_apoio (id, nome) VALUES (1, 'Hermes Pardini');
INSERT INTO nepher.cad_protocolo_lab_apoio (id, nome) VALUES (2, 'Álvaro');
INSERT INTO nepher.cad_protocolo_lab_apoio (id, nome) VALUES (3, 'DB Diagnósticos');


--
-- Name: cad_protocolo_lab_apoio_id_seq; Type: SEQUENCE SET; Schema: nepher; Owner: postgres
--

SELECT pg_catalog.setval('nepher.cad_protocolo_lab_apoio_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

