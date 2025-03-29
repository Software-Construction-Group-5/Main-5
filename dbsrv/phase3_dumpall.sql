--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:PLsanWE0lrP16vGmd940dw==$6DB/nmldM3kYSMdOW4Y3bTNKTZR0E8V2dTGdvoUv7kQ=:gf9DaROIscQBEsReS+Ynt0QoKBEr/KPf/nHlzC/5A4k=';
CREATE ROLE student;
ALTER ROLE student WITH SUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:OFtpqITFabzitjMXVDdK8w==$FMxJvwPwTvcuYKihEXlxEgcVNDoTlMpFJyd4Bqp23GE=:d3KwnYJTczskYy5Goj1+TtjmqyRc3AGxyqw4hVcRlPg=';
CREATE ROLE webuser1;
ALTER ROLE webuser1 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:A3p8Un8Q4X3aXMPkJvqoLQ==$WZHZh4A8Ms8z8RLDp6hCYOunoAlvYJiUGt9TqpyRcAM=:eXRJ0X7ycTX/ZSZCFMJL4/DBAJ1hkhWbmSCgb9izILA=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)

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
-- PostgreSQL database dump complete
--

--
-- Database "3010-project" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)

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
-- Name: 3010-project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "3010-project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE "3010-project" OWNER TO postgres;

\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='3010-project'"

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
-- Name: ecu_cs_dept_faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ecu_cs_dept_faculty (
    id integer NOT NULL,
    honorific character varying(10),
    first_name character varying(50),
    middle_initial character varying(1),
    last_name character varying(50),
    email character varying(255),
    phone text,
    office character varying,
    research_interests character varying,
    rank character varying,
    remarks character varying,
    currently_employed character varying(5)
);


ALTER TABLE public.ecu_cs_dept_faculty OWNER TO postgres;

--
-- Name: ecu_cs_dept_faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ecu_cs_dept_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ecu_cs_dept_faculty_id_seq OWNER TO postgres;

--
-- Name: ecu_cs_dept_faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ecu_cs_dept_faculty_id_seq OWNED BY public.ecu_cs_dept_faculty.id;


--
-- Name: ecu_cs_dept_faculty id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ecu_cs_dept_faculty ALTER COLUMN id SET DEFAULT nextval('public.ecu_cs_dept_faculty_id_seq'::regclass);


--
-- Data for Name: ecu_cs_dept_faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ecu_cs_dept_faculty (id, honorific, first_name, middle_initial, last_name, email, phone, office, research_interests, rank, remarks, currently_employed) FROM stdin;
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
\.


--
-- Name: ecu_cs_dept_faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ecu_cs_dept_faculty_id_seq', 1, false);


--
-- Name: DATABASE "3010-project"; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE "3010-project" TO student;
GRANT ALL ON DATABASE "3010-project" TO webuser1;


--
-- Name: TABLE ecu_cs_dept_faculty; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ecu_cs_dept_faculty TO webuser1;


--
-- PostgreSQL database dump complete
--

--
-- Database "cs_dashboard" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)

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
-- Name: cs_dashboard; Type: DATABASE; Schema: -; Owner: student
--

CREATE DATABASE cs_dashboard WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE cs_dashboard OWNER TO student;

\connect cs_dashboard

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
-- Name: cs_course_shcedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cs_course_shcedule (
    year character varying(4),
    semester character varying(50),
    prefix character varying(10),
    number character varying(10),
    section character varying(10),
    crn character varying(50),
    enrollment character varying(10),
    instructor character varying(10),
    days character varying(10),
    begin_time character varying(10),
    end_time character varying(10),
    remarks text
);


ALTER TABLE public.cs_course_shcedule OWNER TO postgres;

--
-- Name: cs_courses; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.cs_courses (
    course_id integer NOT NULL,
    course_code text,
    course_name text,
    instructor text,
    credits integer
);


ALTER TABLE public.cs_courses OWNER TO student;

--
-- Name: cs_courses_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cs_courses_2 (
    prefix character varying(50),
    number character varying(10),
    title character varying(255),
    gu character varying(50),
    ch integer,
    frequency integer,
    active character varying(10),
    description text,
    remarks text
);


ALTER TABLE public.cs_courses_2 OWNER TO postgres;

--
-- Name: cs_courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.cs_courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cs_courses_course_id_seq OWNER TO student;

--
-- Name: cs_courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.cs_courses_course_id_seq OWNED BY public.cs_courses.course_id;


--
-- Name: cs_fte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cs_fte (
    faculty character varying(255),
    year character varying(4),
    semester character varying(50),
    fte character varying(20)
);


ALTER TABLE public.cs_fte OWNER TO postgres;

--
-- Name: faculty; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.faculty (
    id integer NOT NULL,
    name text NOT NULL,
    title text,
    email text,
    department text,
    phone character varying(20)
);


ALTER TABLE public.faculty OWNER TO student;

--
-- Name: faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.faculty_id_seq OWNER TO student;

--
-- Name: faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.faculty_id_seq OWNED BY public.faculty.id;


--
-- Name: faculty_temp; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.faculty_temp (
    id text,
    name text,
    title text,
    email text,
    department text,
    phone text,
    extra1 text,
    extra2 text
);


ALTER TABLE public.faculty_temp OWNER TO student;

--
-- Name: cs_courses course_id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.cs_courses ALTER COLUMN course_id SET DEFAULT nextval('public.cs_courses_course_id_seq'::regclass);


--
-- Name: faculty id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.faculty ALTER COLUMN id SET DEFAULT nextval('public.faculty_id_seq'::regclass);


