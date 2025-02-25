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

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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


--
-- PostgreSQL database dump complete
--

--
-- Database "cs_dashboard" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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
-- Name: faculty id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.faculty ALTER COLUMN id SET DEFAULT nextval('public.faculty_id_seq'::regclass);


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
-- Name: faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.faculty_id_seq', 1, false);


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
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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