--
-- Data for Name: cs_course_shcedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cs_course_shcedule (year, semester, prefix, number, section, crn, enrollment, instructor, days, begin_time, end_time, remarks) FROM stdin;
2021	Spring	CSCI	1010	001	31764	49	14	 MWF	0900	0950	\N
2021	Spring	CSCI	1010	002	31769	51	14	 MWF	1100	1150	\N
2021	Spring	CSCI	1011	001	31773	25	14	 M	1200	1340	\N
2021	Spring	CSCI	1011	002	31883	24	14	T	1200	1340	\N
2021	Spring	CSCI	1011	003	31885	26	14	W	1200	1340	\N
2021	Spring	CSCI	1011	004	31887	25	14	R	1200	1340	\N
2021	Spring	CSCI	2400	001	31891	54	1	\N	\N	\N	\N
2021	Spring	CSCI	2400	002	32794	45	1	\N	\N	\N	\N
2021	Spring	CSCI	2405	001	31892	50	1	\N	\N	\N	\N
2021	Spring	CSCI	2530	001	31895	27	9	TR	0930	1045	\N
2021	Spring	CSCI	2530	002	32985	50	9	TR	1230	1345	\N
2021	Spring	CSCI	2540	001	31897	15	4	TR	0930	1045	\N
2021	Spring	CSCI	2540	002	32866	35	4	TR	1230	1345	\N
2021	Spring	CSCI	3000	001	31899	40	12	TR	1100	1215	\N
2021	Spring	CSCI	3000	002	32997	37	12	TR	\N	\N	\N
2021	Spring	CSCI	3010	001	31901	24	9	MW	1400	1515	\N
2021	Spring	CSCI	3010	002	33003	49	9	MW	1700	1815	\N
2021	Spring	CSCI	3650	001	31907	7	5	MW	1400	1515	\N
2021	Spring	CSCI	3650	601	32880	80	5	MW	1400	1515	\N
2021	Spring	CSCI	4110	601	36431	5	7	\N	\N	\N	\N
2021	Spring	CSCI	4130	001	31914	39	3	MW	1530	1645	\N
2021	Spring	CSCI	4140	001	31918	36	7	TR	1230	1345	\N
2021	Spring	CSCI	4170	001	31921	40	8	TR	1400	1515	\N
2021	Spring	CSCI	4190	001	31923	1	5	MW	1700	1815	\N
2021	Spring	CSCI	4190	601	33853	14	5	MW	1700	1815	\N
2021	Spring	CSCI	4230	001	31924	28	11	MW	1100	1150	WI
2021	Spring	CSCI	4230	002	31926	26	12	TR	\N	\N	WI
2021	Spring	CSCI	4231	001	31927	28	11	T	1700	1840	\N
2021	Spring	CSCI	4231	002	31928	26	12	R	1700	1840	\N
2021	Spring	CSCI	4550	001	31929	35	9	TR	1530	1645	\N
2021	Spring	CSCI	4710	001	31930	42	16	MW	1400	1515	\N
2021	Spring	CSCI	4900	601	32990	2	14	T	1800	1850	\N
2021	Spring	CSCI	6010	001	31932	4	7	TR	0930	1045	\N
2021	Spring	CSCI	6010	601	31933	14	7	\N	\N	\N	\N
2021	Spring	CSCI	6030	001	31934	4	3	MW	1530	1645	\N
2021	Spring	CSCI	6030	601	31935	1	3	\N	\N	\N	\N
2021	Spring	CSCI	6040	601	31937	4	7	\N	\N	\N	\N
2021	Spring	CSCI	6100	601	31939	4	5	\N	\N	\N	\N
2021	Spring	CSCI	6600	001	31942	2	4	TR	1530	1645	\N
2021	Spring	CSCI	6600	601	31943	15	4	\N	\N	\N	\N
2021	Spring	CSCI	6710	001	31940	7	16	MW	1400	1515	\N
2021	Spring	CSCI	6710	601	31941	10	16	\N	\N	\N	\N
2021	Spring	CSCI	6995	601	36491	1	16	\N	\N	\N	\N
2021	Spring	CSCI	7000	001	36103	1	3	\N	\N	\N	\N
2021	Spring	CSCI	7000	002	36212	1	12	\N	\N	\N	\N
2021	Spring	CSCI	7000	003	36259	1	15	\N	\N	\N	\N
2021	Spring	CSCI	7000	004	36351	1	7	\N	\N	\N	\N
2021	Spring	CSCI	7000	005	36445	1	6	\N	\N	\N	\N
2021	Spring	DASC	6005	001	31950	1	6	MW	1700	1815	\N
2021	Spring	DASC	6005	601	31953	12	6	\N	\N	\N	\N
2021	Spring	DASC	6010	601	31958	17	7	\N	\N	\N	\N
2021	Spring	DASC	6030	001	32010	1	3	MW	1530	1645	\N
2021	Spring	DASC	6030	601	32011	4	3	\N	\N	\N	\N
2021	Spring	DASC	6040	601	32021	2	7	\N	\N	\N	\N
2021	Spring	SENG	1010	001	32026	9	1	\N	\N	\N	\N
2021	Spring	SENG	1020	001	32030	7	11	MWF	1000	1100	\N
2021	Spring	SENG	1030	001	32034	8	16	MW	1600	1715	\N
2021	Spring	SENG	2000	001	32040	7	11	MWF	1500	1550	\N
2021	Spring	SENG	2010	601	33987	6	15	MW	1230	1345	\N
2021	Spring	SENG	3000	001	32059	5	15	MW	1000	1115	\N
2021	Spring	SENG	6250	001	32981	2	8	TR	1100	1215	\N
2021	Spring	SENG	6250	601	32983	4	8	\N	\N	\N	\N
2021	Spring	SENG	6255	601	32087	6	15	\N	\N	\N	\N
2021	Spring	SENG	6285	001	32095	5	8	TR	1400	1515	\N
2021	Spring	SENG	6285	601	32097	17	8	\N	\N	\N	\N
2021	Spring	SENG	6290	601	36039	1	8	\N	\N	\N	\N
2021	Spring	SENG	7000	001	36062	2	15	\N	\N	\N	\N
2021	Spring	SENG	7000	602	36189	1	15	\N	\N	\N	\N
2021	Spring	SENG	7000	603	36584	1	15	\N	\N	\N	\N
2020	Fall	CSCI	1000	001	84173	19	14	MWF	1000	1130	\N
2020	Fall	CSCI	1003	001	84103	19	14	F	1200	1340	\N
2020	Fall	CSCI	2410	001	84146	48	9	\N	\N	\N	\N
2020	Fall	CSCI	2410	002	84152	31	9	\N	\N	\N	\N
2020	Fall	CSCI	3030	001	84138	16	8	TR	1230	1445	\N
2020	Fall	CSCI	3584	001	84093	42	5	MWF	1000	1130	\N
2020	Fall	CSCI	3584	002	84094	39	5	MWF	1000	1130	\N
2020	Fall	CSCI	3675	001	84136	44	7	\N	1530	1715	\N
2020	Fall	CSCI	3675	002	84137	28	7	\N	1530	1715	\N
2020	Fall	CSCI	3700	001	84091	22	4	TR	0930	1145	\N
2020	Fall	CSCI	3700	002	84092	45	4	TR	1230	1445	\N
2020	Fall	CSCI	4602	001	84066	48	1	MWF	1300	1430	\N
2020	Fall	CSCI	4602	002	84071	22	1	MWF	1500	1630	\N
2020	Fall	SENG	1000	001	84161	15	11	MWF	1200	1330	\N
2020	Fall	SENG	2010	001	84189	6	15	TR	0930	1145	\N
2020	Fall	CSCI	4120	001	84224	36	16	MWF	1530	1645	\N
2020	Fall	CSCI	4150	001	84110	15	6	TR	1100	1215	\N
2020	Fall	CSCI	4150	601	87014	6	6	\N	\N	\N	\N
2020	Fall	CSCI	5501	0	86882	3	7	\N	\N	\N	\N
2020	Fall	CSCI	6020	001	84230	8	16	MWF	1530	1645	\N
2020	Fall	CSCI	6020	601	84234	15	16	\N	\N	\N	\N
2020	Fall	CSCI	6050	001	84114	8	6	TR	1100	1215	\N
2020	Fall	CSCI	6050	601	84117	9	6	\N	\N	\N	\N
2020	Fall	CSCI	6410	001	84083	1	5	MWF	1700	1815	\N
2020	Fall	CSCI	6410	601	84084	11	5	\N	\N	\N	\N
2020	Fall	CSCI	6995	001	86372	1	4	\N	\N	\N	\N
2020	Fall	CSCI	6995	601	87020	1	8	\N	\N	\N	\N
2020	Fall	CSCI	7000	001	86182	1	6	\N	\N	\N	\N
2020	Fall	CSCI	7000	002	86635	1	15	\N	\N	\N	\N
2020	Fall	CSCI	7000	003	86253	1	7	\N	\N	\N	\N
2020	Fall	CSCI	7000	004	86260	1	5	\N	\N	\N	\N
2020	Fall	CSCI	7000	005	86369	1	12	\N	\N	\N	\N
2020	Fall	CSCI	7000	601	86669	1	6	\N	\N	\N	\N
2020	Fall	DASC	6000	001	84121	1	6	MW	1700	1815	\N
2020	Fall	DASC	6000	601	84125	14	6	\N	\N	\N	\N
2020	Fall	DASC	6020	001	84236	4	16	MW	1530	1645	\N
2020	Fall	DASC	6020	601	84239	8	16	\N	\N	\N	\N
2020	Fall	DASC	6050	001	84131	3	6	TR	1100	1215	\N
2020	Fall	DASC	6050	601	84134	3	6	\N	\N	\N	\N
2020	Fall	SENG	5000	601	85813	8	12	\N	\N	\N	\N
2020	Fall	SENG	5005	601	85138	8	6	\N	\N	\N	\N
2020	Fall	SENG	6230	001	84195	6	15	TR	1400	1515	\N
2020	Fall	SENG	6230	601	84199	12	15	\N	\N	\N	\N
2020	Fall	SENG	6235	001	84203	2	15	TR	1530	1645	\N
2020	Fall	SENG	6235	601	84207	4	15	\N	\N	\N	\N
2020	Fall	SENG	6245	001	84088	5	3	TR	0930	1045	\N
2020	Fall	SENG	6245	601	84089	5	3	\N	\N	\N	\N
2020	Fall	SENG	6265	001	85135	6	3	TR	1230	1345	\N
2020	Fall	SENG	6265	601	85136	14	3	\N	\N	\N	\N
2020	Fall	SENG	7000	002	86184	1	8	\N	\N	\N	\N
2020	Fall	SENG	7000	003	86254	1	7	\N	\N	\N	\N
2020	Fall	SENG	7000	004	86589	1	15	\N	\N	\N	\N
2020	Fall	SENG	7000	006	86878	1	15	\N	\N	\N	\N
2020	Fall	CSCI	1010	001	84181	46	14	MWF	1300	1350	\N
2020	Fall	CSCI	1010	002	84187	49	14	MWF	1500	1550	\N
2020	Fall	CSCI	1011	001	84105	19	14	M	0900	1040	\N
2020	Fall	CSCI	1011	002	84106	22	14	M	1100	1240	\N
2020	Fall	CSCI	1011	003	84107	20	14	W	0900	1040	\N
2020	Fall	CSCI	1011	004	84108	20	14	W	1100	1240	\N
2020	Fall	CSCI	1011	005	86696	14	14	T	0900	1040	\N
2020	Fall	CSCI	2400	001	84054	36	1	MWF	0900	0950	\N
2020	Fall	CSCI	2400	002	84062	39	1	MWF	1100	1150	\N
2020	Fall	CSCI	2405	001	84157	38	12	TR	1100	1215	\N
2020	Fall	CSCI	2405	002	84158	17	12	TR	1400	1515	\N
2020	Fall	CSCI	2530	001	84141	63	9	MW	\N	\N	\N
2020	Fall	CSCI	2540	001	84090	43	4	TR	1530	1745	\N
2020	Fall	CSCI	3030	002	84139	31	8	TR	1400	1615	\N
2020	Fall	CSCI	3550	001	84142	60	9	MW	\N	\N	\N
2020	Fall	CSCI	4180	001	85800	22	14	TR	1630	1745	\N
2020	Fall	SENG	1010	001	84077	10	1	MWF	0900	0950	\N
2020	Fall	SENG	1020	001	84155	7	16	MWF	1100	1150	\N
2020	Fall	SENG	1030	001	84164	9	12	TR	1100	1315	\N
2020	Fall	SENG	2000	001	84156	5	11	MWF	1400	1450	\N
2020	Spring	CSCI	1010	001	35431	40	14	MWF	1000	1050	\N
2020	Spring	CSCI	1011	001	35558	20	14	M	1700	1840	\N
2020	Spring	CSCI	1011	002	35560	21	14	T	1700	1840	\N
2020	Spring	CSCI	1011	003	35561	18	14	W	1700	1840	\N
2020	Spring	CSCI	1011	004	35563	16	14	R	1700	1840	\N
2020	Spring	CSCI	2400	001	35531	30	5	TR	1100	1215	\N
2020	Spring	CSCI	2400	002	35541	36	5	TR	1400	1515	\N
2020	Spring	CSCI	2405	001	35506	32	1	MWF	1100	1150	\N
2020	Spring	CSCI	2405	002	35429	16	17	TR	1400	1515	\N
2020	Spring	CSCI	2530	001	35507	34	1	MWRF	1300	1350	\N
2020	Spring	CSCI	2530	002	35509	19	1	MWRF	1400	1450	\N
2020	Spring	CSCI	2540	001	35511	12	4	TR	0930	1045	\N
2020	Spring	CSCI	2540	002	35513	30	4	TR	1230	1345	\N
2020	Spring	CSCI	3000	001	35442	11	12	MWF	0900	0950	\N
2020	Spring	CSCI	3000	002	35441	26	12	MWF	1100	1150	\N
2020	Spring	CSCI	3000	003	35438	37	12	MW	1400	1515	\N
2020	Spring	CSCI	3010	001	35449	42	9	MWF	1000	1050	\N
2020	Spring	CSCI	3010	002	35446	47	9	MWF	1300	1350	\N
2020	Spring	CSCI	3030	003	35510	18	8	TR	1530	1645	\N
2020	Spring	CSCI	3650	001	35436	45	13	MWF	0900	0950	\N
2020	Spring	CSCI	3650	002	35434	43	13	MWF	1100	1150	\N
2020	Spring	CSCI	4130	001	35565	44	3	TR	1100	1215	\N
2020	Spring	CSCI	4140	001	35487	38	7	MWF	1000	1050	\N
2020	Spring	CSCI	4230	001	35483	30	8	TR	1230	1345	\N
2020	Spring	CSCI	4230	002	35471	31	8	TR	1400	1515	\N
2020	Spring	CSCI	4231	001	35476	30	8	M	1700	1840	\N
2020	Spring	CSCI	4231	002	35465	31	8	W	1700	1840	\N
2020	Spring	CSCI	4550	001	35443	29	9	MWF	1600	1650	\N
2020	Spring	CSCI	4710	001	35606	50	16	TR	0930	1045	\N
2020	Spring	CSCI	4905	001	35827	9	5	TR	1700	1815	\N
2020	Spring	CSCI	5501	001	35589	6	6	M	1700	1750	\N
2020	Spring	CSCI	6030	001	35590	3	15	TR	1530	1645	\N
2020	Spring	CSCI	6030	601	35593	6	15	TR	1530	1645	\N
2020	Spring	CSCI	6040	001	35553	13	6	MW	1400	1515	\N
2020	Spring	CSCI	6040	601	35559	11	6	MW	1400	1515	\N
2020	Spring	CSCI	6300	001	35828	1	5	TR	1700	1815	\N
2020	Spring	CSCI	6710	001	35609	6	16	TR	1400	1515	\N
2020	Spring	CSCI	6710	601	35610	6	16	TR	1400	1515	\N
2020	Spring	CSCI	6840	001	35516	7	4	TR	1530	1645	\N
2020	Spring	CSCI	6840	601	35521	12	4	TR	1530	1645	\N
2020	Spring	CSCI	7000	002	34900	1	6	\N	\N	\N	\N
2020	Spring	CSCI	7000	005	35075	1	15	\N	\N	\N	\N
2020	Spring	CSCI	7000	006	35087	1	16	\N	\N	\N	\N
2020	Spring	CSCI	7000	008	35093	2	3	\N	\N	\N	\N
2020	Spring	CSCI	7000	009	36243	1	5	\N	\N	\N	\N
2020	Spring	CSCI	7000	601	34880	1	4	\N	\N	\N	\N
2020	Spring	CSCI	7000	605	35082	1	15	\N	\N	\N	\N
2020	Spring	CSCI	7000	610	36726	1	6	\N	\N	\N	\N
2020	Spring	DASC	6005	001	35505	2	6	MW	1530	1645	\N
2020	Spring	DASC	6005	601	35504	2	6	MW	1530	1645	\N
2020	Spring	DASC	6030	001	35594	2	15	TR	1530	1645	\N
2020	Spring	DASC	6030	601	35595	4	15	TR	1530	1645	\N
2020	Spring	DASC	6040	001	35498	3	6	MW	1400	1515	\N
2020	Spring	DASC	6040	601	35492	2	6	MW	1400	1515	\N
2020	Spring	SENG	1000	001	36626	8	18	TR	1530	1645	\N
2020	Spring	SENG	1010	001	35678	11	19	TR	0930	1045	\N
2020	Spring	SENG	1020	001	35681	4	14	MW	1530	1645	\N
2020	Spring	SENG	6240	001	35658	2	15	TR	0930	1045	\N
2020	Spring	SENG	6240	601	35661	13	15	TR	0930	1045	\N
2020	Spring	SENG	6285	001	35544	3	15	TR	1230	1345	\N
2020	Spring	SENG	6285	601	35546	16	15	TR	1230	1345	\N
2020	Spring	SENG	6290	601	35428	2	8	\N	\N	\N	\N
2020	Spring	SENG	6290	605	35592	1	7	\N	\N	\N	\N
2020	Spring	SENG	7000	001	35460	1	8	\N	\N	\N	\N
2020	Spring	SENG	7000	002	35554	1	15	\N	\N	\N	\N
2020	Spring	SENG	7000	006	35641	1	7	\N	\N	\N	\N
2020	Spring	SENG	7000	007	35648	1	16	\N	\N	\N	\N
2020	Spring	SENG	7000	008	35652	2	6	\N	\N	\N	\N
2020	Spring	SENG	7000	602	35557	1	15	\N	\N	\N	\N
2020	Spring	SENG	7000	609	36725	1	15	\N	\N	\N	\N
\.


--
-- Data for Name: cs_courses; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.cs_courses (course_id, course_code, course_name, instructor, credits) FROM stdin;
\.


--
-- Data for Name: cs_courses_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cs_courses_2 (prefix, number, title, gu, ch, frequency, active, description, remarks) FROM stdin;
CSCI	1000	Explorations in Computing	U	3	1	Yes	Central principles of problem-solving and programming on a computer in a high-level programming language. Testing programs by hand and on a computer. Common classes of algorithms and how to write them. 2 lecture and 2 lab hours per week	\N
CSCI	1003	Explorations in Computing Lab	U	0	1	Yes	2 lecture and 2 lab hours per week. C: CSCI 1000. Implementing and testing basic algorithms using a high-level programming language.	\N
CSCI	1010	Algorithmic Problem Solving	U	4	1	Yes	3 lecture and 2 lab hours per week. P: Appropriate score on math section of the SAT/ACT or MATH 1065 or CSCI 1000; C: CSCI 1011. Design of algorithms and their implementation as programs in a high-level programming language such as Java.	\N
CSCI	1011	Algorithmic Problem Solving Lab	U	0	1	 Yes	3 lecture and 2 lab hours per week. C: CSCI 1010. Design, implement, and test fundamental algorithms using a high-level programming language such as Java. 	\N
CSCI	2400	Discrete Structures I	U	3	1	Yes	P: MATH 1065. Application of basic concepts in discrete mathematics to solving problems in the computing discipline	\N
CSCI	2405	Discrete Structures II	U	3	1	 Yes	P: CSCI 2400. Continuation of CSCI 2400. Application of advanced concepts in discrete mathematics to solve computational problems	\N
CSCI	2410	Digital Logic Design	 U	3	1	Yes	P: ENGR 1014 or ENGR 1016 and ENGR 2050. Introduction to digital logic and digital electronics, including Boolean algebra, number systems, logic gates, data structures, and both combinational and sequential logical design and optimization.	\N
CSCI	2530	Algorithms and Data Structures	U	4	1	Yes	P: CSCI 1010; P/C: CSCI 2400. Computational problem solving using fundamental algorithms and physical data structures. Design and analysis of algorithms that operate on these data structures.	\N
CSCI	2540	Data Abstraction and Object-Oriented Data Structures	U	3	1	Yes	P: CSCI 2530; P/C: CSCI 2405. Data abstractions including stacks, queues, graphs, tables, sets and domain-specific data abstractions. Implementations of data abstractions in object-oriented style and principles of class design.	\N
CSCI	3000	Operating Systems	U	3	1	Yes	P: CSCI 2405, CSCI 2530. Operating system design and implementation. Process and memory management, and file systems. Operating system support for distributed systems.	\N
CSCI	3010	Computer Networks	U	3	1	Yes	P: CSCI 2530. Design and analysis of computer communication networks. Topics include application layer protocols, Internet protocols, network interfaces, local and wide area networks, wireless networks, bridging and routing.	\N
CSCI	3030	Software Engineering I	U	3	1	Yes	P: CSCI 2540. Software engineering principles, development methodologies and tools for developing large and complex software systems.	\N
CSCI	3200	Data Structures and Their Applications	U	3	1	Yes	Common data structures and how to use them in advanced problem solving.	\N
CSCI	3550	Computer Game Development I	U	3	1	Yes	P: CSCI 2530 or  CSCI 3200. A broad view of computer game development from an applied computer science point of view. Content creation and the concepts behind the development of story, character, environment, level design, user interface, and sound.	\N
CSCI	3584	Computational Linear Algebra	U	3	1	Yes	May not count toward MATH major or minor. P: Calculus course. Introduces vectors, matrices, and determinants. Special emphasis on application of linear algebra to solution of practical problems.	\N
CSCI	3650	Design and Analysis of Algorithms	U	3	1	Yes	P: CSCI 2530. Formal techniques to support the design and analysis of algorithms. Asymptotic complexity bounds, techniques of analysis, and algorithmic strategies.	\N
CSCI	3675	Principles of Programming Languages	U	3	1	Yes	P: CSCI 2540. Applied course in programming language constructs. Emphasis on run-time behavior of programs. Provides appropriate background for advanced-level courses involving formal and theoretical aspects of programming languages and compilation process.	\N
CSCI	3700	Database Management Systems	U	3	1	Yes	P: CSCI 2540. Relational database systems theory and database development. Topics include relational data model and integrity constraints specification, data modeling and relational schema design, normalization of relational schema, relational algebra, SQL, and database programming.	\N
CSCI	3800	Computer Graphics	U	3	1	Yes	P: CSCI 2540; MATH 3256 or MATH 3584. Computer graphics systems, hardware, interactive methods; line and curve drawing; two- and three-dimensional transformations; and perspective transformation.	\N
CSCI	4110	High Performance Computing	U	3	1	Yes	P: CSCI 3000, CSCI 3675. Software design and development targeting high performance computing architectures. Multi-core and many-core systems. MPI, OpenMP, MapReduce, CUDA, and OpenCL computing models.	\N
CSCI	4120	Machine Learning	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Machine learning and statistical pattern recognition algorithms and their application to data analytics, bioinformatics, speech recognition, natural language processing, robotic control, autonomous navigation, and text and web data processing.	\N
CSCI	4130	Information Retrieval	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Theory and algorithms for modeling and retrieving text. Text representation, IR models, query operations, retrieval evaluation, information extraction, text classification and clustering, enterprise and Web search, and recommender systems.	\N
CSCI	4140	Natural Language Processing	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Fundamental algorithms and computational models for core tasks in natural language processing. Word and sentence tokenization, parsing, information and meaning extraction, spelling correction, text summarization, question answering, and sentiment analysis	\N
CSCI	4150	Digital Image Processing	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Mathematical techniques and algorithms for image sampling, quantization, intensity transformations, spatial filtering, Fourier transforms, frequency domain filtering, restoration and reconstruction, morphological image processing, and segmentation.	\N
CSCI	4160	Cybersecurity: Theory and Practice	U	3	1	Yes	P: CSCI 3000, CSCI 3010. Computing systems security principles and models. Vulnerability assessment and prevention measures. Authentication and access control in distributed systems. Operating system, network, and database security	\N
CSCI	4170	Cloud Computing	U	3	1	Yes	P: CSCI 3000, CSCI 3010. Cloud computing as a cost effective platform for developing and deploying highly available and scalable applications. Theory, application frameworks, and tools of cloud computing	\N
CSCI	4180	Big Data Analytics	U	3	1	Yes	P: CSCI 3700. Hands-on introduction to very big data and the practical issues surrounding how the data is stored, processed, analyzed, and visualized. Work with cloud-based high performance computing systems, large data collections, and high velocity data streams.	\N
CSCI	4190	Cryptography and Information Security	U	3	1	Yes	P: CSCI 3650;  RP: CSCI 3584. Study of private key and public key cryptographic techniques that enable secret communication, message authentication and user identification.	\N
CSCI	4230	Software Engineering II	U	4	1	Yes	4 practicum and 2 lab hours per week. P: CSCI 3030, CSCI 3700; C: CSCI 4231. Application of technical and professional skills in solving a real-world problem in a team environment. Professional code of conduct, societal issues, copyrights and patents, intellectual capital, entrepreneurship, and transition from student to an industry professional in the context of software engineering.	\N
CSCI	4231	Software Engineering II Lab	U	0	1	Yes	4 practicum and 2 lab hours per week. C: CSCI 4230. Developing fully functional computing applications which solve practical problems.	\N
CSCI	4300	Systems Programming	U	3	1	Yes	P: CSCI 3200. Programming issues related to the functionality and general structure of operating systems, networking, security, and the general architecture of information systems are covered.	\N
CSCI	4520	Computer Architecture	U	3	1	Yes	P: CSCI major; CSCI 2410. Organization of basic elements of computer system, including processor, memory, control unit, and I/O units.	\N
CSCI	4540	Mobile Computing	U	3	1	Yes	P: CSCI 3010. Mobile computing and mobile application development. Mobile computing applications, technologies and wireless communication. Computing in environments with limited resources and low power, fault tolerance, and persistence. Mobile application frameworks and development environments. User interface design and evaluating user experience.	\N
CSCI	4550	Computer Game Development II	U	3	1	Yes	P: CSCI 3550. Animation development, multi-layer technologies, haptic displays, spatial issues in gaming and 3D immersion technology, terrain and special effects	\N
CSCI	4602	Automata Computability and Complexity	U	3	1	Yes	P: CSCI 2405, CSCI 2530. Fundamental concepts in automata theory and formal languages including grammars, finite automata, regular expressions, formal languages, pushdown automata, and Turing machines.	\N
CSCI	4627	Procedural Languages and Compilers	U	3	1	Yes	P: CSCI major; CSCI 2410, CSCI 3675. State of the art techniques for compiling procedural languages	\N
CSCI	4710	Web Applications	U	3	1	Yes	P: CSCI 3700.  Integration of several technologies including markup languages, scripting languages, network protocols, interactive graphics, event-driven programming, and databases in enabling Web applications development.	\N
CSCI	4900	Ethical and Professional Issues in Computer Science	U	3	1	Yes	To be taken by CSCI seniors in final semester.  P: CSCI major and senior standing. Professional, ethical, legal, security, and social issues and responsibilities related to the practice of computer science.	\N
CSCI	4905	Selected Topics in Computer Science	U	3	1	Yes	May be repeated with change of topic for maximum of 6 s.h. P: CSCI major; CSCI 2530 or CSCI 2540. Consideration of new or advanced topics in computer science.	\N
SENG	1000	Software Engineering Foundations and Practice	U	3	1	Yes	P: ACT Math score of 24 or SAT Math score of 560 or MATH 1065. Introduction to modern software engineering and computational problem-solving using object-oriented principles and a high-level programming language	\N
SENG	1010	Discrete Structures for Software Engineers I	U	3	1	Yes	P: ACT Math score of 24 or SAT Math score of 560 or MATH 1065. Fundamentals of discrete mathematics, including logic and elementary proofs, sequences, induction and recursion, sets and relations, and elementary number theory. Application of discrete mathematical concepts to solving software engineering problems	\N
SENG	1020	Data Structures for Software Engineers	U	3	1	Yes	P: SENG 1000. Introduction to data structures and their implementation. Computational problem-solving using data structures.	\N
SENG	1030	Discrete Structures for Software Engineers II	U	3	1	Yes	Continuation of SENG 1010. P: SENG 1010. Principles of discrete mathematics, including combinatorial proofs, discrete probability, recurrence relations and generating functions, graphs and trees, and analysis of algorithm efficiency. Application of discrete mathematical concepts to solving software engineering problems	\N
SENG	2000	Advanced Data Structures and Algorithms	U	3	1	Yes	P: SENG 1020. Design and analysis of algorithms using recursion, dynamic programming, and branch and bound. Solving computational problems using maps, hash tables, skip lists, and graph data structures	\N
SENG	2010	Requirements Specification and Analysis	U	3	1	Yes	P: SENG 1020. Methods and processes for eliciting, evaluating, managing, analyzing, documenting, and specifying software-intensive systems for achieving objectives, functions, qualities, and constraints.	\N
SENG	2020	Linear Algebra for Software Engineers	U	3	1	Yes	P: SENG 1030. Study of vectors, matrices, and determinants. Special emphasis on application of linear algebra to solving software engineering problems.	\N
SENG	3000	Software Architecture and Design	U	3	1	Yes	P: SENG 2010. Software architecture and design including iterative development process, modeling and analysis of software systems, object-oriented design, and design patterns	\N
SENG	3010	Software Construction	U	3	1	Yes	P: SENG 3000. Software construction tools and practice, including software development environments, object-oriented programming, software specification, automated testing, version control, and build management for software systems.	\N
SENG	3020	Software Verification and Validation	U	3	1	Yes	P: SENG 3000. Software quality attainment through software testing and other alternatives to quality assurance, including process improvement, inspection, fault tolerance, and reliability assurance	\N
SENG	3700	Database Design and Development	U	3	1	Yes	P: SENG 2000. Relational database systems theory and database development. Topics include relational data model and integrity constraints specification, data modeling and relational schema design, normalization of relational schema, relational algebra, SQL, and database programming.	\N
SENG	4500	Software Engineering Capstone Project I	U	3	1	Yes	P: SENG 3010, SENG 3700. Application of technical and professional skills in solving a real-world problem in a team environment. Topics include professional code of conduct, intellectual property, patents and copyrights, legal and ethical issues, entrepreneurship, and transition from student to software engineering professional.	\N
SENG	4510	Software Engineering Capstone Project II	U	3	1	Yes	Continuation of SENG 4500 P: SENG 4500. Application of technical and professional skills in solving a real-world problem in a team environment. Professional code of conduct, intellectual property, patents and copyrights, legal and ethical issues, entrepreneurship, and transition from student to software engineering professional.	\N
CSCI	5002	Logic for Mathematics and Computer Science	G	3	1	Yes	P: CSCI 2540 or CSCI 3200 or MATE 3223 or MATH 2427 or MATH 2775 or MATH 3256 or PHIL 3580 or equivalent. Methods of mathematical logic important in mathematics and computer science applications.	\N
CSCI	5220	Program Translation	G	3	1	Yes	P: CSCI 4627 or consent of instructor. Formal language specification for programming languages. Advanced parsing techniques. Code generation and optimization.	\N
CSCI	5501	Independent Study	G	3	1	Yes	Minimum of 3-6 hours per week depending on the nature of the work assigned. P: CSCI 2540 or CSCI 3200 or equivalent or consent of instructor. Advanced computer science students study topics that supplement regular curriculum.	\N
CSCI	5502	Independent Study	G	3	1	Yes	Minimum of 3-6 hours per week depending on the nature of the work assigned. P: CSCI 2540 or CSCI 3200 or equivalent or consent of instructor. Advanced computer science students study topics that supplement regular curriculum.	\N
CSCI	5503	Independent Study	G	3	1	Yes	Minimum of 3-6 hours per week depending on the nature of the work assigned. P: CSCI 2540 or CSCI 3200 or equivalent or consent of instructor. Advanced computer science students study topics that supplement regular curriculum.	\N
CSCI	5800	Artificial Intelligence	G	3	1	Yes	P: CSCI 2540 or CSCI 3200 or consent of instructor. Fundamental problems and techniques of artificial intelligence. Heuristic search. Concepts of expert systems.	\N
CSCI	6010	Big Data Analytics and Management	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Approaches to storing, processing, retrieving, analyzing, and managing massive-scale structured and unstructured data. High-performance computing and architectures and methods for developing and querying databases for Big Data. Column-relational, key-value, column-oriented, RDF, document-oriented, native XML, and graph databases.	\N
CSCI	6020	Machine Learning	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Mathematical, statistical and computational foundations of machine learning. Supervised and unsupervised learning, learning theory, reinforcement learning and control, and deep learning.	\N
CSCI	6030	Information Extraction and Retrieval	G	3	1	Yes	P: Enrolled in the computer science or software engineering programs or consent of instructor. Focuses on extracting, modeling, and retrieving unstructured data, primarily text documents. Text preprocessing, information extraction, term weighting and indexing, information retrieval models, relevance feedback and query expansion, system evaluation, document summarization, link analysis and web search, and activity analytics for relevance optimization and personalization.	\N
CSCI	6040	Computational Analysis of Natural Languages	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Theory and methods of natural language analysis and understanding. Morphological analysis and tagging, grammars and parsing, machine translation and natural language generation, semantic similarity, information extraction and question answering, text analytics and visualization.	\N
CSCI	6045	Cyber-Physical Systems	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Computational and application aspects of cyber-physical systems. Sensor networks, architectures, network protocols, and wireless technologies for designing and developing cyber-physical systems.	\N
CSCI	6050	Digital Image Analysis and Understanding	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Mathematical techniques and algorithms for image sampling, quantization, intensity transformations, and spatial filtering. Frequency domain filtering techniques for image restoration and reconstruction. Principles of color imaging, wavelets, morphological processing, segmentation and scene description.	\N
CSCI	6100	Cryptography and Information Security	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Cryptographic techniques to provide secrecy and authenticity of information communicated over an insecure channel; private-key cryptography, public-key cryptography and deployed cryptography.	\N
CSCI	6120	Computer Systems Architecture	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Sequential architectures, instruction sets, addressing modes, and control structures. Introduces parallel architectures.	\N
CSCI	6130	Networking and Telecommunication	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Theory and case studies of modern networking protocols and telecommunication methods. Local area and long-haul networks	\N
CSCI	6140	Mobile Communications and Wireless Security	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Signals, access protocols, application requirements, and security issues with a focus on digital data transfer.	\N
CSCI	6150	Computer and Network Security	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Computer and network security topics include cryptographic primitives, authentication, and access control. Network security, real-world security protocols, and privacy, legal, social, and ethical issues in software applications.	\N
CSCI	6220	Topics in Language Design	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Semantics and implementation characteristics of languages supporting modern computing paradigms such as functional programming, logic programming, constraint programming, and object-oriented programming.	\N
CSCI	6230	Software Engineering Foundations	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Software project development using software engineering principles and current software development techniques.	\N
CSCI	6300	Cryptographic Protocols	G	3	1	Yes	P: CSCI 6100 or consent of instructor. Design and analysis of cryptographic protocols for various tasks; emphasis on applications beyond providing secrecy and authenticity of messages.	\N
CSCI	6410	Design and Analysis of Algorithms	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Methods of designing efficient algorithms, case studies. Analysis of complexity of algorithm.	\N
CSCI	6420	Computability and Complexity	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Computability, Church’s thesis, formal models of computation. Introduces complexity theory.	\N
CSCI	6510	Distributed Computing	G	3	1	Yes	P: Consent of instructor. Principles and techniques for governing computation that is distributed over several machines connected by a network. Focuses on asynchronous distributed systems with partial failures. Topics include logical time, global state, reliable broadcast, causal broadcast, distributed shared memory, distributed mutual exclusion, stable property detection, and consensus.	\N
CSCI	6600	Database Management Systems	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Database system implementation theory and techniques. Transaction management; query processing and optimization; organization of database systems, advanced indexing, multi-dimensional data, similarity-based retrieval, and performance evaluation.	\N
CSCI	6710	Developing e-Commerce Systems	G	3	1	Yes	P:Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Concepts, technologies, and building blocks from computer science and practical software engineering required for developing web applications. Web application architectures, client and server-side programming, state management, authentication, and authorization.	\N
CSCI	6810	Topics in Artificial Intelligence	G	3	1	Yes	P: CSCI 5800 or consent of instructor. Study of state of the art in selected topic on artificial intelligence.	\N
CSCI	6820	Computer Graphics	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Principles and techniques of image rendering. Use of image rendering software.	\N
CSCI	6840	Data Mining	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Data mining concepts and techniques and state of the art in data mining, including association rule mining, classification, clustering, data mining on complex type of data, and other data mining algorithms and applications.	\N
CSCI	6905	Topics in Computer Science	G	3	1	Yes	May be repeated once with change of topic. P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Current topic in computer science.	\N
CSCI	6995	Research Project	G	3	1	Yes	P: Approval of director of graduate studies. Student selects, investigates, and reports to faculty on challenging research project.	\N
CSCI	7000	Thesis	G	3	1	Yes	May be repeated. May count maximum of 6 s.h.	\N
CSCI	7001	Thesis: Summer Research	G	3	1	Yes	May be repeated. No credit may count toward degree. Students conducting thesis research may only register for this course during the summer.	\N
SENG	5000	Programming and Data Structures Foundations	G	4	1	Yes	P: Enrolled in the master of science in software engineering program or master of science in computer science program or consent of instructor. Designed for students who are admitted to the master of science in software engineering program, but whose BS degrees are in engineering, mathematics, statistics, physics, chemistry, or similar analytic disciplines. Accelerated introduction to programming, data structures, and data abstraction using a high level language.	\N
SENG	5005	Discrete Structures and Algorithmic Foundations	G	4	1	Yes	P: Enrolled in the master of science in software engineering program or master of science in computer science program or consent of instructor. Designed for students who are admitted to the master of science in software engineering program, but whose BS degrees are in engineering, mathematics, statistics, physics, chemistry, or similar analytic disciplines. Accelerated introduction to the essentials of discrete structures, combinatorics, graph theory, automata, and algorithms.	\N
SENG	6230	Software Engineering Foundations	G	3	1	Yes	P: Enrolled in the master of science in software engineering program or consent of instructor. Software project development using software engineering principles and current software development techniques.	\N
SENG	6235	Software Project Management	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Advanced methods and techniques to initiate, plan, and control large and complex software development projects.	\N
SENG	6240	Software Architecture and Design	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Software development issues related to software architecture and design. Examines software development and implementation.	\N
SENG	6245	Software Construction	G	3	1	Yes	P: SENG 6230 or consent of instructor. Application of software specifications, design patterns, object-oriented design and concurrent programming, and testing techniques for designing, constructing, and testing large-scale software systems.	\N
SENG	6247	Software Security Engineering	G	3	1	Yes	P: Consent of instructor. Practical and theoretical knowledge in relation to design of secure software systems.	\N
SENG	6250	Software Systems Modeling and Analysis	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Methods for the construction of software including formal notation language and its application to the analysis and specification of software system requirements.	\N
SENG	6255	Software Requirements Engineering	G	3	1	Yes	P: Consent of instructor. Methods and processes for managing, analyzing and specifying requirements; use-case modeling; systems for requirements analysis and management.	\N
SENG	6260	Software Metrics and Quality Management	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Software quality metrics associated with process and product metrics. Examines development of software using various types of metrics and models employed in the field of software quality engineering.	\N
SENG	6265	Foundations of Software Testing	G	3	1	Yes	P: Consent of instructor. Fundamentals of software testing, test management, testing tools, test planning approaches, and basic static and dynamic testing methods.	\N
SENG	6270	Software Verification and Validation	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Verification and validation strategies and techniques throughout the software life-cycle, including processes that assure the desired software and documentation are developed and maintained.	\N
SENG	6275	Dependable Systems and Software Reliability	G	3	1	Yes	P: Consent of instructor. Analysis, modeling, and development of dependable systems. Foundations of software reliability.	\N
SENG	6280	Process Management and Lifecycle Modeling	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Foundations of software management and support over the complete life cycle including maturity models, change management, and optimization.	\N
SENG	6285	Cloud Computing	G	3	1	Yes	P:Consent of instructor. Techniques for developing applications and services to run on distributed networks using virtualized resources accessed over the Internet.	\N
SENG	6290	Software Engineering Project	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Practical process based and industry-oriented view of software engineering practices. Exposure to research, software development, and implementation of professional level software	\N
SENG	7000	Thesis	G	3	1	Yes	P: SENG 6230 and consent of instructor. May be repeated. May count maximum of 6 s.h.	\N
DASC	6000	Data Science Methods I	G	3	1	Yes	First of a two-course sequence. P: Enrolled in the master of science in data science program or consent of instructor. Essential mathematical, statistical, and computational knowledge needed for data scientists. Review of set theory, permutations and combinations, sums, functions, relations, recurrences, essence of differentiation and integration, elementary graph theory, and essential linear algebra. Other topics include conditional and joint probability, random variables and their distributions, expectation and moments, transformations and conditional expectation, inequalities and limit theorems, Markov Chains and  Markov Chain Monte Carlo, and Poisson processes.	\N
DASC	6005	Data Science Methods II	G	3	1	Yes	Second of a two-course sequence. P: DASC 6000 or consent of instructor. Essential mathematical, statistical, and computational knowledge needed for data scientists. Topics include Bayesian learning and probabilistic graphical models, network representations, inference, and learning.	\N
DASC	6010	Big Data Analytics and Management	G	3	1	Yes	P: Enrolled in the master of science in data science program or consent of instructor. Approaches to storing, processing, retrieving, analyzing, and managing massive-scale structured and unstructured data. High-performance computing and architectures and methods for developing and querying databases for Big Data using NoSQL systems.	\N
DASC	6020	Machine Learning	G	3	1	Yes	Mathematical, statistical, and computational foundations of machine learning and their application to Data Science problems. Regression, clustering, and classification as general-purpose machine learning tools. Neural network algorithms and deep learning.	\N
DASC	6030	Information Extraction and Retrieval	G	3	1	Yes	P: Enrolled in the master of science in data science program or consent of instructor. Extracting, modeling, and retrieving unstructured data, primarily text documents. Algorithms and tools for text preprocessing, information extraction, term weighting and indexing. Information retrieval models, query processing, and system evaluation. Link analysis and web search.	\N
DASC	6040	Computational Analysis of Natural Languages	G	3	1	Yes	P: Enrolled in the master of science in data science or consent of instructor. Theory and methods of natural language analysis and understanding for data science applications. Morphological analysis and tagging, grammars and parsing, machine translation, natural language generation, semantic similarity, question answering, text analytics, and visualization.	\N
DASC	6050	Digital Image Analysis and Understanding	G	3	1	Yes	P: Enrolled in the master of science in data science program or consent of instructor. Mathematical techniques and algorithms for extracting knowledge from images. Algorithms and tools for knowledge extraction include image sampling, quantization, intensity transformations, and spatial filtering. Frequency domain filters for image restoration and reconstruction. Techniques for color imaging, wavelets, morphological processing, segmentation, and scene description.	\N
DASC	6060	Health Informatics	G	3	1	Yes	P: Consent of instructor. Theoretical and practical foundations of health informatics for clinical, managerial, community health, and public health services.	\N
DASC	6070	Decision Support in Health Care	G	3	1	Yes	Theories and applications of decision science in health care	\N
DASC	6090	Data Science Practicum	G	3	1	Yes	P: Enrolled in the master of science in data science program and consent of instructor. Application of technical and professional skills in solving a real-world data science problem in a team environment. Application of project management principles, industry best practices, and tools. Application of analysis and design skills to solving medical and health care problems. Evaluating solutions and communicating results to a diverse audience in both oral and written form.	\N
\.


--
-- Data for Name: cs_fte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cs_fte (faculty, year, semester, fte) FROM stdin;
Dr. Karl Arahamson	2021	Spring	0.10
Ms. Sheaneatha D. Applewhite-Hopkins	2021	Spring	0.00
Dr. Moral Azizi	2021	Spring	0.22
Dr. Qin Ding	2021	Spring	0.09
Dr. Krishnan Gopal	2021	Spring	0.14
Dr. Venkat N Gudivada	2021	Spring	0.08
Dr. Nick Herndon	2021	Spring	0.35
Dr. Mark Hills	2021	Spring	0.84
Mr. Bobby Hoggard	2021	Spring	0.21
Mr. John Jones	2021	Spring	0.00
Dr. Jonathan A Saddler	2021	Spring	0.07
Dr. Karman Sartipi	2021	Spring	0.12
Dr. Ronnie Smith	2021	Spring	0.00
Mr. Joel Sweatte	2021	Spring	0.19
Dr. Nasseh Tabrizi	2021	Spring	0.59
Dr. Rui Wu	2021	Spring	0.17
Dr. Paty Imre	2021	Spring	0.00
Ms. Sumati R Kulkarni	2021	Spring	0.00
Ms. Logan G Childers	2021	Spring	0.00
Mr. Gregory Knight	2021	Spring	0.00
Dr. Sergiy Vilkomir	2021	Spring	0.00
Dr. Ding Junhuma	2021	Spring	0.00
Mr. David M Anderson	2021	Spring	0.00
Mr. Aryan Azimzadeh	2021	Spring	0.00
Mr. Shawn K Braddy	2021	Spring	0.00
Dr. Masao Kishore	2021	Spring	0.00
Mr. David R Hoffman	2021	Spring	0.00
\.


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.faculty (id, name, title, email, department, phone) FROM stdin;
1	Dr. Karl  Arahamson	\N	abrahamsonk@ecu.edu	\N	252-328-9689
2	Ms. Sheaneatha D Applewhite-Hopkins	\N	applewhitehopkins16@ecu.edu	\N	252-328-9680
3	Dr. Maral  Azizi	\N	azizim19@ecu.edu	\N	252-328-9680
4	Dr. Qin  Ding	\N	dingq@ecu.edu	\N	252-328-9686
5	Dr. Krishnan  Gopal	\N	gopal@ecu.edu	\N	252-328-9688
6	Dr. Venkat N Gudivada	\N	gudivadav15@ecu.edu	\N	252-328-9680
7	Dr. Nick  Herndon	\N	herndonn19@ecu.edu	\N	252-328-9696
8	Dr. Mark  Hills	\N	hillsma@ecu.edu	\N	252-328-9692
9	Mr. Bobby  Hoggard	\N	hoggardr@ecu.edu	\N	252-328-9695
10	Mr. John  Jones	\N	jonesjo@ecu.edu	\N	252-328-9606
11	Dr. Jonathan A Saddler	\N	saddlerj20@ecu.edu	\N	252-328-9687
12	Dr. Kamran  Sartipi	\N	sartipik16@ecu.edu	\N	252-328-9694
13	Dr. Ronnie  Smith	\N	smithron@cs.ecu.edu	\N	252-328-9687
14	Mr. Joel  Sweatte	\N	sweattej@ecu.edu	\N	252-328-9439
15	Dr. Nasseh  Tabrizi	\N	tabrizim@ecu.edu	\N	252-328-9691
16	Dr. Rui  Wu	\N	wur18@ecu.edu	\N	252-328-9682
17	Dr. Patyi  Imre	\N	patyii@ecu.edu	\N	252-328-6461
18	Ms. Sumati R Kulkarni	\N	\N	\N	\N
19	Ms. Logan G Childers	\N	\N	\N	\N
20	Mr. Gregory  Knight	\N	\N	\N	\N
21	Dr.  Sergiy  Vilkomir	\N	\N	\N	\N
22	Dr. Ding  Junhua	\N	\N	\N	\N
23	Mr. David M Anderson	\N	\N	\N	\N
24	Mr. Aryan  Azimzadeh	\N	\N	\N	\N
25	Mr. Shawn K Braddy	\N	\N	\N	\N
26	Dr. Masao  Kishore	\N	\N	\N	\N
27	Mr. David R Hoffman	\N	\N	\N	\N
\.


--
-- Data for Name: faculty_temp; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.faculty_temp (id, name, title, email, department, phone, extra1, extra2) FROM stdin;
\.


--
-- Name: cs_courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.cs_courses_course_id_seq', 1, false);


--
-- Name: faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.faculty_id_seq', 1, false);


--
-- Name: cs_courses cs_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.cs_courses
    ADD CONSTRAINT cs_courses_pkey PRIMARY KEY (course_id);


--
-- Name: faculty faculty_email_key; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_email_key UNIQUE (email);


--
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (id);


--
-- Name: TABLE cs_courses_2; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.cs_courses_2 TO webuser1;


--
-- Name: TABLE cs_fte; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.cs_fte TO webuser1;


--
-- Name: TABLE faculty; Type: ACL; Schema: public; Owner: student
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.faculty TO webuser1;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)

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
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

