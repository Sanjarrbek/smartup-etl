--
-- PostgreSQL database dump
--

\restrict HdqG08I7mxsVNRRRkSXgoicsbE1GbqI97AZA7bhwQczUbsSa7CcNGy1MhFVxHx3

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-06-01 23:09:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 223 (class 1259 OID 24790)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    person_id bigint,
    code text,
    email text,
    gender text,
    address text,
    region_code text
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24795)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    deal_id bigint,
    filial_code text,
    external_id text,
    person_id bigint,
    total_amount double precision,
    status text
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24775)
-- Name: product_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_group (
    product_id bigint,
    group_id bigint,
    group_code text,
    type_id bigint,
    type_code text
);


ALTER TABLE public.product_group OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24780)
-- Name: product_inventory_kind; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_inventory_kind (
    product_id bigint,
    inventory_kind text,
    label text
);


ALTER TABLE public.product_inventory_kind OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24785)
-- Name: product_sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_sector (
    product_id bigint,
    sector_code text
);


ALTER TABLE public.product_sector OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24770)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id bigint,
    code text,
    name text,
    short_name text,
    weight_netto double precision,
    weight_brutto double precision,
    litr double precision,
    box_type_code text,
    box_quant double precision,
    producer_code text,
    measure_code text,
    order_no double precision,
    article_code text,
    barcodes text,
    gtin text,
    ikpu text,
    tnved text,
    marking_group_code text
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 5026 (class 0 OID 24790)
-- Dependencies: 223
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (person_id, code, email, gender, address, region_code) FROM stdin;
1899	an	richardgreat83@gmail.com	M	\N	\N
1900	as	\N	M	\N	\N
1901	tk	\N	M	\N	\N
10665	is	\N	M	\N	\N
29621	abbos	\N	M	\N	\N
34998	\N	ismoil11@gmail.com	M	\N	\N
35318	u	\N	M	\N	\N
43028	\N	axmadjon.xamidov@gmail.com	M	\N	\N
43286	jf	\N	M	\N	\N
43503	\N	\N	M	\N	\N
43515	100	\N	M	\N	\N
44065	\N	\N	M	\N	\N
44066	\N	\N	F	\N	\N
44194	1001	\N	M	Tashkent city, Chilanzar district, 20	\N
44213	\N	javohirxiii@gmail.com	M	3 A.Temur street	REG:8
44235	\N	\N	M	\N	\N
58203	ag'abek	agabek1210@gmail.com	M	\N	REG:2
58214	\N	\N	M	\N	\N
63096	\N	\N	M	\N	\N
63358	\N	\N	M	\N	\N
63373	\N	\N	M	\N	\N
63894	\N	\N	M	\N	\N
67966	\N	\N	M	\N	\N
75590	U2	\N	M	address	\N
77426	\N	\N	M	\N	\N
82505	\N	pul7ar@gmail.com	M	\N	\N
85868	1	abdukahhor@greenwhite.uz	M	\N	UZB
85871	2	mumin.salimov@greenwhite.uz	M	\N	UZB
85872	3	adham.toshkanov@greenwhite.uz	M	\N	UZB
85873	4	ayubxon.ubaydullayev@greenwhite.uz	M	\N	UZB
85875	5	svetlana.tsoi@greenwhite.uz	F	\N	UZB
85876	6	nail.ahmadulin@greenwhite.uz	M	\N	UZB
85877	7	sherzod.norboboyev@greenwhite.uz	M	\N	UZB
85880	8	agabek.bozorboyev@greenwhite.uz	M	\N	UZB
85883	9	axmadjon.xamidov@greenwhite.uz	M	\N	UZB
85884	10	muhammad-bobur.norgitov@greenwhite.uz	M	\N	UZB
85888	12	dildora.allayarova@greenwhite.uz	F	\N	UZB
85893	13	timur.quvondiqov@greenwhite.uz	M	\N	UZB
85896	14	janibek.yerkinov@greenwhite.uz	M	\N	UZB
85897	15	nuryosin.otamirzayev@greenwhite.uz	M	\N	UZB
85909	20	abdulaziz.akhmedov@greenwhite.uz	M	\N	UZB
85925	\N	\N	M	\N	\N
86418	\N	zarifjon.ergashev@greenwhite.uz	F	\N	\N
86422	\N	\N	M	gvggg	\N
92894	\N	\N	F	\N	\N
92993	\N	\N	M	\N	REG:2
92994	\N	\N	M	\N	REG:2
92995	\N	\N	M	\N	REG:2
92996	\N	\N	M	\N	REG:2
92998	\N	\N	M	\N	REG:2
94777	\N	\N	M	\N	\N
94826	\N	\N	M	\N	\N
97570	\N	\N	M	\N	\N
100663	\N	\N	M	\N	\N
101770	\N	\N	M	\N	\N
101809	\N	\N	M	\N	\N
103352	\N	\N	M	\N	\N
103353	\N	\N	M	\N	\N
103405	\N	agabek1210@gmail.com	M	\N	\N
103460	\N	mirzo.xk@mail.ru	M	Тошкент шахар, Миробод тумани, Афросиёб кучаси 14/1 139 хонадон	REG:13
103490	\N	\N	M	\N	\N
103530	\N	\N	M	\N	\N
105977	ravshan	\N	M	\N	\N
115825	\N	\N	M	\N	\N
115835	\N	\N	M	\N	\N
115987	\N	sh.khusanboevich@agricultural.uz	M	Toshkent sh. Yangihayot t. Ibrat	\N
124628	\N	\N	M	\N	\N
124630	\N	\N	M	\N	\N
128372	\N	\N	F	\N	\N
145710	\N	\N	M	\N	\N
151702	\N	\N	M	\N	\N
151718	\N	agabek1210@gmail.com	M	\N	\N
151722	1010	\N	M	\N	REG:12
151727	\N	\N	M	\N	\N
151729	\N	\N	M	\N	\N
151734	\N	\N	M	\N	\N
153745	\N	\N	M	\N	\N
153746	\N	\N	M	\N	REG:49
153747	\N	\N	M	\N	\N
153932	\N	\N	M	\N	\N
347795	\N	\N	M	оооо	UZB
347856	\N	tirkashevshohruh@gmail.com	M	Xayrabot maxallasi	\N
367484	\N	\N	M	xayrabot	\N
393911	\N	\N	M	\N	\N
394064	\N	\N	M	\N	\N
394075	\N	\N	M	\N	\N
394096	\N	\N	M	\N	\N
394097	\N	\N	M	\N	\N
394098	\N	\N	M	\N	\N
394099	\N	\N	M	\N	\N
394101	\N	\N	M	\N	\N
394109	\N	\N	M	\N	\N
394113	\N	\N	M	\N	\N
394114	\N	\N	M	\N	\N
394115	\N	\N	M	\N	\N
394189	\N	\N	M	\N	\N
394377	\N	\N	M	\N	\N
394407	\N	\N	M	\N	\N
394409	\N	\N	M	\N	\N
394411	\N	\N	M	\N	\N
394414	\N	\N	M	\N	\N
394415	\N	\N	M	\N	\N
394416	\N	\N	M	\N	\N
394418	\N	\N	M	\N	\N
394419	\N	\N	M	\N	\N
394421	\N	\N	M	\N	\N
394422	\N	\N	M	\N	\N
394425	\N	\N	M	\N	\N
394427	\N	\N	M	\N	\N
394436	\N	\N	M	\N	\N
394438	\N	\N	M	\N	\N
394439	\N	\N	M	\N	\N
394445	\N	\N	M	\N	\N
394446	\N	\N	M	\N	\N
394451	\N	\N	M	\N	\N
394452	\N	\N	M	\N	\N
394461	\N	\N	M	\N	\N
394463	\N	\N	M	\N	\N
394464	\N	\N	M	\N	\N
394466	\N	\N	M	\N	\N
394467	\N	\N	M	\N	\N
394468	\N	\N	M	\N	\N
394469	\N	\N	M	\N	\N
394470	\N	\N	M	\N	\N
394472	\N	\N	M	\N	\N
394479	\N	\N	M	\N	\N
394481	\N	\N	M	\N	\N
394483	\N	\N	M	\N	\N
394485	\N	\N	M	\N	\N
394486	\N	\N	M	\N	\N
394487	\N	\N	M	\N	\N
394490	\N	\N	M	\N	\N
394492	\N	\N	M	\N	\N
394493	\N	\N	M	\N	\N
394494	\N	\N	M	\N	\N
394495	\N	\N	M	\N	\N
394497	\N	\N	M	\N	\N
394499	\N	\N	M	\N	\N
394501	\N	\N	M	\N	\N
394502	\N	\N	M	\N	\N
394505	\N	\N	M	\N	\N
394507	\N	\N	F	\N	\N
394508	\N	\N	M	\N	\N
394511	\N	\N	M	\N	\N
394512	\N	\N	M	\N	\N
394516	\N	\N	M	\N	\N
394517	\N	\N	M	\N	\N
394521	\N	\N	M	\N	\N
394522	\N	\N	M	\N	\N
394524	\N	\N	M	\N	\N
394525	\N	\N	M	\N	\N
394526	\N	\N	M	\N	\N
394527	\N	\N	M	\N	\N
394528	\N	\N	M	\N	\N
394675	\N	\N	M	\N	\N
394852	\N	\N	M	\N	\N
395534	\N	\N	M	\N	\N
396042	\N	\N	M	\N	\N
396093	\N	\N	M	\N	\N
397133	\N	\N	M	\N	\N
397135	\N	\N	M	\N	\N
397179	004	\N	M	\N	\N
397256	505	\N	M	\N	UZB
397518	\N	\N	M	\N	\N
401113	\N	\N	M	\N	\N
402351	\N	\N	M	\N	\N
402395	1000	BazarbayevUlugbek98@gmail.com	M	Toshkent viloyati\rPiskent tumani	\N
412902	\N	\N	M	\N	\N
413194	\N	\N	M	\N	\N
413299	tp001	\N	M	\N	\N
413300	tp002	\N	M	\N	\N
413302	tp004	\N	M	\N	\N
413303	b001	\N	M	\N	\N
413304	s001	\N	M	\N	\N
413305	a001	\N	M	\N	\N
414323	\N	\N	M	\N	\N
414673	\N	\N	M	\N	\N
415423	\N	\N	M	\N	\N
415424	\N	\N	M	\N	\N
415700	\N	\N	M	\N	\N
415702	\N	\N	M	\N	\N
415719	\N	\N	M	\N	\N
416467	\N	\N	M	\N	\N
417216	tsg	\N	M	gdv	UZB
417930	\N	\N	M	\N	\N
417932	\N	\N	M	\N	\N
425355	\N	\N	M	\N	\N
425356	\N	\N	M	\N	\N
425357	\N	\N	M	\N	\N
425358	\N	\N	M	\N	\N
425359	\N	\N	M	\N	\N
425360	\N	\N	M	\N	\N
425361	\N	\N	M	\N	\N
425362	\N	\N	M	\N	\N
425363	\N	\N	M	\N	\N
425364	\N	\N	M	\N	\N
425365	\N	\N	M	\N	\N
432113	\N	\N	M	\N	\N
432116	\N	\N	M	\N	\N
433128	\N	\N	M	\N	\N
433280	\N	\N	M	DENOV	\N
433745	\N	\N	M	denov	\N
434185	\N	\N	M	\N	\N
434186	\N	\N	M	\N	\N
434399	A1	\N	M	\N	\N
434506	\N	\N	M	\N	\N
434786	\N	Fikrbankinha@gmail.com	M	\N	REG:9
434988	\N	\N	M	\N	\N
435277	\N	mail.test@mail.ru	M	\N	\N
435278	\N	\N	M	\N	\N
435279	\N	\N	F	\N	\N
448364	\N	\N	F	\N	\N
448906	\N	\N	M	\N	\N
451173	\N	\N	M	Yoshlik kocha	UZB
456678	\N	\N	M	\N	\N
462635	\N	909012616	M	\N	\N
462636	\N	900016335	M	\N	\N
462637	\N	919066871	M	\N	\N
462638	\N	974101150	M	\N	\N
462639	\N	\N	M	\N	\N
462640	\N	889337877	M	\N	\N
462641	\N	979103878	M	\N	\N
462642	\N	901162776	M	\N	\N
462643	\N	909248017	M	\N	\N
462644	\N	904498383	M	\N	\N
462645	\N	974447002	M	\N	\N
462646	\N	\N	M	\N	\N
462647	\N	946454666	M	\N	\N
462648	\N	909741675	M	\N	\N
462649	\N	970753939	M	\N	\N
462650	\N	\N	M	\N	\N
465138	\N	r.kuchkarov@flextech.uz	M	\N	\N
465139	\N	a.botirov@flextech.uz	M	\N	\N
465140	\N	\N	M	\N	\N
465141	\N	a.muzrabov@flextech.uz	M	\N	\N
465142	\N	\N	M	\N	\N
468015	\N	\N	M	\N	\N
468017	\N	\N	F	\N	\N
468021	\N	\N	F	\N	\N
468024	\N	\N	F	\N	\N
468026	\N	\N	M	\N	\N
468028	\N	\N	M	\N	\N
468393	\N	\N	M	\N	\N
468394	\N	\N	M	\N	\N
468395	\N	\N	M	\N	\N
468396	\N	\N	M	\N	\N
468397	\N	\N	M	\N	\N
470975	\N	\N	M	\N	\N
471797	\N	\N	M	\N	\N
472459	\N	\N	M	\N	\N
472656	\N	\N	M	\N	\N
474186	\N	\N	M	\N	\N
504307	\N	\N	M	\N	\N
506143	\N	\N	M	\N	\N
506192	\N	\N	M	\N	\N
506220	\N	\N	M	\N	\N
518588	\N	\N	M	\N	\N
518857	\N	\N	F	\N	\N
518916	\N	\N	M	\N	\N
519085	\N	\N	M	\N	tash
526776	\N	\N	F	\N	\N
526789	\N	\N	M	\N	\N
526919	\N	\N	M	\N	\N
529463	\N	\N	M	\N	REG:6
529571	\N	mr.nurbekmumin@gmail.com	M	Ташкент Махтумкули 2Б	\N
584842	\N	nodirras@gmail.com	M	\N	\N
587293	\N	bazarbayevulugbek98@gmail.com	M	\N	\N
587452	\N	\N	M	\N	\N
594588	\N	\N	M	\N	\N
619405	\N	\N	M	\N	\N
646764	\N	\N	M	\N	\N
649979	\N	\N	M	\N	UZB
656641	\N	\N	M	\N	\N
658521	\N	\N	M	\N	\N
660908	\N	\N	M	\N	\N
661585	\N	\N	M	\N	tash
661589	\N	\N	M	\N	tash
662217	\N	\N	M	\N	\N
665531	\N	\N	M	\N	\N
665552	\N	\N	M	\N	\N
666667	\N	\N	M	\N	\N
667143	111	\N	M	\N	tash
667473	\N	\N	M	\N	\N
682098	\N	\N	M	\N	\N
719391	\N	\N	M	\N	\N
754453	\N	\N	M	\N	\N
758808	345	tatyanasokolova010@gmail.com	M	Nobel	tash
763982	\N	\N	M	\N	\N
782537	\N	\N	M	\N	\N
782596	\N	\N	M	\N	\N
782602	\N	\N	M	\N	\N
782802	\N	bekodilov.99@gmail.com	M	\N	\N
801312	\N	\N	M	\N	\N
803069	\N	\N	M	\N	\N
805974	\N	\N	M	\N	\N
810755	\N	\N	F	\N	\N
812331	\N	\N	M	\N	\N
818744	1233209	BLM@gmail.com	M	\N	UZB
818754	159753852	\N	M	\N	tash
825298	\N	\N	M	\N	\N
825476	\N	\N	M	\N	\N
826178	\N	\N	M	\N	\N
840411	\N	\N	M	\N	\N
840412	\N	\N	M	\N	\N
840415	\N	\N	M	\N	\N
840515	\N	\N	M	\N	\N
840929	\N	\N	M	\N	\N
840937	\N	\N	M	\N	\N
841233	\N	\N	M	\N	\N
844644	\N	\N	M	\N	\N
844903	\N	\N	M	\N	\N
854493	\N	\N	M	\N	\N
854495	\N	\N	M	\N	\N
893686	21	\N	M	\N	\N
893762	\N	\N	M	\N	\N
893917	\N	\N	M	\N	\N
893978	\N	\N	M	\N	\N
893980	\N	\N	M	\N	\N
897532	\N	\N	M	\N	\N
897785	\N	\N	M	\N	\N
897790	\N	\N	M	\N	\N
897867	\N	\N	F	\N	\N
899511	\N	\N	M	\N	\N
916477	\N	\N	M	\N	\N
916478	\N	\N	M	\N	\N
963584	\N	\N	M	\N	\N
963586	\N	\N	M	\N	\N
968786	8888	\N	M	\N	REG:42
969116	\N	\N	F	\N	\N
969117	\N	\N	F	\N	\N
978512	\N	\N	M	\N	\N
978588	\N	\N	M	\N	\N
978589	\N	\N	F	\N	\N
978590	\N	\N	F	\N	\N
978591	\N	\N	M	\N	\N
984308	\N	\N	M	\N	\N
984309	\N	\N	M	\N	\N
984310	\N	\N	M	\N	\N
984311	\N	\N	F	\N	\N
984312	\N	\N	F	\N	\N
984313	\N	\N	F	\N	\N
984314	\N	\N	M	\N	\N
984315	\N	\N	F	\N	\N
984316	\N	\N	M	\N	\N
984317	\N	\N	M	\N	\N
984318	\N	\N	M	\N	\N
984319	\N	\N	M	\N	\N
984320	\N	\N	F	\N	\N
984321	\N	\N	F	\N	\N
984322	\N	\N	F	\N	\N
984323	\N	\N	M	\N	\N
984324	\N	\N	F	\N	\N
984325	\N	\N	M	\N	\N
985163	32	\N	F	\N	\N
985164	33	\N	M	\N	\N
985165	34	\N	M	\N	\N
985166	35	\N	F	\N	\N
985692	\N	\N	M	\N	\N
986074	\N	\N	M	\N	\N
1014733	\N	\N	F	\N	\N
1014734	\N	\N	M	\N	\N
1016638	\N	\N	M	\N	\N
1016639	\N	\N	M	\N	\N
1023076	\N	\N	F	\N	\N
1023077	\N	\N	M	\N	\N
1023105	\N	\N	F	\N	\N
1023106	\N	\N	F	\N	\N
1023107	\N	\N	F	\N	\N
1023108	\N	\N	M	\N	\N
1023116	\N	\N	M	\N	\N
1023117	\N	\N	M	\N	\N
1023118	\N	\N	M	\N	\N
1023119	\N	\N	M	\N	\N
1023120	\N	\N	M	\N	\N
1023296	\N	\N	M	\N	tash
1023299	\N	\N	F	\N	tash
1023307	\N	\N	M	\N	tash
1023313	\N	\N	M	\N	tash
1023316	\N	\N	M	\N	\N
1024874	\N	\N	M	\N	\N
1024875	\N	\N	F	\N	\N
1024888	\N	\N	M	\N	\N
1024889	\N	\N	F	\N	\N
1026550	\N	\N	M	\N	\N
1028215	\N	\N	F	\N	\N
1028218	\N	\N	M	\N	\N
1028223	\N	\N	M	\N	\N
1028226	\N	\N	M	\N	\N
1030703	\N	\N	F	\N	\N
1030950	\N	\N	M	\N	\N
1030957	\N	\N	M	\N	\N
1030968	\N	\N	M	\N	\N
1035212	\N	\N	M	\N	\N
1035219	\N	\N	M	\N	\N
1035280	\N	\N	M	\N	\N
1035976	\N	\N	M	\N	\N
1037033	\N	\N	M	\N	\N
1037047	\N	\N	M	\N	\N
1037053	\N	\N	M	\N	\N
1037063	\N	\N	M	\N	\N
1038506	\N	\N	M	\N	\N
1038519	\N	\N	M	\N	\N
1038526	\N	\N	M	\N	\N
1038582	\N	\N	M	\N	\N
1038593	\N	\N	M	\N	\N
1040972	\N	\N	M	\N	\N
1040973	\N	\N	M	\N	\N
1041439	\N	\N	M	\N	\N
1042015	\N	\N	M	\N	\N
1042016	\N	\N	F	\N	\N
1043182	\N	\N	F	\N	\N
1043192	\N	\N	M	\N	\N
1043198	\N	\N	M	\N	\N
1045814	\N	\N	M	\N	\N
1045838	\N	\N	F	\N	\N
1045839	\N	\N	M	\N	\N
1045840	\N	\N	M	\N	\N
1045841	\N	\N	M	\N	\N
1045842	\N	\N	M	\N	\N
1062459	\N	\N	F	\N	\N
1062491	\N	\N	M	\N	\N
1063827	\N	\N	M	\N	\N
1063880	\N	\N	M	\N	\N
1082359	\N	\N	M	\N	\N
1082360	\N	\N	M	\N	\N
1082362	\N	\N	M	\N	\N
1082363	\N	\N	M	\N	\N
1086112	\N	\N	M	5-микрораен	UZB
1091299	\N	\N	F	\N	\N
1091439	\N	\N	M	\N	\N
1100632	\N	\N	M	\N	\N
1108748	\N	\N	M	\N	\N
1108750	\N	\N	F	\N	\N
1114243	\N	\N	M	\N	\N
1129707	\N	\N	M	\N	\N
1188392	\N	\N	F	\N	\N
1188394	\N	\N	M	\N	\N
1188401	\N	\N	M	\N	\N
1188404	\N	\N	M	\N	\N
1214615	\N	\N	M	\N	REG:2
1345049	\N	\N	M	\N	\N
1349624	\N	\N	M	\N	\N
1358164	\N	\N	M	\N	\N
1486846	ceo	\N	M	\N	\N
1486847	sv	\N	M	\N	\N
1486848	pr1	\N	M	\N	\N
1486849	pr2	\N	F	\N	\N
1486850	pr3	\N	M	\N	\N
1486851	sk	\N	M	\N	\N
1486852	kur	\N	M	\N	\N
1487492	\N	\N	M	\N	\N
1487493	\N	\N	M	\N	\N
1487494	\N	\N	M	\N	\N
1487495	\N	\N	M	\N	\N
1487496	\N	\N	F	\N	\N
1487497	\N	\N	M	\N	\N
1502997	\N	\N	M	\N	\N
1508330	\N	\N	M	\N	\N
1517076	\N	\N	M	\N	\N
1517811	\N	\N	M	\N	\N
1517833	\N	\N	M	\N	\N
1517838	\N	\N	M	\N	\N
1517840	\N	\N	M	\N	\N
1517847	\N	\N	M	\N	\N
1517868	\N	\N	M	\N	\N
1518222	\N	\N	M	\N	\N
1518223	\N	\N	F	\N	\N
1518224	\N	\N	M	\N	\N
1518225	\N	\N	M	\N	\N
1518226	\N	\N	F	\N	\N
1518227	\N	\N	F	\N	\N
1520000	\N	\N	M	\N	\N
1520683	\N	\N	M	\N	\N
1520685	\N	\N	M	\N	\N
1523173	\N	\N	M	\N	\N
1529287	\N	\N	M	\N	\N
1553447	\N	\N	M	МИРЗО УЛУГБЕКСКИЙ р-н КАМОЛОТ МФЙ, ФЕРУЗА ДАХАСИ,  uy:50 xonadon:8	\N
1553532	\N	\N	M	\N	UZB
1554184	\N	mr.isfandiyor@gmail.com	M	\N	\N
1558536	\N	\N	M	\N	\N
1566905	\N	\N	M	\N	\N
1567196	\N	\N	M	\N	\N
1567481	\N	\N	M	\N	\N
1743192	\N	\N	M	\N	\N
1744673	\N	\N	F	\N	\N
1748674	\N	\N	M	\N	\N
1750379	\N	\N	M	\N	\N
1750389	\N	\N	M	\N	\N
1750394	\N	\N	M	\N	\N
1750398	\N	\N	M	\N	\N
1761936	\N	\N	M	\N	\N
1778012	\N	\N	M	\N	\N
1778016	\N	\N	F	\N	\N
1778020	\N	\N	F	\N	\N
1778027	\N	\N	M	\N	\N
1778036	\N	\N	F	\N	\N
1785893	\N	\N	M	\N	\N
1817569	\N	\N	M	\N	\N
1861726	\N	\N	M	\N	\N
1861727	\N	\N	M	\N	\N
1861728	\N	\N	M	\N	\N
1865554	\N	\N	M	\N	\N
2145124	\N	\N	M	\N	\N
2183354	\N	\N	M	\N	\N
2284263	\N	\N	M	\N	\N
2288566	\N	\N	M	\N	\N
2288567	\N	\N	M	\N	\N
2291652	\N	\N	M	\N	\N
2293310	\N	\N	M	\N	\N
2293416	\N	\N	M	\N	\N
2298336	\N	\N	M	\N	\N
2298832	\N	azim.z.2012@gmail.com	M	\N	\N
2298833	\N	\N	M	\N	\N
2301552	\N	\N	M	\N	\N
2424690	\N	\N	M	\N	tash
2452954	\N	\N	M	\N	\N
2468095	\N	\N	F	\N	\N
2508001	\N	\N	M	\N	\N
2508003	\N	\N	M	\N	\N
2508004	\N	\N	M	\N	\N
2508006	\N	\N	M	\N	\N
2508105	\N	\N	M	\N	\N
2514347	\N	\N	M	\N	\N
2514351	\N	\N	M	\N	\N
2514359	\N	\N	F	\N	\N
2514363	\N	\N	M	\N	\N
2514756	\N	\N	M	\N	\N
2514761	\N	\N	M	\N	\N
2523566	1234	\N	M	\N	\N
2523574	\N	\N	M	\N	\N
2617059	\N	\N	M	\N	\N
2643854	\N	\N	M	\N	\N
3009683	123	\N	M	\N	tash
3009688	\N	\N	M	\N	tash
3012786	0011	\N	M	\N	\N
3027327	112233	\N	M	\N	\N
3027334	\N	\N	M	\N	\N
3027339	\N	\N	M	\N	\N
3027340	\N	\N	M	\N	\N
3027344	112244	\N	M	\N	\N
3027347	11223	\N	M	\N	\N
3027351	112	\N	M	\N	\N
3027354	113	\N	M	\N	\N
3027358	\N	\N	M	\N	\N
3031727	\N	\N	M	\N	\N
3031728	\N	\N	M	\N	\N
3038965	\N	\N	M	\N	tash
3038970	\N	\N	M	\N	\N
3046022	\N	\N	M	\N	\N
3046023	\N	\N	M	\N	\N
3046025	\N	\N	M	\N	\N
3047855	\N	\N	M	\N	\N
3074889	\N	\N	M	\N	\N
3074891	\N	\N	M	\N	\N
3074892	\N	\N	M	\N	\N
3074894	\N	\N	M	\N	\N
3074896	\N	\N	M	\N	\N
3075134	\N	\N	M	\N	\N
3080900	\N	\N	M	\N	\N
3080901	\N	\N	M	\N	\N
3080902	\N	\N	M	\N	\N
3080903	\N	\N	M	\N	\N
3080904	\N	\N	M	\N	\N
3080905	\N	\N	M	\N	\N
3083231	\N	\N	M	\N	tash
3083235	\N	\N	M	\N	\N
3083238	\N	\N	M	\N	\N
3083239	\N	\N	M	\N	\N
3083240	\N	\N	M	\N	\N
3083241	\N	\N	M	\N	\N
3083244	\N	\N	M	\N	\N
3095634	\N	\N	M	\N	\N
3104663	70	\N	M	\N	\N
3112614	\N	\N	M	\N	\N
3163083	\N	\N	M	\N	\N
3163148	\N	\N	M	\N	\N
3165296	\N	\N	M	\N	\N
3169481	\N	\N	M	\N	tash
3305399	1000.Ю	\N	M	\N	\N
3305405	\N	\N	M	\N	\N
3305407	\N	\N	M	\N	\N
3305800	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1	\N
3305802	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1	\N
3308613	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1	\N
3308633	\N	\N	M	Ташкент, улица Муминова, 4/1	\N
3339584	\N	\N	M	Бухара, улица Абдурахмана Джами, 13	\N
3347156	770011	\N	M	Бухара, улица Пиридастгир, 124	\N
3347192	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1	\N
3351392	\N	\N	M	\N	\N
3351551	\N	\N	M	\N	\N
3355790	\N	\N	M	\N	\N
3542375	\N	\N	M	\N	\N
3627962	\N	\N	M	\N	\N
3663244	\N	\N	M	\N	\N
3758317	\N	\N	M	Наманган, улица Ислама Каримова, 21	\N
3761374	\N	\N	M	\N	\N
3793514	\N	\N	M	Tashkent, Bunyodkor Avenue, 52A	\N
3793636	\N	\N	M	Parvina	\N
3793653	\N	\N	M	\N	\N
3793663	\N	\N	M	Ташкентская область, Зангиатинский район, городской посёлок Эшангузар, улица Мустакиллик, 4	\N
3796679	\N	\N	M	\N	\N
3803945	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1	\N
3811333	\N	\N	M	Ташкент, Мирзо-Улугбекский район, массив Буз-1, 25	\N
3813062	\N	\N	M	Ташкент, Чиланзарский район, массив Чиланзор, 16-й квартал, 16	\N
3813603	\N	\N	M	\N	\N
3821142	\N	\N	M	Навои, улица Алишера Навои, 4	\N
3822352	\N	\N	M	\N	\N
3825066	\N	\N	M	\N	\N
3897715	\N	\N	M	\N	\N
3899406	\N	\N	M	\N	\N
3901349	\N	\N	M	Toshkent	UZB
3904421	\N	\N	M	\N	\N
3929918	\N	\N	M	Навои, улица Алишера Навои, 4	\N
4117835	\N	\N	M	Ташкент, улица Шифонур, 3/1	\N
4160315	\N	\N	M	\N	\N
4160818	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1	\N
4165184	\N	\N	F	\N	\N
4167666	1212	\N	M	\N	\N
4167681	123456	mahsulot2@gmail.com	M	\N	\N
4169304	\N	\N	M	\N	\N
4176443	\N	\N	M	\N	\N
4186298	\N	\N	M	Ташкентская область, Зангиатинский район, городской посёлок Эшангузар, улица Мустакиллик, 4	\N
4186360	333222	\N	M	\N	\N
4186410	\N	\N	M	\N	\N
4211234	\N	\N	M	\N	\N
4216189	\N	\N	M	Ташкент, улица Фараби, 350	\N
4216559	\N	\N	M	\N	\N
4228636	12345678	test@mail.ru	M	\N	\N
4237787	\N	\N	M	\N	\N
4240837	\N	\N	M	Ut	\N
4244158	\N	\N	M	\N	\N
4307396	\N	\N	M	\N	\N
4309448	\N	\N	M	\N	\N
4309489	\N	\N	M	\N	\N
4310490	\N	\N	M	\N	\N
4314818	\N	\N	M	\N	\N
4360540	\N	\N	M	\N	\N
4360568	\N	\N	M	\N	\N
4360684	\N	\N	F	\N	UZB
4366958	\N	abbosbukaboyev@gmail.com	M	Tashkent 1A	\N
4367025	\N	\N	M	\N	\N
4393635	\N	\N	M	\N	\N
4394057	\N	\N	M	\N	\N
4394642	\N	\N	M	\N	\N
4407124	\N	\N	M	\N	\N
4408339	\N	\N	F	\N	\N
4408352	\N	\N	M	\N	\N
4408791	\N	\N	M	\N	\N
4410822	\N	\N	F	Ташкент, Чиланзарский район, массив Чиланзор, 7-й квартал, 18Г	\N
4422433	0001	\N	M	\N	\N
4433892	\N	\N	M	\N	\N
4481735	\N	\N	M	\N	\N
4485784	\N	\N	M	\N	\N
4485911	\N	\N	M	ШИРИН ШАХАР М.УЛУГБЕК МАХАЛЛАСИ	\N
4485926	\N	\N	M	uruhxudhrrrhhr	\N
4486208	\N	\N	M	Андижан, Новокольцевая улица, 2	\N
4486570	\N	\N	M	\N	\N
4486572	\N	\N	M	\N	\N
4486573	\N	\N	M	\N	\N
4492248	\N	skysoul2000@mail.ru	M	\N	\N
4505384	\N	\N	M	Ташкент, Наманганская улица, 2А	\N
4506633	\N	\N	M	Сырдарьинский район	\N
4538741	\N	\N	M	\N	\N
4546766	\N	\N	M	\N	\N
4566500	\N	\N	M	\N	\N
4566510	\N	\N	M	\N	\N
4566517	\N	\N	M	\N	\N
4571538	\N	\N	M	\N	\N
4585470	\N	\N	M	Ташкентская область, Чиназ	\N
4590120	\N	\N	M	\N	\N
4593786	\N	\N	M	Андижанская область, Джалакудукский район, городской посёлок Южный Аламышик, Birlik ko‘chasi, 37	\N
4595890	\N	\N	F	Республика Каракалпакстан, Нукус, улица Макпал, 2	\N
4604613	\N	\N	M	\N	\N
4607443	\N	\N	M	\N	\N
4607641	\N	\N	M	\N	\N
4607697	\N	\N	M	\N	\N
4639158	\N	\N	M	Бухара, Самаркандская улица, 174	\N
4639991	\N	asadbek.a@icloud.com	M	h	UZB
4871178	\N	\N	M	\N	REG:2
4871185	\N	\N	M	\N	\N
4871200	\N	\N	M	test	UZB
4882606	\N	\N	M	Ферганская область, Коканд, Туркестанская улица, 26	\N
4883012	\N	\N	M	\N	\N
4883042	\N	\N	M	\N	\N
4883116	\N	\N	M	\N	\N
4883164	\N	\N	M	\N	\N
4883169	\N	\N	M	\N	\N
4883170	\N	\N	M	\N	\N
4883172	\N	\N	M	\N	\N
4883173	\N	\N	M	\N	\N
4883174	\N	\N	M	\N	\N
4883175	\N	\N	M	\N	\N
4883176	\N	\N	M	\N	\N
4883177	\N	\N	M	\N	\N
4883178	\N	\N	M	\N	\N
4883179	\N	\N	M	\N	\N
4883181	\N	\N	M	\N	\N
4883182	\N	\N	M	\N	\N
4883184	\N	\N	M	\N	\N
4883185	\N	\N	M	\N	\N
4883186	\N	\N	M	\N	\N
4883187	\N	\N	M	\N	\N
4883306	\N	\N	M	\N	\N
4887452	\N	\N	M	Сурхандарьинская область, Денау	\N
4923774	\N	\N	M	\N	\N
4923790	\N	\N	M	\N	\N
4923798	\N	\N	M	\N	\N
4926566	\N	\N	M	Наманганский район, городской посёлок Миришкор, улица Ок Куприк, 60	\N
5013659	\N	\N	M	\N	\N
5021356	\N	\N	M	Кашкадарьинская область, Китабский район, городской посёлок Сариасия	\N
5024129	\N	\N	M	Кашкадарьинская область, Китаб	\N
5024150	05	\N	M	Armug'on 31	\N
5039560	\N	\N	M	\N	\N
5039973	\N	\N	M	\N	\N
5073117	\N	\N	M	\N	\N
5087779	\N	\N	M	\N	\N
5088383	\N	\N	M	\N	\N
5096360	kjhg	\N	M	\N	UZB
5121264	\N	\N	M	\N	\N
5157158	\N	\N	M	Ташкент, улица Алишера Навои, 42	\N
5161776	\N	\N	M	\N	\N
5162049	\N	\N	M	\N	\N
5162154	\N	\N	M	\N	\N
5174098	gws	mirzoitovmirfozil777@gmail.com	M	\N	\N
5197972	\N	\N	M	Ташкент, улица Юсуфа Саккокий, 66В	\N
5200577	\N	\N	M	Ташкент, улица Бабура, 44	\N
5256283	\N	\N	M	\N	\N
5276103	\N	\N	M	\N	\N
5285940	\N	\N	M	\N	\N
5286972	\N	\N	M	\N	\N
5287290	\N	\N	F	М37	\N
5293041	\N	\N	M	Наманганский район	\N
5305015	\N	\N	M	Республика Каракалпакстан, Нукус, улица Паруаз, 33	\N
5471276	\N	\N	M	Бишкек, улица Садыгалиева, 3/2	\N
5567230	714	\N	M	Буйюк Ипак Йули 40/19	\N
5567262	\N	\N	M	\N	\N
5568631	\N	\N	M	\N	\N
5845016	\N	\N	F	\N	\N
5845434	\N	\N	M	Сырдарьинская область, Гулистан, Sadaf ko'chasi, 33	\N
5970682	5970682	\N	M	\N	\N
5986073	\N	\N	M	\N	\N
6043924	\N	\N	M	Ташкентская область, Чирчик, улица Маданият, 11	\N
6047423	\N	\N	M	\N	\N
6055172	\N	\N	M	Навои, проспект Галаба, 214	\N
6058330	\N	\N	M	\N	\N
6058561	\N	\N	F	Хорезмская область, Ургенч, Гурленское шоссе, 15	\N
6083842	\N	\N	F	Ташкент, улица Уч Кахрамон, 2	\N
6413179	\N	\N	M	Кашкадарьинская область, Касан	\N
6456340	\N	\N	M	\N	\N
6456358	\N	\N	M	\N	\N
6457197	\N	\N	M	Andijon shaxa nayman 5-uy	\N
6459262	\N	\N	M	Ташкент, Яшнободский район, улица Темирчи, 1	\N
6460242	\N	\N	M	\N	\N
6485340	\N	\N	M	МИРЗО УЛУГБЕКСКИЙ р-н МИНГЛОЛА МФЙ, КОРА-СУ-6 ДАХАСИ,  uy:10 xonadon:70, 10, 70	\N
6592563	\N	\N	M	город Ташкент Алмазарский район OLTINSOY KO`CHASI, 2-UY	\N
6593964	\N	\N	M	\N	\N
6620649	\N	\N	M	\N	\N
6692461	\N	\N	M	\N	\N
6694753	\N	\N	M	Навоийская область, Хатырчинский район	\N
6704072	\N	\N	M	Фергана, махаллинский сход граждан Мададкор, улица Нурафшон, 8	\N
6706202	\N	\N	M	\N	\N
6706564	\N	\N	M	\N	\N
6735172	\N	\N	M	\N	\N
6735737	\N	\N	M	\N	\N
6739763	\N	\N	M	\N	\N
6739777	\N	\N	M	\N	\N
6739942	\N	\N	M	\N	\N
6740125	\N	' or 1=1# -- -	M	' or 1=1# -- -	\N
6741169	\N	\N	M	\N	\N
6746805	\N	\N	M	Ташкент, улица Мехмондуст, 40	\N
6746992	\N	\N	M	\N	\N
6756032	\N	\N	F	\N	\N
6801855	\N	\N	M	\N	\N
6802818	\N	\N	M	Дангаринский район -, -	\N
6802830	\N	ulugbek@gmail.com	M	\N	\N
6802880	\N	\N	M	\N	\N
6802911	\N	\N	M	\N	\N
6804432	\N	\N	M	\N	\N
6867272	\N	\N	M	\N	\N
6892962	\N	\N	M	\N	\N
6929251	\N	\N	M	Ташкент	\N
6990689	\N	\N	M	\N	\N
7092003	\N	\N	M	\N	\N
7092128	\N	\N	M	\N	\N
7095222	\N	\N	M	ФЕРГАНА ЙУЛИ УЛИЦА 15 а дом 10 тупик	\N
7097486	\N	\N	M	\N	UZB
7098611	tp1	\N	F	\N	\N
7098612	tp2	\N	M	\N	\N
7098613	tp3	\N	M	\N	\N
7098614	oper	\N	M	\N	\N
7098615	eks1	\N	M	\N	\N
7098616	eks2	\N	M	\N	\N
7098617	sv1	\N	M	\N	\N
7098618	dr1	\N	M	\N	\N
7098675	1111111111	\N	M	\N	\N
7241508	\N	\N	M	\N	\N
7249571	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 22	\N
7359151	\N	\N	M	\N	\N
7500598	\n7428912_d0_2	\N	M	\N	\N
7500599	7428912_d0_1	\N	M	\N	\N
7829393	\N	\N	M	\N	\N
7907708	\N	\N	M	\N	\N
7916630	2235d840-62f4-11f0-bb56-0050569eddcc	\N	F	\N	\N
7923616	\N	\N	M	\N	\N
8028540	\N	\N	M	\N	\N
8028541	\N	\N	M	\N	\N
8028981	\N	\N	M	\N	\N
8140384	\N	\N	M	\N	\N
8157715	\N	\N	M	\N	\N
8167429	\N	\N	M	\N	\N
8167920	\N	\N	M	\N	\N
8224415	\N	\N	M	\N	\N
8224619	\N	\N	M	\N	\N
8232125	\N	\N	M	\N	\N
8233575	\N	\N	M	\N	\N
8266058	0000000001	\N	M	\N	\N
8266069	020202	\N	M	\N	\N
8338390	0005	\N	M	\N	\N
8433940	\N	\N	M	\N	\N
8436352	\N	\N	M	\N	\N
8589389	\N	\N	M	\N	\N
8590916	\N	\N	M	\N	\N
8591991	\N	\N	M	\N	\N
8592012	\N	\N	M	\N	\N
8593050	\N	\N	M	\N	\N
8593056	\N	\N	M	\N	\N
8593065	\N	\N	M	\N	\N
8593073	\N	\N	M	\N	\N
8593084	\N	\N	M	\N	\N
8593104	\N	\N	M	\N	\N
8593116	\N	\N	M	\N	\N
8595818	\N	\N	M	\N	\N
8595820	\N	\N	M	\N	\N
8595821	\N	\N	M	\N	\N
8605150	0505	\N	M	\N	\N
8605253	2007	\N	M	Toshkemt shahar yunusobod tumani	UZB
8605313	\N	\N	M	\N	\N
8685099	\N	\N	M	\N	\N
8687489	\N	\N	M	111	\N
8704405	\N	\N	M	\N	\N
8743815	321	\N	M	\N	tash
8781518	\N	\N	M	\N	\N
8786280	\N	\N	M	\N	\N
8797572	\N	\N	M	\N	\N
9018741	\N	\N	M	\N	\N
10087505	\N	\N	M	\N	\N
10087511	\N	\N	M	\N	\N
10087516	\N	\N	M	\N	\N
10087523	\N	\N	M	\N	\N
10087531	\N	\N	M	\N	\N
10087545	\N	\N	M	\N	\N
10087549	\N	\N	M	\N	\N
10155550	127982-rb	\N	M	(None, None)	UZB
10159109	128053-rb	\N	M	\N	\N
10160471	\N	\N	M	\N	\N
10160594	\N	\N	M	\N	\N
10160915	\N	\N	M	\N	\N
10162107	\N	\N	M	\N	\N
10162791	\N	\N	M	\N	\N
10308972	\N	\N	M	\N	\N
10309302	\N	\N	M	Kattaqurgon	\N
10309303	\N	\N	M	\N	\N
10309312	\N	\N	M	\N	\N
10309332	\N	\N	M	\N	\N
10309333	\N	\N	M	\N	\N
10309335	\N	\N	M	\N	\N
10309340	\N	\N	M	\N	\N
10309342	\N	\N	M	\N	\N
10309344	\N	\N	M	\N	\N
10310693	\N	\N	M	\N	\N
10331800	elyor04	\N	M	\N	UZB
10358082	\N	\N	M	\N	\N
10358104	\N	\N	M	\N	\N
10390800	\N	\N	M	\N	\N
10391212	\N	\N	M	\N	\N
10437250	00-0000002	\N	M	\N	\N
10457436	\N	\N	M	\N	\N
10835630	\N	\N	M	\N	\N
10861613	\N	\N	M	\N	\N
10945713	\N	\N	M	\N	\N
10945715	\N	\N	M	\N	\N
10945761	\N	\N	M	\N	\N
10946020	\N	\N	M	\N	\N
10964821	\N	\N	F	\N	\N
10964841	\N	\N	M	\N	\N
10964847	\N	\N	M	\N	\N
10965091	\N	\N	F	\N	\N
10965518	\N	\N	M	\N	\N
10965566	\N	\N	F	\N	\N
10965611	\N	\N	F	\N	\N
10965659	\N	\N	M	\N	\N
10966903	\N	\N	F	\N	\N
11037406	\N	\N	M	\N	\N
11037490	\N	\N	M	\N	\N
11069968	\N	\N	M	\N	\N
11218652	\N	\N	M	Асадулла Худжаев 1А, Tashkent	\N
11260560	\N	\N	M	Термезский район -, -	\N
11294846	\N	\N	M	\N	\N
11480332	\N	\N	M	\N	\N
11506419	123321	\N	M	Сергели	\N
12000818	\N	\N	M	\N	\N
12007603	\N	\N	F	\N	\N
12397989	\N	\N	M	\N	\N
12404167	\N	\N	M	\N	\N
12404366	1002	\N	M	\N	\N
12475573	1004	\N	M	\N	\N
12475631	1003	\N	M	\N	\N
12475675	1005	\N	M	\N	\N
12475682	1006	\N	F	\N	\N
12475704	1007	\N	M	\N	\N
12514118	\N	\N	M	\N	\N
12514119	\N	\N	M	\N	\N
12514125	\N	\N	M	\N	\N
13227766	william	william@gmail.com	M	in the middle of nowhere	UZB
13239241	\N	\N	M	GWS	\N
13251309	\N	\N	M	\N	\N
13503085	\N	\N	M	\N	\N
13503309	\N	\N	M	\N	\N
13503400	\N	\N	M	\N	\N
13503407	\N	\N	M	\N	\N
13503419	\N	\N	M	\N	\N
13503423	\N	\N	M	\N	\N
13511592	384d74e6-c3ea-11ee-b9dd-0050569eddcc	\N	F	\N	\N
13511597	72ed6411-df5a-11ed-b95d-0050569eddcc	\N	F	\N	\N
13511598	2a1e8fae-a11f-11ed-b95d-0050569eddcc	\N	F	\N	\N
13511600	b9c94623-1a7d-11ef-ba21-0050569eddcc	\N	F	\N	\N
13511749	2235d846-62f4-11f0-bb56-0050569eddcc	\N	F	\N	\N
13535544	\N	\N	M	\N	\N
13568859	09399399909	loisa@gmail.com	M	\N	\N
13584897	1035e642-466f-11ee-b970-0050569eddcc	\N	M	\N	\N
13584898	13dd146e-bfbb-11ec-b918-0050569eb712	\N	M	\N	\N
13584899	fac73d69-41b1-11ef-ba41-0050569eddcc	\N	M	\N	\N
13584900	6355f681-495e-11ed-b92d-0050569eb712	\N	M	\N	\N
13584901	d712fb97-f246-11ee-b9f5-0050569eddcc	\N	M	\N	\N
13584902	699eefe4-4ab4-11ed-b92d-0050569eb712	\N	M	\N	\N
13584903	29a3f0cb-4eb4-11ed-b92d-0050569eb712	\N	M	\N	\N
13584904	fa2fa5d9-80ef-11ed-b95c-0050569eddcc	\N	M	\N	\N
13584905	719c7420-4eb4-11ed-b92d-0050569eb712	\N	M	\N	\N
13600033	f24fe4da-60de-11ee-b97b-0050569eddcc	\N	M	\N	\N
13600036	6f596ed6-35b6-11ee-b964-0050569eddcc	\N	M	\N	\N
13905759	\N	\N	M	\N	\N
13991420	565949f2-64c3-11ed-b93d-0050569eb712	\N	M	\N	\N
13992166	fc2a4f1d-63d3-11f0-bb56-0050569eddcc	\N	F	\N	\N
13992411	fc2a4f20-63d3-11f0-bb56-0050569eddcc	\N	M	\N	\N
13992476	fc2a4f26-63d3-11f0-bb56-0050569eddcc	\N	M	\N	\N
13992546	40641985-7688-11f0-bb71-0050569eddcc	newayna@gmail.com	F	\N	\N
14000190	40641989-7688-11f0-bb71-0050569eddcc	imanov.iman@gmail.com	F	\N	\N
14063270	\N	\N	M	\N	\N
14064605	\N	\N	M	\N	\N
14140039	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 22	\N
14281494	\N	\N	M	Tashkent, Shaykhantahur District, Beshagach, 1/1	\N
14330832	4166a959-3cfc-11ef-ba41-0050569eddcc	\N	M	\N	\N
14351598	\N	\N	M	\N	\N
14414484	\N	\N	M	\N	\N
14511527	1008	\N	M	\N	\N
14511578	1009	\N	M	\N	\N
14873536	\N	\N	M	\N	\N
14880070	\N	\N	F	\N	\N
14887202	\N	\N	M	\N	\N
15024860	100122	\N	M	Tashkent city, Chilanzar district, 20	\N
15078561	\N	\N	M	\N	\N
15078574	\N	\N	M	\N	\N
15084420	eshonovboxo	\N	M	\N	\N
15084500	pf4093	\N	M	\N	\N
15086113	100122321312	\N	M	Tashkent city, Chilanzar district, 20	\N
15086147	pf4096	\N	M	\N	\N
15086218	pf4097	\N	M	\N	\N
15086227	pf4098	\N	M	\N	\N
15086234	pf4099	\N	M	\N	\N
15086239	pf4100	\N	M	\N	\N
15086254	pf4101	\N	M	\N	\N
15088551	pf4107	\N	M	\N	REG:2
15088593	pf4113	\N	M	\N	REG:2
15092454	pf4115	\N	M	\N	REG:2
15119838	\N	\N	M	\N	\N
15223058	\N	\N	M	\N	\N
15249364	\N	\N	M	\N	\N
15370321	\N	\N	M	\N	\N
15456070	pf14543	\N	M	\N	\N
15521211	\N	\N	M	\N	\N
15521233	\N	\N	M	\N	\N
15521245	\N	\N	M	\N	\N
15725080	\N	\N	M	\N	\N
15777236	\N	\N	M	\N	\N
15789886	\N	\N	M	\N	\N
15821761	\N	\N	M	\N	\N
15909782	\N	\N	M	\N	\N
16159918	\N	\N	M	\N	\N
16164140	\N	\N	M	\N	\N
16428845	CC	\N	M	\N	\N
16538122	\N	\N	M	\N	\N
17498372	\N	\N	M	\N	\N
17758354	\N	\N	M	\N	\N
17835147	\N	\N	M	\N	\N
17840465	\N	\N	M	\N	\N
17861124	\N	\N	M	\N	\N
17911117	\N	\N	M	\N	\N
17994822	\N	\N	M	\N	\N
17999591	\N	\N	M	\N	\N
18009270	\N	\N	M	\N	\N
18038390	\N	\N	M	\N	\N
18049856	\N	\N	M	\N	\N
18050862	\N	\N	M	\N	\N
18067489	0023	\N	M	\N	\N
18067494	\N	\N	M	\N	\N
18080317	1212432	\N	M	\N	\N
18080491	\N	\N	M	\N	\N
18080576	\N	\N	M	\N	\N
18080590	\N	\N	M	\N	\N
18107826	\N	\N	M	\N	\N
18108795	\N	\N	M	\N	\N
18224416	\N	\N	M	\N	\N
18279676	\N	\N	M	\N	\N
18306855	123rt	\N	M	\N	\N
18315421	\N	\N	M	\N	\N
18315834	\N	\N	M	\N	\N
18315844	\N	\N	M	\N	\N
18317672	\N	\N	M	\N	\N
18317716	\N	\N	M	\N	\N
18426785	\N	\N	M	Ташкент, Шайхантахурский район, массив Бешагач, 1/1	\N
18435043	\N	\N	M	\N	\N
18529473	\N	\N	M	\N	\N
18529486	\N	\N	M	\N	\N
18619953	\N	\N	M	\N	\N
18627280	\N	\N	M	\N	\N
18627598	\N	\N	M	\N	\N
18627786	\N	\N	M	\N	\N
18627805	\N	\N	M	\N	\N
18653414	\N	\N	M	\N	\N
18655246	\N	\N	M	\N	\N
18656944	\N	\N	M	\N	\N
18656961	\N	\N	M	\N	\N
18656999	\N	\N	\N	\N	\N
18657000	\N	\N	\N	\N	\N
18657001	\N	\N	\N	\N	\N
18781609	\N	\N	M	\N	\N
18890518	\N	\N	M	\N	\N
18906842	Natural_person_code_7192	Natural_person_7192@smartup.test	M	Natural_person_address_7192	\N
18906910	Natural_person_code_7686	Natural_person_7686@smartup.test	M	Natural_person_address_7686	\N
18906962	Natural_person_code_1423	Natural_person_1423@smartup.test	M	Natural_person_address_1423	\N
18907531	Natural_person_code_3979	Natural_person_3979@smartup.test	M	Natural_person_address_3979	\N
18907710	Natural_person_code_3414	Natural_person_3414@smartup.test	M	Natural_person_address_3414	\N
18907735	Natural_person_code_7983	Natural_person_7983@smartup.test	M	Natural_person_address_7983	\N
18907781	Natural_person_code_9757	Natural_person_9757@smartup.test	M	Natural_person_address_9757	\N
18907808	Natural_person_code_5073	Natural_person_5073@smartup.test	M	Natural_person_address_5073	\N
18907860	Natural_person_code_4387	Natural_person_4387@smartup.test	M	Natural_person_address_4387	\N
18907886	Natural_person_code_6361	Natural_person_6361@smartup.test	M	Natural_person_address_6361	\N
18907913	Natural_person_code_5441	Natural_person_5441@smartup.test	M	Natural_person_address_5441	\N
18907922	Natural_person_code_5752	Natural_person_5752@smartup.test	M	Natural_person_address_5752	\N
18907929	Natural_person_code_9106	Natural_person_9106@smartup.test	M	Natural_person_address_9106	\N
18907944	Natural_person_code_3603	Natural_person_3603@smartup.test	M	Natural_person_address_3603	\N
18907957	Natural_person_code_4671	Natural_person_4671@smartup.test	M	Natural_person_address_4671	\N
18907972	Natural_person_code_7923	Natural_person_7923@smartup.test	M	Natural_person_address_7923	\N
18907987	Natural_person_code_2227	Natural_person_2227@smartup.test	M	Natural_person_address_2227	\N
18907996	Natural_person_code_4074	Natural_person_4074@smartup.test	M	Natural_person_address_4074	\N
18908005	Natural_person_code_6993	Natural_person_6993@smartup.test	M	Natural_person_address_6993	\N
18908012	Natural_person_code_6337	Natural_person_6337@smartup.test	M	Natural_person_address_6337	\N
18908034	Natural_person_code_5110	Natural_person_5110@smartup.test	M	Natural_person_address_5110	\N
18908052	Natural_person_code_7478	Natural_person_7478@smartup.test	M	Natural_person_address_7478	\N
18908066	Natural_person_code_2776	Natural_person_2776@smartup.test	M	Natural_person_address_2776	\N
18908083	Natural_person_code_9752	Natural_person_9752@smartup.test	M	Natural_person_address_9752	\N
18908103	Natural_person_code_6889	Natural_person_6889@smartup.test	M	Natural_person_address_6889	\N
18908123	Natural_person_code_6450	Natural_person_6450@smartup.test	M	Natural_person_address_6450	\N
18908132	Natural_person_code_3548	Natural_person_3548@smartup.test	M	Natural_person_address_3548	\N
18908138	Natural_person_code_5661	Natural_person_5661@smartup.test	M	Natural_person_address_5661	\N
18908165	Natural_person_code_5288	Natural_person_5288@smartup.test	M	Natural_person_address_5288	\N
18908183	Natural_person_code_1425	Natural_person_1425@smartup.test	M	Natural_person_address_1425	\N
18908197	Natural_person_code_9467	Natural_person_9467@smartup.test	M	Natural_person_address_9467	\N
18908211	Natural_person_code_3443	Natural_person_3443@smartup.test	M	Natural_person_address_3443	\N
18908216	Natural_person_code_7571	Natural_person_7571@smartup.test	M	Natural_person_address_7571	\N
18908234	Natural_person_code_4200	Natural_person_4200@smartup.test	M	Natural_person_address_4200	\N
18908245	Natural_person_code_7126	Natural_person_7126@smartup.test	M	Natural_person_address_7126	\N
18908251	Natural_person_code_3001	Natural_person_3001@smartup.test	M	Natural_person_address_3001	\N
18942444	Natural_person_code_7858	Natural_person_7858@smartup.test	M	Natural_person_address_7858	\N
18955071	Natural_person_code_6946	Natural_person_6946@smartup.test	M	Natural_person_address_6946	\N
18956259	\N	\N	M	\N	\N
18959563	Natural_person_code_3722	Natural_person_3722@smartup.test	M	Natural_person_address_3722	\N
18959824	Natural_person_code_3911	Natural_person_3911@smartup.test	M	Natural_person_address_3911	\N
18966590	Natural_person_code_7949	Natural_person_7949@smartup.test	M	Natural_person_address_7949	\N
18966791	Natural_person_code_9426	Natural_person_9426@smartup.test	M	Natural_person_address_9426	\N
18967001	Natural_person_code_6133	Natural_person_6133@smartup.test	M	Natural_person_address_6133	\N
18967256	Natural_person_code_8316	Natural_person_8316@smartup.test	M	Natural_person_address_8316	\N
18969274	Natural_person_code_3187	Natural_person_3187@smartup.test	M	Natural_person_address_3187	\N
18970793	Natural_person_code_5876	Natural_person_5876@smartup.test	M	Natural_person_address_5876	\N
18971426	Natural_person_code_8569	Natural_person_8569@smartup.test	M	Natural_person_address_8569	\N
18977544	Natural_person_code_4811	Natural_person_4811@smartup.test	M	Natural_person_address_4811	\N
18980280	Natural_person_code_4630	Natural_person_4630@smartup.test	M	Natural_person_address_4630	\N
18987801	\N	\N	M	\N	\N
19015849	Natural_person_code_9791	Natural_person_9791@smartup.test	M	Natural_person_address_9791	\N
19016015	Natural_person_code_8728	Natural_person_8728@smartup.test	M	Natural_person_address_8728	\N
19038841	\N	\N	M	\N	\N
19073670	\N	\N	M	\N	\N
19219620	Natural_person_code_2685	Natural_person_2685@smartup.test	M	Natural_person_address_2685	\N
19220569	Natural_person_code_1014	Natural_person_1014@smartup.test	M	Natural_person_address_1014	\N
19228388	\N	\N	M	\N	\N
19228937	Natural_person_code_9873	Natural_person_9873@smartup.test	M	Natural_person_address_9873	\N
19230624	Natural_person_code_5724	Natural_person_5724@smartup.test	M	Natural_person_address_5724	\N
19298785	\N	\N	M	\N	\N
19299174	\N	\N	M	\N	\N
19444274	\N	\N	M	\N	\N
19476211	\N	\N	M	\N	\N
19558958	\N	\N	M	\N	\N
19558970	\N	\N	M	\N	\N
\.


--
-- TOC entry 5027 (class 0 OID 24795)
-- Dependencies: 224
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (deal_id, filial_code, external_id, person_id, total_amount, status) FROM stdin;
245003004	gws_code_lol	\N	8474209	56000	B#N
246013743	gws_code_lol	\N	3305800	2350	D
246013811	gws_code_lol	\N	10442105	56000	B#S
245643424	gws_code_lol	\N	4442753	2350	B#W
245479607	gws_code_lol	\N	6044775	3000	D
248319309	gws_code_lol	\N	8474209	10100	B#N
248559922	gws_code_lol	\N	518879	97.28	B#N
249344522	gws_code_lol	WMS-TEST-MACBOOK-012	99313	10000	D
249522001	gws_code_lol	\N	4200751	1000000	B#E
249904345	gws_code_lol	\N	99313	234	D
248389243	gws_code_lol	\N	99313	15.86	D
245479250	gws_code_lol	\N	99313	17015000.394	D
245004841	gws_code_lol	\N	13309691	30000	B#N
\.


--
-- TOC entry 5023 (class 0 OID 24775)
-- Dependencies: 220
-- Data for Name: product_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_group (product_id, group_id, group_code, type_id, type_code) FROM stdin;
572	112	1011	160	\N
572	113	1012	161	\N
572	114	1013	162	\N
572	30986	\N	358621	\N
7982	113	1012	165	\N
7982	1700	Drinks	17607	A
7982	112	1011	8309	001
7982	30986	\N	358621	\N
7986	110	PRDGR:1	1044	100(2)
7986	30986	\N	358621	\N
7986	1700	Drinks	17607	A
35138	30986	\N	358621	\N
59936	30986	\N	358621	\N
59940	112	1011	33373	33373
59940	30986	\N	358621	\N
205289	112	1011	8309	001
205289	30986	\N	358621	\N
211958	30986	\N	358621	\N
211958	112	1011	11455	\N
211958	113	1012	54963	\N
211958	114	1013	16249	\N
211958	1540	\N	25182	\N
226882	30986	\N	358621	\N
226882	1700	Drinks	17607	A
471233	112	1011	33381	\N
471233	113	1012	12469	\N
471233	3380	\N	39495	\N
471233	114	1013	39442	\N
471233	30986	\N	358621	\N
645058	30986	\N	358621	\N
652737	114	1013	33376	\N
652737	112	1011	33373	33373
652737	30986	\N	358621	\N
652737	113	1012	54963	\N
652737	32326	\N	371263	\N
652738	112	1011	33373	33373
652738	114	1013	33376	\N
652738	30986	\N	358621	\N
652738	11606	\N	99430	\N
652738	6716	\N	67971	\N
652738	32326	\N	371263	\N
652739	1700	Drinks	17607	A
652739	2840	code	46859	\N
652739	3316	\N	38813	\N
652739	1840	\N	18947	\N
652739	1540	\N	25182	\N
652739	113	1012	18131	\N
652739	2800	\N	25308	\N
652739	2750	\N	25179	\N
652739	3380	\N	39495	\N
652739	112	1011	33373	33373
652739	114	1013	33376	\N
652739	30986	\N	358621	\N
652739	32326	\N	371263	\N
652740	112	1011	33373	33373
652740	114	1013	33375	\N
652740	30986	\N	358621	\N
652740	23966	\N	328267	\N
652741	113	1012	47524	\N
652741	112	1011	33373	33373
652741	114	1013	33375	\N
652741	30986	\N	358621	\N
652741	32326	\N	371263	\N
652742	113	1012	18131	\N
652742	112	1011	33373	33373
652742	114	1013	33375	\N
652742	30986	\N	358621	\N
652743	112	1011	33373	33373
652743	114	1013	33374	\N
652743	30986	\N	358621	\N
652743	32326	\N	371264	\N
652744	112	1011	33373	33373
652744	114	1013	33374	\N
652744	30986	\N	358621	\N
652744	32326	\N	371264	\N
652745	112	1011	33373	33373
652745	114	1013	33374	\N
652745	113	1012	18131	\N
652745	30986	\N	358621	\N
652745	32326	\N	371264	\N
652746	112	1011	2062	\N
652746	114	1013	33372	\N
652746	30986	\N	358621	\N
652747	112	1011	2062	\N
652747	114	1013	33372	\N
652747	30986	\N	358621	\N
652748	112	1011	2062	\N
652748	114	1013	33372	\N
652748	30986	\N	358621	\N
652749	112	1011	2062	\N
652749	114	1013	33372	\N
652749	30986	\N	358621	\N
652750	112	1011	2062	\N
652750	114	1013	33372	\N
652750	30986	\N	358621	\N
652751	112	1011	2062	\N
652751	114	1013	33372	\N
652751	30986	\N	358621	\N
690623	112	1011	178	\N
690623	113	1012	173	\N
690623	114	1013	174	\N
690623	6716	\N	99756	\N
690623	30986	\N	358621	\N
754010	112	1011	33373	33373
754010	30986	\N	358621	\N
773958	112	1011	61987	\N
773958	113	1012	61988	\N
773958	30986	\N	358621	\N
863264	112	1011	33381	\N
863264	30986	\N	358621	\N
920874	30986	\N	358621	\N
989498	30986	\N	358621	\N
994045	30986	\N	358621	\N
1128578	30986	\N	358621	\N
1132100	30986	\N	358621	\N
1132102	30986	\N	358621	\N
1132102	112	1011	84181	\N
1132791	112	1011	39524	\N
1132791	30986	\N	358621	\N
1132792	112	1011	39524	\N
1132792	30986	\N	358621	\N
1187343	112	1011	79718	\N
1187343	6716	\N	99756	\N
1224141	30986	\N	358621	\N
1242951	30986	\N	358621	\N
1242959	15006	200011	186819	00-00000001
1252842	30986	\N	358621	\N
1294277	113	1012	91411	\N
1294277	112	1011	91410	\N
1294277	30986	\N	358621	\N
1294278	113	1012	91411	\N
1294278	112	1011	91410	\N
1294278	30986	\N	358621	\N
1294279	113	1012	91411	\N
1294279	112	1011	91410	\N
1294279	30986	\N	358621	\N
1294280	113	1012	91411	\N
1294280	112	1011	91410	\N
1294280	30986	\N	358621	\N
1294281	113	1012	91411	\N
1294281	112	1011	91410	\N
1294281	30986	\N	358621	\N
1294282	113	1012	91411	\N
1294282	112	1011	91410	\N
1294282	30986	\N	358621	\N
1294283	113	1012	91411	\N
1294283	112	1011	91410	\N
1294283	30986	\N	358621	\N
1294284	113	1012	91411	\N
1294284	112	1011	91410	\N
1294284	30986	\N	358621	\N
1294285	113	1012	91411	\N
1294285	112	1011	91410	\N
1294285	30986	\N	358621	\N
1294286	113	1012	91411	\N
1294286	112	1011	91410	\N
1294286	30986	\N	358621	\N
1294287	113	1012	91411	\N
1294287	112	1011	91410	\N
1294287	30986	\N	358621	\N
1294288	113	1012	91411	\N
1294288	112	1011	91410	\N
1294288	30986	\N	358621	\N
1294289	113	1012	91411	\N
1294289	112	1011	91410	\N
1294289	30986	\N	358621	\N
1294290	113	1012	91411	\N
1294290	112	1011	91410	\N
1294290	30986	\N	358621	\N
1294291	113	1012	91411	\N
1294291	112	1011	91410	\N
1294291	30986	\N	358621	\N
1294292	113	1012	91411	\N
1294292	112	1011	91410	\N
1294292	30986	\N	358621	\N
1294293	113	1012	91411	\N
1294293	112	1011	91410	\N
1294293	30986	\N	358621	\N
1294294	113	1012	91411	\N
1294294	112	1011	91410	\N
1294294	30986	\N	358621	\N
1294295	113	1012	91411	\N
1294295	112	1011	91410	\N
1294295	30986	\N	358621	\N
1294296	113	1012	91411	\N
1294296	112	1011	91410	\N
1294296	30986	\N	358621	\N
1294297	113	1012	91411	\N
1294297	112	1011	91410	\N
1294297	30986	\N	358621	\N
1294298	113	1012	91411	\N
1294298	112	1011	91410	\N
1294298	30986	\N	358621	\N
1294299	113	1012	91411	\N
1294299	112	1011	91410	\N
1294299	30986	\N	358621	\N
1294300	113	1012	91411	\N
1294300	112	1011	91410	\N
1294300	30986	\N	358621	\N
1294301	113	1012	91411	\N
1294301	112	1011	91410	\N
1294301	30986	\N	358621	\N
1294302	113	1012	91411	\N
1294302	112	1011	91410	\N
1294302	30986	\N	358621	\N
1294303	113	1012	91411	\N
1294303	112	1011	91410	\N
1294303	30986	\N	358621	\N
1294304	113	1012	91411	\N
1294304	112	1011	91410	\N
1294304	30986	\N	358621	\N
1294305	113	1012	91411	\N
1294305	112	1011	91410	\N
1294305	30986	\N	358621	\N
1294306	113	1012	91411	\N
1294306	112	1011	91410	\N
1294306	30986	\N	358621	\N
1294307	113	1012	91411	\N
1294307	112	1011	91410	\N
1294307	30986	\N	358621	\N
1294308	113	1012	91411	\N
1294308	112	1011	91410	\N
1294308	30986	\N	358621	\N
1294309	113	1012	91411	\N
1294309	112	1011	91410	\N
1294309	30986	\N	358621	\N
1294310	113	1012	91411	\N
1294310	112	1011	91410	\N
1294310	30986	\N	358621	\N
1294311	113	1012	91411	\N
1294311	112	1011	91410	\N
1294311	30986	\N	358621	\N
1294312	113	1012	91411	\N
1294312	112	1011	91410	\N
1294312	30986	\N	358621	\N
1294313	113	1012	91411	\N
1294313	112	1011	91410	\N
1294313	30986	\N	358621	\N
1294314	113	1012	91411	\N
1294314	112	1011	91410	\N
1294314	30986	\N	358621	\N
1294315	113	1012	91411	\N
1294315	112	1011	91410	\N
1294315	30986	\N	358621	\N
1294316	113	1012	91411	\N
1294316	112	1011	91410	\N
1294316	30986	\N	358621	\N
1294317	113	1012	91411	\N
1294317	112	1011	91410	\N
1294317	30986	\N	358621	\N
1294318	113	1012	91411	\N
1294318	112	1011	91410	\N
1294318	30986	\N	358621	\N
1294319	113	1012	91411	\N
1294319	112	1011	91410	\N
1294319	30986	\N	358621	\N
1294320	113	1012	91411	\N
1294320	112	1011	91410	\N
1294320	30986	\N	358621	\N
1294321	113	1012	91411	\N
1294321	112	1011	91410	\N
1294321	30986	\N	358621	\N
1294322	113	1012	91411	\N
1294322	112	1011	91410	\N
1294322	30986	\N	358621	\N
1294323	113	1012	91411	\N
1294323	112	1011	91410	\N
1294323	30986	\N	358621	\N
1294324	113	1012	91411	\N
1294324	112	1011	91410	\N
1294324	30986	\N	358621	\N
1294325	113	1012	91411	\N
1294325	112	1011	91410	\N
1294325	30986	\N	358621	\N
1294326	113	1012	91411	\N
1294326	112	1011	91410	\N
1294326	30986	\N	358621	\N
1294327	113	1012	91411	\N
1294327	112	1011	91410	\N
1294327	30986	\N	358621	\N
1294328	113	1012	91411	\N
1294328	112	1011	91410	\N
1294328	30986	\N	358621	\N
1294329	113	1012	91411	\N
1294329	112	1011	91410	\N
1294329	30986	\N	358621	\N
1294330	113	1012	91411	\N
1294330	112	1011	91410	\N
1294330	30986	\N	358621	\N
1294331	113	1012	91411	\N
1294331	112	1011	91410	\N
1294331	30986	\N	358621	\N
1294332	113	1012	91411	\N
1294332	112	1011	91410	\N
1294332	30986	\N	358621	\N
1294333	113	1012	91411	\N
1294333	112	1011	91410	\N
1294333	30986	\N	358621	\N
1294334	113	1012	91411	\N
1294334	112	1011	91410	\N
1294334	30986	\N	358621	\N
1294335	113	1012	91411	\N
1294335	112	1011	91410	\N
1294335	30986	\N	358621	\N
1294336	113	1012	91411	\N
1294336	112	1011	91410	\N
1294336	30986	\N	358621	\N
1294337	113	1012	91411	\N
1294337	112	1011	91410	\N
1294337	30986	\N	358621	\N
1294338	113	1012	91411	\N
1294338	112	1011	91410	\N
1294338	30986	\N	358621	\N
1294339	113	1012	91411	\N
1294339	112	1011	91410	\N
1294339	30986	\N	358621	\N
1294340	113	1012	91411	\N
1294340	112	1011	91410	\N
1294340	30986	\N	358621	\N
1294341	113	1012	91411	\N
1294341	112	1011	91410	\N
1294341	30986	\N	358621	\N
1294342	113	1012	91411	\N
1294342	112	1011	91410	\N
1294342	30986	\N	358621	\N
1294343	113	1012	91411	\N
1294343	112	1011	91410	\N
1294343	30986	\N	358621	\N
1294344	113	1012	91411	\N
1294344	112	1011	91410	\N
1294344	30986	\N	358621	\N
1294345	113	1012	91411	\N
1294345	112	1011	91410	\N
1294345	30986	\N	358621	\N
1294346	113	1012	91411	\N
1294346	112	1011	91410	\N
1294346	30986	\N	358621	\N
1294347	113	1012	91411	\N
1294347	112	1011	91410	\N
1294347	30986	\N	358621	\N
1294348	113	1012	91411	\N
1294348	112	1011	91410	\N
1294348	30986	\N	358621	\N
1294349	113	1012	91411	\N
1294349	112	1011	91410	\N
1294349	30986	\N	358621	\N
1294350	113	1012	91411	\N
1294350	112	1011	91410	\N
1294350	30986	\N	358621	\N
1294351	113	1012	91411	\N
1294351	112	1011	91410	\N
1294351	30986	\N	358621	\N
1294352	113	1012	91411	\N
1294352	112	1011	91410	\N
1294352	30986	\N	358621	\N
1294353	113	1012	91411	\N
1294353	112	1011	91410	\N
1294353	30986	\N	358621	\N
1294354	113	1012	91411	\N
1294354	112	1011	91410	\N
1294354	30986	\N	358621	\N
1294355	113	1012	91411	\N
1294355	112	1011	91410	\N
1294355	30986	\N	358621	\N
1294356	113	1012	91411	\N
1294356	112	1011	91410	\N
1294356	30986	\N	358621	\N
1294357	113	1012	91411	\N
1294357	112	1011	91410	\N
1294357	30986	\N	358621	\N
1294358	113	1012	91411	\N
1294358	112	1011	91410	\N
1294358	30986	\N	358621	\N
1294359	113	1012	91411	\N
1294359	112	1011	91410	\N
1294359	30986	\N	358621	\N
1294360	113	1012	91411	\N
1294360	112	1011	91410	\N
1294360	30986	\N	358621	\N
1294361	113	1012	91411	\N
1294361	112	1011	91410	\N
1294361	30986	\N	358621	\N
1294362	113	1012	91411	\N
1294362	112	1011	91410	\N
1294362	30986	\N	358621	\N
1294363	113	1012	91411	\N
1294363	112	1011	91410	\N
1294363	30986	\N	358621	\N
1294364	113	1012	91411	\N
1294364	112	1011	91410	\N
1294364	30986	\N	358621	\N
1294365	113	1012	91411	\N
1294365	112	1011	91410	\N
1294365	30986	\N	358621	\N
1294366	113	1012	91411	\N
1294366	112	1011	91410	\N
1294366	30986	\N	358621	\N
1294367	113	1012	91411	\N
1294367	112	1011	91410	\N
1294367	30986	\N	358621	\N
1294368	113	1012	91411	\N
1294368	112	1011	91410	\N
1294368	30986	\N	358621	\N
1294369	113	1012	91411	\N
1294369	112	1011	91410	\N
1294369	30986	\N	358621	\N
1294370	113	1012	91411	\N
1294370	112	1011	91410	\N
1294370	30986	\N	358621	\N
1294371	113	1012	91411	\N
1294371	112	1011	91410	\N
1294371	30986	\N	358621	\N
1294372	113	1012	91411	\N
1294372	112	1011	91410	\N
1294372	30986	\N	358621	\N
1294373	113	1012	91411	\N
1294373	112	1011	91410	\N
1294373	30986	\N	358621	\N
1294374	113	1012	91411	\N
1294374	112	1011	91410	\N
1294374	30986	\N	358621	\N
1294375	113	1012	91411	\N
1294375	112	1011	91410	\N
1294375	30986	\N	358621	\N
1294376	113	1012	91411	\N
1294376	112	1011	91410	\N
1294376	30986	\N	358621	\N
1294377	113	1012	91411	\N
1294377	112	1011	91410	\N
1294377	30986	\N	358621	\N
1294378	113	1012	91411	\N
1294378	112	1011	91410	\N
1294378	30986	\N	358621	\N
1294379	113	1012	91411	\N
1294379	112	1011	91410	\N
1294379	30986	\N	358621	\N
1294380	113	1012	91411	\N
1294380	112	1011	91410	\N
1294380	30986	\N	358621	\N
1294381	113	1012	91411	\N
1294381	112	1011	91410	\N
1294381	30986	\N	358621	\N
1294382	113	1012	91411	\N
1294382	112	1011	91410	\N
1294382	30986	\N	358621	\N
1294383	113	1012	91411	\N
1294383	112	1011	91410	\N
1294383	30986	\N	358621	\N
1294384	113	1012	91411	\N
1294384	112	1011	91410	\N
1294384	30986	\N	358621	\N
1294385	113	1012	91411	\N
1294385	112	1011	91410	\N
1294385	30986	\N	358621	\N
1294386	113	1012	91411	\N
1294386	112	1011	91410	\N
1294386	30986	\N	358621	\N
1294387	113	1012	91411	\N
1294387	112	1011	91410	\N
1294387	30986	\N	358621	\N
1294388	113	1012	91411	\N
1294388	112	1011	91410	\N
1294388	30986	\N	358621	\N
1294389	113	1012	91411	\N
1294389	112	1011	91410	\N
1294389	30986	\N	358621	\N
1294390	113	1012	91411	\N
1294390	112	1011	91410	\N
1294390	30986	\N	358621	\N
1294391	113	1012	91411	\N
1294391	112	1011	91410	\N
1294391	30986	\N	358621	\N
1294392	113	1012	91411	\N
1294392	112	1011	91410	\N
1294392	30986	\N	358621	\N
1294393	113	1012	91411	\N
1294393	112	1011	91410	\N
1294393	30986	\N	358621	\N
1294394	113	1012	91411	\N
1294394	112	1011	91410	\N
1294394	30986	\N	358621	\N
1294395	113	1012	91411	\N
1294395	30986	\N	358621	\N
1294395	112	1011	91410	\N
1294396	113	1012	91411	\N
1294396	30986	\N	358621	\N
1294396	112	1011	91410	\N
1294397	113	1012	91411	\N
1294397	30986	\N	358621	\N
1294397	112	1011	91410	\N
1294398	113	1012	91411	\N
1294398	30986	\N	358621	\N
1294398	112	1011	91410	\N
1294399	113	1012	91411	\N
1294399	30986	\N	358621	\N
1294399	112	1011	91410	\N
1294400	113	1012	91411	\N
1294400	30986	\N	358621	\N
1294400	112	1011	91410	\N
1294401	113	1012	91411	\N
1294401	30986	\N	358621	\N
1294401	112	1011	91410	\N
1294402	113	1012	91411	\N
1294402	30986	\N	358621	\N
1294402	112	1011	91410	\N
1294403	113	1012	91411	\N
1294403	30986	\N	358621	\N
1294403	112	1011	91410	\N
1294404	113	1012	91411	\N
1294404	30986	\N	358621	\N
1294404	112	1011	91410	\N
1294405	113	1012	91411	\N
1294405	30986	\N	358621	\N
1294405	112	1011	91410	\N
1294406	113	1012	91411	\N
1294406	30986	\N	358621	\N
1294406	112	1011	91410	\N
1294407	113	1012	91411	\N
1294407	30986	\N	358621	\N
1294407	112	1011	91410	\N
1294408	113	1012	91411	\N
1294408	30986	\N	358621	\N
1294408	112	1011	91410	\N
1294409	113	1012	91411	\N
1294409	30986	\N	358621	\N
1294409	112	1011	91410	\N
1294410	113	1012	91411	\N
1294410	30986	\N	358621	\N
1294410	112	1011	91410	\N
1294411	113	1012	91411	\N
1294411	30986	\N	358621	\N
1294411	112	1011	91410	\N
1294412	113	1012	91411	\N
1294412	30986	\N	358621	\N
1294412	112	1011	91410	\N
1294413	113	1012	91411	\N
1294413	30986	\N	358621	\N
1294413	112	1011	91410	\N
1294414	113	1012	91411	\N
1294414	30986	\N	358621	\N
1294414	112	1011	91410	\N
1294415	113	1012	91411	\N
1294415	30986	\N	358621	\N
1294415	112	1011	91410	\N
1294416	113	1012	91411	\N
1294416	30986	\N	358621	\N
1294416	112	1011	91410	\N
1294417	113	1012	91411	\N
1294417	30986	\N	358621	\N
1294417	112	1011	91410	\N
1294418	113	1012	91411	\N
1294418	30986	\N	358621	\N
1294418	112	1011	91410	\N
1294419	113	1012	91411	\N
1294419	30986	\N	358621	\N
1294419	112	1011	91410	\N
1294420	113	1012	91411	\N
1294420	30986	\N	358621	\N
1294420	112	1011	91410	\N
1294421	113	1012	91411	\N
1294421	30986	\N	358621	\N
1294421	112	1011	91410	\N
1294422	113	1012	91411	\N
1294422	30986	\N	358621	\N
1294422	112	1011	91410	\N
1294423	113	1012	91411	\N
1294423	30986	\N	358621	\N
1294423	112	1011	91410	\N
1294424	113	1012	91411	\N
1294424	30986	\N	358621	\N
1294424	112	1011	91410	\N
1294425	113	1012	91411	\N
1294425	30986	\N	358621	\N
1294425	112	1011	91410	\N
1294426	113	1012	91411	\N
1294426	30986	\N	358621	\N
1294426	112	1011	91410	\N
1294427	113	1012	91411	\N
1294427	30986	\N	358621	\N
1294427	112	1011	91410	\N
1294428	113	1012	91411	\N
1294428	30986	\N	358621	\N
1294428	112	1011	91410	\N
1294429	113	1012	91411	\N
1294429	30986	\N	358621	\N
1294429	112	1011	91410	\N
1294430	113	1012	91411	\N
1294430	30986	\N	358621	\N
1294430	112	1011	91410	\N
1294431	113	1012	91411	\N
1294431	30986	\N	358621	\N
1294431	112	1011	91410	\N
1294432	113	1012	91411	\N
1294432	30986	\N	358621	\N
1294432	112	1011	91410	\N
1294433	113	1012	91411	\N
1294433	30986	\N	358621	\N
1294433	112	1011	91410	\N
1294434	113	1012	91411	\N
1294434	30986	\N	358621	\N
1294434	112	1011	91410	\N
1294435	113	1012	91411	\N
1294435	30986	\N	358621	\N
1294435	112	1011	91410	\N
1294436	113	1012	91411	\N
1294436	30986	\N	358621	\N
1294436	112	1011	91410	\N
1294437	113	1012	91411	\N
1294437	30986	\N	358621	\N
1294437	112	1011	91410	\N
1294438	113	1012	91411	\N
1294438	30986	\N	358621	\N
1294438	112	1011	91410	\N
1294439	113	1012	91411	\N
1294439	30986	\N	358621	\N
1294439	112	1011	91410	\N
1294440	113	1012	91411	\N
1294440	30986	\N	358621	\N
1294440	112	1011	91410	\N
1294441	113	1012	91411	\N
1294441	30986	\N	358621	\N
1294441	112	1011	91410	\N
1294442	113	1012	91411	\N
1294442	30986	\N	358621	\N
1294442	112	1011	91410	\N
1294443	113	1012	91411	\N
1294443	30986	\N	358621	\N
1294443	112	1011	91410	\N
1294444	113	1012	91411	\N
1294444	30986	\N	358621	\N
1294444	112	1011	91410	\N
1294445	113	1012	91411	\N
1294445	30986	\N	358621	\N
1294445	112	1011	91410	\N
1294446	113	1012	91411	\N
1294446	30986	\N	358621	\N
1294446	112	1011	91410	\N
1294447	113	1012	91411	\N
1294447	30986	\N	358621	\N
1294447	112	1011	91410	\N
1294448	113	1012	91411	\N
1294448	30986	\N	358621	\N
1294448	112	1011	91410	\N
1294449	113	1012	91411	\N
1294449	30986	\N	358621	\N
1294449	112	1011	91410	\N
1294450	113	1012	91411	\N
1294450	30986	\N	358621	\N
1294450	112	1011	91410	\N
1294451	113	1012	91411	\N
1294451	30986	\N	358621	\N
1294451	112	1011	91410	\N
1294452	113	1012	91411	\N
1294452	30986	\N	358621	\N
1294452	112	1011	91410	\N
1294453	113	1012	91411	\N
1294453	30986	\N	358621	\N
1294453	112	1011	91410	\N
1294454	113	1012	91411	\N
1294454	30986	\N	358621	\N
1294454	112	1011	91410	\N
1294455	113	1012	91411	\N
1294455	30986	\N	358621	\N
1294455	112	1011	91410	\N
1294456	113	1012	91411	\N
1294456	30986	\N	358621	\N
1294456	112	1011	91410	\N
1294457	113	1012	91411	\N
1294457	30986	\N	358621	\N
1294457	112	1011	91410	\N
1294458	113	1012	91411	\N
1294458	30986	\N	358621	\N
1294458	112	1011	91410	\N
1294459	113	1012	91411	\N
1294459	30986	\N	358621	\N
1294459	112	1011	91410	\N
1294460	113	1012	91411	\N
1294460	30986	\N	358621	\N
1294460	112	1011	91410	\N
1294461	113	1012	91411	\N
1294461	30986	\N	358621	\N
1294461	112	1011	91410	\N
1294462	113	1012	91411	\N
1294462	30986	\N	358621	\N
1294462	112	1011	91410	\N
1294463	113	1012	91411	\N
1294463	30986	\N	358621	\N
1294463	112	1011	91410	\N
1294464	113	1012	91411	\N
1294464	30986	\N	358621	\N
1294464	112	1011	91410	\N
1294465	113	1012	91411	\N
1294465	30986	\N	358621	\N
1294465	112	1011	91410	\N
1294466	113	1012	91411	\N
1294466	30986	\N	358621	\N
1294466	112	1011	91410	\N
1294467	113	1012	91411	\N
1294467	30986	\N	358621	\N
1294467	112	1011	91410	\N
1294468	113	1012	91411	\N
1294468	30986	\N	358621	\N
1294468	112	1011	91410	\N
1294469	113	1012	91411	\N
1294469	30986	\N	358621	\N
1294469	112	1011	91410	\N
1294470	113	1012	91411	\N
1294470	30986	\N	358621	\N
1294470	112	1011	91410	\N
1294471	113	1012	91411	\N
1294471	30986	\N	358621	\N
1294471	112	1011	91410	\N
1294472	113	1012	91411	\N
1294472	30986	\N	358621	\N
1294472	112	1011	91410	\N
1294473	113	1012	91411	\N
1294473	30986	\N	358621	\N
1294473	112	1011	91410	\N
1294474	113	1012	91411	\N
1294474	30986	\N	358621	\N
1294474	112	1011	91410	\N
1294475	113	1012	91411	\N
1294475	30986	\N	358621	\N
1294475	112	1011	91410	\N
1294476	113	1012	91411	\N
1294476	30986	\N	358621	\N
1294476	112	1011	91410	\N
1294477	113	1012	91411	\N
1294477	30986	\N	358621	\N
1294477	112	1011	91410	\N
1294478	113	1012	91411	\N
1294478	30986	\N	358621	\N
1294478	112	1011	91410	\N
1294479	113	1012	91411	\N
1294479	30986	\N	358621	\N
1294479	112	1011	91410	\N
1294480	113	1012	91411	\N
1294480	30986	\N	358621	\N
1294480	112	1011	91410	\N
1294481	113	1012	91411	\N
1294481	30986	\N	358621	\N
1294481	112	1011	91410	\N
1294482	113	1012	91411	\N
1294482	30986	\N	358621	\N
1294482	112	1011	91410	\N
1294483	113	1012	91411	\N
1294483	30986	\N	358621	\N
1294483	112	1011	91410	\N
1294484	113	1012	91411	\N
1294484	30986	\N	358621	\N
1294484	112	1011	91410	\N
1294485	113	1012	91411	\N
1294485	30986	\N	358621	\N
1294485	112	1011	91410	\N
1294486	113	1012	91411	\N
1294486	30986	\N	358621	\N
1294486	112	1011	91410	\N
1294487	113	1012	91411	\N
1294487	30986	\N	358621	\N
1294487	112	1011	91410	\N
1294488	113	1012	91411	\N
1294488	30986	\N	358621	\N
1294488	112	1011	91410	\N
1294489	113	1012	91411	\N
1294489	30986	\N	358621	\N
1294489	112	1011	91410	\N
1294490	113	1012	91411	\N
1294490	30986	\N	358621	\N
1294490	112	1011	91410	\N
1294491	113	1012	91411	\N
1294491	30986	\N	358621	\N
1294491	112	1011	91410	\N
1294492	113	1012	91411	\N
1294492	30986	\N	358621	\N
1294492	112	1011	91410	\N
1294493	113	1012	91411	\N
1294493	30986	\N	358621	\N
1294493	112	1011	91410	\N
1294494	113	1012	91411	\N
1294494	30986	\N	358621	\N
1294494	112	1011	91410	\N
1294495	113	1012	91411	\N
1294495	30986	\N	358621	\N
1294495	112	1011	91410	\N
1294496	113	1012	91411	\N
1294496	30986	\N	358621	\N
1294496	112	1011	91410	\N
1294497	113	1012	91411	\N
1294497	30986	\N	358621	\N
1294497	112	1011	91410	\N
1294498	113	1012	91411	\N
1294498	30986	\N	358621	\N
1294498	112	1011	91410	\N
1294499	113	1012	91411	\N
1294499	30986	\N	358621	\N
1294499	112	1011	91410	\N
1294500	113	1012	91411	\N
1294500	30986	\N	358621	\N
1294500	112	1011	91410	\N
1294501	113	1012	91411	\N
1294501	30986	\N	358621	\N
1294501	112	1011	91410	\N
1294502	113	1012	91411	\N
1294502	30986	\N	358621	\N
1294502	112	1011	91410	\N
1294503	113	1012	91411	\N
1294503	30986	\N	358621	\N
1294503	112	1011	91410	\N
1294504	113	1012	91411	\N
1294504	30986	\N	358621	\N
1294504	112	1011	91410	\N
1294505	113	1012	91411	\N
1294505	30986	\N	358621	\N
1294505	112	1011	91410	\N
1294506	113	1012	91411	\N
1294506	30986	\N	358621	\N
1294506	112	1011	91410	\N
1294507	113	1012	91411	\N
1294507	30986	\N	358621	\N
1294507	112	1011	91410	\N
1294508	113	1012	91411	\N
1294508	30986	\N	358621	\N
1294508	112	1011	91410	\N
1294509	113	1012	91411	\N
1294509	30986	\N	358621	\N
1294509	112	1011	91410	\N
1294510	113	1012	91411	\N
1294510	30986	\N	358621	\N
1294510	112	1011	91410	\N
1294511	113	1012	91411	\N
1294511	30986	\N	358621	\N
1294511	112	1011	91410	\N
1294512	113	1012	91411	\N
1294512	30986	\N	358621	\N
1294512	112	1011	91410	\N
1294513	113	1012	91411	\N
1294513	30986	\N	358621	\N
1294513	112	1011	91410	\N
1294514	113	1012	91411	\N
1294514	30986	\N	358621	\N
1294514	112	1011	91410	\N
1294515	113	1012	91411	\N
1294515	30986	\N	358621	\N
1294515	112	1011	91410	\N
1294516	113	1012	91411	\N
1294516	30986	\N	358621	\N
1294516	112	1011	91410	\N
1294517	113	1012	91411	\N
1294517	30986	\N	358621	\N
1294517	112	1011	91410	\N
1294518	113	1012	91411	\N
1294518	30986	\N	358621	\N
1294518	112	1011	91410	\N
1294519	113	1012	91411	\N
1294519	30986	\N	358621	\N
1294519	112	1011	91410	\N
1294520	113	1012	91411	\N
1294520	30986	\N	358621	\N
1294520	112	1011	91410	\N
1294521	113	1012	91411	\N
1294521	30986	\N	358621	\N
1294521	112	1011	91410	\N
1294522	113	1012	91411	\N
1294522	30986	\N	358621	\N
1294522	112	1011	91410	\N
1294523	113	1012	91411	\N
1294523	30986	\N	358621	\N
1294523	112	1011	91410	\N
1294524	113	1012	91411	\N
1294524	30986	\N	358621	\N
1294524	112	1011	91410	\N
1294525	113	1012	91411	\N
1294525	30986	\N	358621	\N
1294525	112	1011	91410	\N
1294526	113	1012	91411	\N
1294526	30986	\N	358621	\N
1294526	112	1011	91410	\N
1294527	113	1012	91411	\N
1294527	30986	\N	358621	\N
1294527	112	1011	91410	\N
1294528	113	1012	91411	\N
1294528	30986	\N	358621	\N
1294528	112	1011	91410	\N
1294529	113	1012	91411	\N
1294529	30986	\N	358621	\N
1294529	112	1011	91410	\N
1294530	113	1012	91411	\N
1294530	30986	\N	358621	\N
1294530	112	1011	91410	\N
1294531	113	1012	91411	\N
1294531	30986	\N	358621	\N
1294531	112	1011	91410	\N
1294532	113	1012	91411	\N
1294532	30986	\N	358621	\N
1294532	112	1011	91410	\N
1294533	113	1012	91411	\N
1294533	30986	\N	358621	\N
1294533	112	1011	91410	\N
1294534	113	1012	91411	\N
1294534	30986	\N	358621	\N
1294534	112	1011	91410	\N
1294535	113	1012	91411	\N
1294535	30986	\N	358621	\N
1294535	112	1011	91410	\N
1294536	113	1012	91411	\N
1294536	30986	\N	358621	\N
1294536	112	1011	91410	\N
1294537	113	1012	91411	\N
1294537	30986	\N	358621	\N
1294537	112	1011	91410	\N
1294538	113	1012	91411	\N
1294538	30986	\N	358621	\N
1294538	112	1011	91410	\N
1294539	113	1012	91411	\N
1294539	30986	\N	358621	\N
1294539	112	1011	91410	\N
1294540	113	1012	91411	\N
1294540	30986	\N	358621	\N
1294540	112	1011	91410	\N
1294541	113	1012	91411	\N
1294541	30986	\N	358621	\N
1294541	112	1011	91410	\N
1294542	113	1012	91411	\N
1294542	30986	\N	358621	\N
1294542	112	1011	91410	\N
1294543	113	1012	91411	\N
1294543	30986	\N	358621	\N
1294543	112	1011	91410	\N
1294544	113	1012	91411	\N
1294544	30986	\N	358621	\N
1294544	112	1011	91410	\N
1294545	113	1012	91411	\N
1294545	30986	\N	358621	\N
1294545	112	1011	91410	\N
1294546	113	1012	91411	\N
1294546	30986	\N	358621	\N
1294546	112	1011	91410	\N
1294547	113	1012	91411	\N
1294547	30986	\N	358621	\N
1294547	112	1011	91410	\N
1294548	113	1012	91411	\N
1294548	30986	\N	358621	\N
1294548	112	1011	91410	\N
1294549	113	1012	91411	\N
1294549	30986	\N	358621	\N
1294549	112	1011	91410	\N
1294550	113	1012	91411	\N
1294550	30986	\N	358621	\N
1294550	112	1011	91410	\N
1294551	113	1012	91411	\N
1294551	30986	\N	358621	\N
1294551	112	1011	91410	\N
1294552	113	1012	91411	\N
1294552	30986	\N	358621	\N
1294552	112	1011	91410	\N
1294553	113	1012	91411	\N
1294553	30986	\N	358621	\N
1294553	112	1011	91410	\N
1294554	113	1012	91411	\N
1294554	30986	\N	358621	\N
1294554	112	1011	91410	\N
1294555	113	1012	91411	\N
1294555	30986	\N	358621	\N
1294555	112	1011	91410	\N
1294556	113	1012	91411	\N
1294556	30986	\N	358621	\N
1294556	112	1011	91410	\N
1294557	113	1012	91411	\N
1294557	30986	\N	358621	\N
1294557	112	1011	91410	\N
1294558	113	1012	91411	\N
1294558	30986	\N	358621	\N
1294558	112	1011	91410	\N
1294559	113	1012	91411	\N
1294559	30986	\N	358621	\N
1294559	112	1011	91410	\N
1294560	113	1012	91411	\N
1294560	30986	\N	358621	\N
1294560	112	1011	91410	\N
1294561	113	1012	91411	\N
1294561	30986	\N	358621	\N
1294561	112	1011	91410	\N
1294562	113	1012	91411	\N
1294562	30986	\N	358621	\N
1294562	112	1011	91410	\N
1294563	113	1012	91411	\N
1294563	30986	\N	358621	\N
1294563	112	1011	91410	\N
1294564	113	1012	91411	\N
1294564	30986	\N	358621	\N
1294564	112	1011	91410	\N
1294565	113	1012	91411	\N
1294565	30986	\N	358621	\N
1294565	112	1011	91410	\N
1294566	113	1012	91411	\N
1294566	30986	\N	358621	\N
1294566	112	1011	91410	\N
1294567	113	1012	91411	\N
1294567	30986	\N	358621	\N
1294567	112	1011	91410	\N
1294568	113	1012	91411	\N
1294568	30986	\N	358621	\N
1294568	112	1011	91410	\N
1294569	113	1012	91411	\N
1294569	30986	\N	358621	\N
1294569	112	1011	91410	\N
1294570	113	1012	91411	\N
1294570	30986	\N	358621	\N
1294570	112	1011	91410	\N
1294571	113	1012	91411	\N
1294571	30986	\N	358621	\N
1294571	112	1011	91410	\N
1294572	113	1012	91411	\N
1294572	30986	\N	358621	\N
1294572	112	1011	91410	\N
1294573	113	1012	91411	\N
1294573	30986	\N	358621	\N
1294573	112	1011	91410	\N
1294574	113	1012	91411	\N
1294574	30986	\N	358621	\N
1294574	112	1011	91410	\N
1294575	113	1012	91411	\N
1294575	30986	\N	358621	\N
1294575	112	1011	91410	\N
1294576	113	1012	91411	\N
1294576	30986	\N	358621	\N
1294576	112	1011	91410	\N
1294577	113	1012	91411	\N
1294577	30986	\N	358621	\N
1294577	112	1011	91410	\N
1294578	113	1012	91411	\N
1294578	30986	\N	358621	\N
1294578	112	1011	91410	\N
1294579	113	1012	91411	\N
1294579	30986	\N	358621	\N
1294579	112	1011	91410	\N
1294580	113	1012	91411	\N
1294580	30986	\N	358621	\N
1294580	112	1011	91410	\N
1294581	113	1012	91411	\N
1294581	30986	\N	358621	\N
1294581	112	1011	91410	\N
1294582	113	1012	91411	\N
1294582	30986	\N	358621	\N
1294582	112	1011	91410	\N
1294583	113	1012	91411	\N
1294583	30986	\N	358621	\N
1294583	112	1011	91410	\N
1294584	113	1012	91411	\N
1294584	30986	\N	358621	\N
1294584	112	1011	91410	\N
1294585	113	1012	91411	\N
1294585	30986	\N	358621	\N
1294585	112	1011	91410	\N
1294586	113	1012	91411	\N
1294586	30986	\N	358621	\N
1294586	112	1011	91410	\N
1294587	113	1012	91411	\N
1294587	30986	\N	358621	\N
1294587	112	1011	91410	\N
1294588	113	1012	91411	\N
1294588	30986	\N	358621	\N
1294588	112	1011	91410	\N
1294589	113	1012	91411	\N
1294589	30986	\N	358621	\N
1294589	112	1011	91410	\N
1294590	113	1012	91411	\N
1294590	30986	\N	358621	\N
1294590	112	1011	91410	\N
1294591	113	1012	91411	\N
1294591	30986	\N	358621	\N
1294591	112	1011	91410	\N
1294592	113	1012	91411	\N
1294592	30986	\N	358621	\N
1294592	112	1011	91410	\N
1294593	113	1012	91411	\N
1294593	30986	\N	358621	\N
1294593	112	1011	91410	\N
1294594	113	1012	91411	\N
1294594	30986	\N	358621	\N
1294594	112	1011	91410	\N
1294595	113	1012	91411	\N
1294595	30986	\N	358621	\N
1294595	112	1011	91410	\N
1294596	113	1012	91411	\N
1294596	30986	\N	358621	\N
1294596	112	1011	91410	\N
1294597	113	1012	91411	\N
1294597	30986	\N	358621	\N
1294597	112	1011	91410	\N
1294598	113	1012	91411	\N
1294598	30986	\N	358621	\N
1294598	112	1011	91410	\N
1294599	113	1012	91411	\N
1294599	30986	\N	358621	\N
1294599	112	1011	91410	\N
1294600	113	1012	91411	\N
1294600	30986	\N	358621	\N
1294600	112	1011	91410	\N
1294601	113	1012	91411	\N
1294601	30986	\N	358621	\N
1294601	112	1011	91410	\N
1294602	113	1012	91411	\N
1294602	30986	\N	358621	\N
1294602	112	1011	91410	\N
1294603	113	1012	91411	\N
1294603	30986	\N	358621	\N
1294603	112	1011	91410	\N
1294604	113	1012	91411	\N
1294604	30986	\N	358621	\N
1294604	112	1011	91410	\N
1294605	113	1012	91411	\N
1294605	30986	\N	358621	\N
1294605	112	1011	91410	\N
1294606	113	1012	91411	\N
1294606	30986	\N	358621	\N
1294606	112	1011	91410	\N
1294607	113	1012	91411	\N
1294607	30986	\N	358621	\N
1294607	112	1011	91410	\N
1294608	113	1012	91411	\N
1294608	30986	\N	358621	\N
1294608	112	1011	91410	\N
1294609	113	1012	91411	\N
1294609	30986	\N	358621	\N
1294609	112	1011	91410	\N
1294610	113	1012	91411	\N
1294610	30986	\N	358621	\N
1294610	112	1011	91410	\N
1294611	113	1012	91411	\N
1294611	30986	\N	358621	\N
1294611	112	1011	91410	\N
1294612	113	1012	91411	\N
1294612	30986	\N	358621	\N
1294612	112	1011	91410	\N
1294613	113	1012	91411	\N
1294613	30986	\N	358621	\N
1294613	112	1011	91410	\N
1294614	113	1012	91411	\N
1294614	30986	\N	358621	\N
1294614	112	1011	91410	\N
1294615	113	1012	91411	\N
1294615	30986	\N	358621	\N
1294615	112	1011	91410	\N
1294616	113	1012	91411	\N
1294616	30986	\N	358621	\N
1294616	112	1011	91410	\N
1294617	113	1012	91411	\N
1294617	30986	\N	358621	\N
1294617	112	1011	91410	\N
1294618	113	1012	91411	\N
1294618	30986	\N	358621	\N
1294618	112	1011	91410	\N
1294619	113	1012	91411	\N
1294619	30986	\N	358621	\N
1294619	112	1011	91410	\N
1294620	113	1012	91411	\N
1294620	30986	\N	358621	\N
1294620	112	1011	91410	\N
1294621	113	1012	91411	\N
1294621	30986	\N	358621	\N
1294621	112	1011	91410	\N
1294622	113	1012	91411	\N
1294622	30986	\N	358621	\N
1294622	112	1011	91410	\N
1294623	113	1012	91411	\N
1294623	30986	\N	358621	\N
1294623	112	1011	91410	\N
1294624	113	1012	91411	\N
1294624	30986	\N	358621	\N
1294624	112	1011	91410	\N
1294625	113	1012	91411	\N
1294625	30986	\N	358621	\N
1294625	112	1011	91410	\N
1294626	113	1012	91411	\N
1294626	30986	\N	358621	\N
1294626	112	1011	91410	\N
1294627	113	1012	91411	\N
1294627	30986	\N	358621	\N
1294627	112	1011	91410	\N
1294628	113	1012	91411	\N
1294628	30986	\N	358621	\N
1294628	112	1011	91410	\N
1294629	113	1012	91411	\N
1294629	30986	\N	358621	\N
1294629	112	1011	91410	\N
1294630	113	1012	91411	\N
1294630	30986	\N	358621	\N
1294630	112	1011	91410	\N
1294631	113	1012	91411	\N
1294631	30986	\N	358621	\N
1294631	112	1011	91410	\N
1294632	113	1012	91411	\N
1294632	30986	\N	358621	\N
1294632	112	1011	91410	\N
1294633	113	1012	91411	\N
1294633	30986	\N	358621	\N
1294633	112	1011	91410	\N
1294634	113	1012	91411	\N
1294634	30986	\N	358621	\N
1294634	112	1011	91410	\N
1294635	113	1012	91411	\N
1294635	30986	\N	358621	\N
1294635	112	1011	91410	\N
1294636	113	1012	91411	\N
1294636	30986	\N	358621	\N
1294636	112	1011	91410	\N
1294637	113	1012	91411	\N
1294637	30986	\N	358621	\N
1294637	112	1011	91410	\N
1294638	113	1012	91411	\N
1294638	30986	\N	358621	\N
1294638	112	1011	91410	\N
1294639	113	1012	91411	\N
1294639	30986	\N	358621	\N
1294639	112	1011	91410	\N
1294640	113	1012	91411	\N
1294640	30986	\N	358621	\N
1294640	112	1011	91410	\N
1294641	113	1012	91411	\N
1294641	30986	\N	358621	\N
1294641	112	1011	91410	\N
1294642	113	1012	91411	\N
1294642	30986	\N	358621	\N
1294642	112	1011	91410	\N
1294643	113	1012	91411	\N
1294643	30986	\N	358621	\N
1294643	112	1011	91410	\N
1294644	113	1012	91411	\N
1294644	30986	\N	358621	\N
1294644	112	1011	91410	\N
1294645	113	1012	91411	\N
1294645	30986	\N	358621	\N
1294645	112	1011	91410	\N
1294646	113	1012	91411	\N
1294646	30986	\N	358621	\N
1294646	112	1011	91410	\N
1294647	113	1012	91411	\N
1294647	30986	\N	358621	\N
1294647	112	1011	91410	\N
1294648	113	1012	91411	\N
1294648	30986	\N	358621	\N
1294648	112	1011	91410	\N
1294649	113	1012	91411	\N
1294649	30986	\N	358621	\N
1294649	112	1011	91410	\N
1294650	113	1012	91411	\N
1294650	30986	\N	358621	\N
1294650	112	1011	91410	\N
1294651	113	1012	91411	\N
1294651	30986	\N	358621	\N
1294651	112	1011	91410	\N
1294652	113	1012	91411	\N
1294652	30986	\N	358621	\N
1294652	112	1011	91410	\N
1294653	113	1012	91411	\N
1294653	30986	\N	358621	\N
1294653	112	1011	91410	\N
1294654	113	1012	91411	\N
1294654	30986	\N	358621	\N
1294654	112	1011	91410	\N
1294655	113	1012	91411	\N
1294655	30986	\N	358621	\N
1294655	112	1011	91410	\N
1294656	113	1012	91411	\N
1294656	30986	\N	358621	\N
1294656	112	1011	91410	\N
1294657	113	1012	91411	\N
1294657	30986	\N	358621	\N
1294657	112	1011	91410	\N
1294658	113	1012	91411	\N
1294658	30986	\N	358621	\N
1294658	112	1011	91410	\N
1294659	113	1012	91411	\N
1294659	30986	\N	358621	\N
1294659	112	1011	91410	\N
1294660	113	1012	91411	\N
1294660	30986	\N	358621	\N
1294660	112	1011	91410	\N
1294661	113	1012	91411	\N
1294661	30986	\N	358621	\N
1294661	112	1011	91410	\N
1294662	113	1012	91411	\N
1294662	30986	\N	358621	\N
1294662	112	1011	91410	\N
1294663	113	1012	91411	\N
1294663	30986	\N	358621	\N
1294663	112	1011	91410	\N
1294664	113	1012	91411	\N
1294664	30986	\N	358621	\N
1294664	112	1011	91410	\N
1294665	113	1012	91411	\N
1294665	30986	\N	358621	\N
1294665	112	1011	91410	\N
1294666	113	1012	91411	\N
1294666	30986	\N	358621	\N
1294666	112	1011	91410	\N
1294667	113	1012	91411	\N
1294667	30986	\N	358621	\N
1294667	112	1011	91410	\N
1294668	113	1012	91411	\N
1294668	30986	\N	358621	\N
1294668	112	1011	91410	\N
1294669	113	1012	91411	\N
1294669	30986	\N	358621	\N
1294669	112	1011	91410	\N
1294670	113	1012	91411	\N
1294670	30986	\N	358621	\N
1294670	112	1011	91410	\N
1294671	113	1012	91411	\N
1294671	30986	\N	358621	\N
1294671	112	1011	91410	\N
1294672	113	1012	91411	\N
1294672	30986	\N	358621	\N
1294672	112	1011	91410	\N
1294673	113	1012	91411	\N
1294673	30986	\N	358621	\N
1294673	112	1011	91410	\N
1294674	113	1012	91411	\N
1294674	30986	\N	358621	\N
1294674	112	1011	91410	\N
1294675	113	1012	91411	\N
1294675	30986	\N	358621	\N
1294675	112	1011	91410	\N
1294676	113	1012	91411	\N
1294676	30986	\N	358621	\N
1294676	112	1011	91410	\N
1294677	113	1012	91411	\N
1294677	30986	\N	358621	\N
1294677	112	1011	91410	\N
1294678	113	1012	91411	\N
1294678	30986	\N	358621	\N
1294678	112	1011	91410	\N
1294679	113	1012	91411	\N
1294679	30986	\N	358621	\N
1294679	112	1011	91410	\N
1294680	113	1012	91411	\N
1294680	30986	\N	358621	\N
1294680	112	1011	91410	\N
1294681	113	1012	91411	\N
1294681	30986	\N	358621	\N
1294681	112	1011	91410	\N
1294682	113	1012	91411	\N
1294682	30986	\N	358621	\N
1294682	112	1011	91410	\N
1294683	113	1012	91411	\N
1294683	30986	\N	358621	\N
1294683	112	1011	91410	\N
1294684	113	1012	91411	\N
1294684	30986	\N	358621	\N
1294684	112	1011	91410	\N
1294685	113	1012	91411	\N
1294685	30986	\N	358621	\N
1294685	112	1011	91410	\N
1294686	113	1012	91411	\N
1294686	30986	\N	358621	\N
1294686	112	1011	91410	\N
1294687	113	1012	91411	\N
1294687	30986	\N	358621	\N
1294687	112	1011	91410	\N
1294688	113	1012	91411	\N
1294688	30986	\N	358621	\N
1294688	112	1011	91410	\N
1294689	113	1012	91411	\N
1294689	30986	\N	358621	\N
1294689	112	1011	91410	\N
1294690	113	1012	91411	\N
1294690	30986	\N	358621	\N
1294690	112	1011	91410	\N
1294691	113	1012	91411	\N
1294691	30986	\N	358621	\N
1294691	112	1011	91410	\N
1294692	113	1012	91411	\N
1294692	30986	\N	358621	\N
1294692	112	1011	91410	\N
1294693	113	1012	91411	\N
1294693	30986	\N	358621	\N
1294693	112	1011	91410	\N
1294694	113	1012	91411	\N
1294694	30986	\N	358621	\N
1294694	112	1011	91410	\N
1294695	113	1012	91411	\N
1294695	30986	\N	358621	\N
1294695	112	1011	91410	\N
1294696	113	1012	91411	\N
1294696	30986	\N	358621	\N
1294696	112	1011	91410	\N
1294697	113	1012	91411	\N
1294697	30986	\N	358621	\N
1294697	112	1011	91410	\N
1294698	113	1012	91411	\N
1294698	30986	\N	358621	\N
1294698	112	1011	91410	\N
1294699	113	1012	91411	\N
1294699	30986	\N	358621	\N
1294699	112	1011	91410	\N
1294700	113	1012	91411	\N
1294700	30986	\N	358621	\N
1294700	112	1011	91410	\N
1294701	113	1012	91411	\N
1294701	30986	\N	358621	\N
1294701	112	1011	91410	\N
1294702	113	1012	91411	\N
1294702	30986	\N	358621	\N
1294702	112	1011	91410	\N
1294703	113	1012	91411	\N
1294703	30986	\N	358621	\N
1294703	112	1011	91410	\N
1294704	113	1012	91411	\N
1294704	30986	\N	358621	\N
1294704	112	1011	91410	\N
1294705	113	1012	91411	\N
1294705	30986	\N	358621	\N
1294705	112	1011	91410	\N
1294706	113	1012	91411	\N
1294706	30986	\N	358621	\N
1294706	112	1011	91410	\N
1294707	113	1012	91411	\N
1294707	30986	\N	358621	\N
1294707	112	1011	91410	\N
1294708	113	1012	91411	\N
1294708	30986	\N	358621	\N
1294708	112	1011	91410	\N
1294709	113	1012	91411	\N
1294709	30986	\N	358621	\N
1294709	112	1011	91410	\N
1294710	113	1012	91411	\N
1294710	30986	\N	358621	\N
1294710	112	1011	91410	\N
1294711	113	1012	91411	\N
1294711	30986	\N	358621	\N
1294711	112	1011	91410	\N
1294712	113	1012	91411	\N
1294712	30986	\N	358621	\N
1294712	112	1011	91410	\N
1294713	113	1012	91411	\N
1294713	30986	\N	358621	\N
1294713	112	1011	91410	\N
1294714	113	1012	91411	\N
1294714	30986	\N	358621	\N
1294714	112	1011	91410	\N
1294715	113	1012	91411	\N
1294715	30986	\N	358621	\N
1294715	112	1011	91410	\N
1294716	113	1012	91411	\N
1294716	30986	\N	358621	\N
1294716	112	1011	91410	\N
1294717	113	1012	91411	\N
1294717	30986	\N	358621	\N
1294717	112	1011	91410	\N
1294718	113	1012	91411	\N
1294718	30986	\N	358621	\N
1294718	112	1011	91410	\N
1294719	113	1012	91411	\N
1294719	30986	\N	358621	\N
1294719	112	1011	91410	\N
1294720	113	1012	91411	\N
1294720	30986	\N	358621	\N
1294720	112	1011	91410	\N
1294721	113	1012	91411	\N
1294721	30986	\N	358621	\N
1294721	112	1011	91410	\N
1294722	113	1012	91411	\N
1294722	30986	\N	358621	\N
1294722	112	1011	91410	\N
1294723	113	1012	91411	\N
1294723	30986	\N	358621	\N
1294723	112	1011	91410	\N
1294724	113	1012	91411	\N
1294724	30986	\N	358621	\N
1294724	112	1011	91410	\N
1294725	113	1012	91411	\N
1294725	30986	\N	358621	\N
1294725	112	1011	91410	\N
1294726	113	1012	91411	\N
1294726	30986	\N	358621	\N
1294726	112	1011	91410	\N
1294727	113	1012	91411	\N
1294727	30986	\N	358621	\N
1294727	112	1011	91410	\N
1294728	113	1012	91411	\N
1294728	30986	\N	358621	\N
1294728	112	1011	91410	\N
1294729	113	1012	91411	\N
1294729	112	1011	91410	\N
1294729	30986	\N	358621	\N
1294730	113	1012	91411	\N
1294730	112	1011	91410	\N
1294730	30986	\N	358621	\N
1294731	113	1012	91411	\N
1294731	112	1011	91410	\N
1294731	30986	\N	358621	\N
1294732	113	1012	91411	\N
1294732	112	1011	91410	\N
1294732	30986	\N	358621	\N
1294733	113	1012	91411	\N
1294733	112	1011	91410	\N
1294733	30986	\N	358621	\N
1294734	113	1012	91411	\N
1294734	112	1011	91410	\N
1294734	30986	\N	358621	\N
1294735	113	1012	91411	\N
1294735	112	1011	91410	\N
1294735	30986	\N	358621	\N
1294736	113	1012	91411	\N
1294736	112	1011	91410	\N
1294736	30986	\N	358621	\N
1294737	113	1012	91411	\N
1294737	112	1011	91410	\N
1294737	30986	\N	358621	\N
1294738	113	1012	91411	\N
1294738	112	1011	91410	\N
1294738	30986	\N	358621	\N
1294739	113	1012	91411	\N
1294739	112	1011	91410	\N
1294739	30986	\N	358621	\N
1294740	113	1012	91411	\N
1294740	112	1011	91410	\N
1294740	30986	\N	358621	\N
1294741	113	1012	91411	\N
1294741	112	1011	91410	\N
1294741	30986	\N	358621	\N
1294742	113	1012	91411	\N
1294742	112	1011	91410	\N
1294742	30986	\N	358621	\N
1294743	113	1012	91411	\N
1294743	112	1011	91410	\N
1294743	30986	\N	358621	\N
1294744	113	1012	91411	\N
1294744	112	1011	91410	\N
1294744	30986	\N	358621	\N
1294745	113	1012	91411	\N
1294745	112	1011	91410	\N
1294745	30986	\N	358621	\N
1294746	113	1012	91411	\N
1294746	112	1011	91410	\N
1294746	30986	\N	358621	\N
1294747	113	1012	91411	\N
1294747	112	1011	91410	\N
1294747	30986	\N	358621	\N
1294748	113	1012	91411	\N
1294748	112	1011	91410	\N
1294748	30986	\N	358621	\N
1294749	113	1012	91411	\N
1294749	112	1011	91410	\N
1294749	30986	\N	358621	\N
1294750	113	1012	91411	\N
1294750	112	1011	91410	\N
1294750	30986	\N	358621	\N
1294751	113	1012	91411	\N
1294751	112	1011	91410	\N
1294751	30986	\N	358621	\N
1294752	113	1012	91411	\N
1294752	112	1011	91410	\N
1294752	30986	\N	358621	\N
1294753	113	1012	91411	\N
1294753	112	1011	91410	\N
1294753	30986	\N	358621	\N
1294754	113	1012	91411	\N
1294754	112	1011	91410	\N
1294754	30986	\N	358621	\N
1294755	113	1012	91411	\N
1294755	112	1011	91410	\N
1294755	30986	\N	358621	\N
1294756	113	1012	91411	\N
1294756	112	1011	91410	\N
1294756	30986	\N	358621	\N
1294757	113	1012	91411	\N
1294757	112	1011	91410	\N
1294757	30986	\N	358621	\N
1294758	113	1012	91411	\N
1294758	112	1011	91410	\N
1294758	30986	\N	358621	\N
1294759	113	1012	91411	\N
1294759	112	1011	91410	\N
1294759	30986	\N	358621	\N
1294760	113	1012	91411	\N
1294760	112	1011	91410	\N
1294760	30986	\N	358621	\N
1294761	113	1012	91411	\N
1294761	112	1011	91410	\N
1294761	30986	\N	358621	\N
1294762	113	1012	91411	\N
1294762	112	1011	91410	\N
1294762	30986	\N	358621	\N
1294763	113	1012	91411	\N
1294763	112	1011	91410	\N
1294763	30986	\N	358621	\N
1294764	113	1012	91411	\N
1294764	112	1011	91410	\N
1294764	30986	\N	358621	\N
1294765	113	1012	91411	\N
1294765	112	1011	91410	\N
1294765	30986	\N	358621	\N
1294766	113	1012	91411	\N
1294766	112	1011	91410	\N
1294766	30986	\N	358621	\N
1294767	113	1012	91411	\N
1294767	112	1011	91410	\N
1294767	30986	\N	358621	\N
1294768	113	1012	91411	\N
1294768	112	1011	91410	\N
1294768	30986	\N	358621	\N
1294769	113	1012	91411	\N
1294769	112	1011	91410	\N
1294769	30986	\N	358621	\N
1294770	113	1012	91411	\N
1294770	112	1011	91410	\N
1294770	30986	\N	358621	\N
1294771	113	1012	91411	\N
1294771	112	1011	91410	\N
1294771	30986	\N	358621	\N
1294772	113	1012	91411	\N
1294772	112	1011	91410	\N
1294772	30986	\N	358621	\N
1294773	113	1012	91411	\N
1294773	112	1011	91410	\N
1294773	30986	\N	358621	\N
1294774	113	1012	91411	\N
1294774	112	1011	91410	\N
1294774	30986	\N	358621	\N
1294775	113	1012	91411	\N
1294775	112	1011	91410	\N
1294775	30986	\N	358621	\N
1294776	113	1012	91411	\N
1294776	112	1011	91410	\N
1294776	30986	\N	358621	\N
1294777	113	1012	91411	\N
1294777	112	1011	91410	\N
1294777	30986	\N	358621	\N
1294778	113	1012	91411	\N
1294778	112	1011	91410	\N
1294778	30986	\N	358621	\N
1294779	113	1012	91411	\N
1294779	112	1011	91410	\N
1294779	30986	\N	358621	\N
1294780	113	1012	91411	\N
1294780	112	1011	91410	\N
1294780	30986	\N	358621	\N
1294781	113	1012	91411	\N
1294781	112	1011	91410	\N
1294781	30986	\N	358621	\N
1294782	113	1012	91411	\N
1294782	112	1011	91410	\N
1294782	30986	\N	358621	\N
1294783	113	1012	91411	\N
1294783	112	1011	91410	\N
1294783	30986	\N	358621	\N
1294784	113	1012	91411	\N
1294784	112	1011	91410	\N
1294784	30986	\N	358621	\N
1294785	113	1012	91411	\N
1294785	112	1011	91410	\N
1294785	30986	\N	358621	\N
1294786	113	1012	91411	\N
1294786	112	1011	91410	\N
1294786	30986	\N	358621	\N
1294787	113	1012	91411	\N
1294787	112	1011	91410	\N
1294787	30986	\N	358621	\N
1294788	113	1012	91411	\N
1294788	112	1011	91410	\N
1294788	30986	\N	358621	\N
1294789	113	1012	91411	\N
1294789	112	1011	91410	\N
1294789	30986	\N	358621	\N
1294790	113	1012	91411	\N
1294790	112	1011	91410	\N
1294790	30986	\N	358621	\N
1294791	113	1012	91411	\N
1294791	112	1011	91410	\N
1294791	30986	\N	358621	\N
1294792	113	1012	91411	\N
1294792	112	1011	91410	\N
1294792	30986	\N	358621	\N
1294793	113	1012	91411	\N
1294793	112	1011	91410	\N
1294793	30986	\N	358621	\N
1294794	113	1012	91411	\N
1294794	112	1011	91410	\N
1294794	30986	\N	358621	\N
1294795	113	1012	91411	\N
1294795	112	1011	91410	\N
1294795	30986	\N	358621	\N
1294796	113	1012	91411	\N
1294796	112	1011	91410	\N
1294796	30986	\N	358621	\N
1294797	113	1012	91411	\N
1294797	112	1011	91410	\N
1294797	30986	\N	358621	\N
1294798	113	1012	91411	\N
1294798	112	1011	91410	\N
1294798	30986	\N	358621	\N
1294799	113	1012	91411	\N
1294799	112	1011	91410	\N
1294799	30986	\N	358621	\N
1294800	113	1012	91411	\N
1294800	112	1011	91410	\N
1294800	30986	\N	358621	\N
1294801	113	1012	91411	\N
1294801	112	1011	91410	\N
1294801	30986	\N	358621	\N
1294802	113	1012	91411	\N
1294802	112	1011	91410	\N
1294802	30986	\N	358621	\N
1294803	113	1012	91411	\N
1294803	112	1011	91410	\N
1294803	30986	\N	358621	\N
1294804	113	1012	91411	\N
1294804	112	1011	91410	\N
1294804	30986	\N	358621	\N
1294805	113	1012	91411	\N
1294805	112	1011	91410	\N
1294805	30986	\N	358621	\N
1294806	113	1012	91411	\N
1294806	112	1011	91410	\N
1294806	30986	\N	358621	\N
1294807	113	1012	91411	\N
1294807	112	1011	91410	\N
1294807	30986	\N	358621	\N
1294808	113	1012	91411	\N
1294808	112	1011	91410	\N
1294808	30986	\N	358621	\N
1294809	113	1012	91411	\N
1294809	112	1011	91410	\N
1294809	30986	\N	358621	\N
1294810	113	1012	91411	\N
1294810	112	1011	91410	\N
1294810	30986	\N	358621	\N
1294811	113	1012	91411	\N
1294811	112	1011	91410	\N
1294811	30986	\N	358621	\N
1294812	113	1012	91411	\N
1294812	112	1011	91410	\N
1294812	30986	\N	358621	\N
1294813	113	1012	91411	\N
1294813	112	1011	91410	\N
1294813	30986	\N	358621	\N
1294814	113	1012	91411	\N
1294814	112	1011	91410	\N
1294814	30986	\N	358621	\N
1294815	113	1012	91411	\N
1294815	112	1011	91410	\N
1294815	30986	\N	358621	\N
1294816	113	1012	91411	\N
1294816	112	1011	91410	\N
1294816	30986	\N	358621	\N
1294817	113	1012	91411	\N
1294817	112	1011	91410	\N
1294817	30986	\N	358621	\N
1294818	113	1012	91411	\N
1294818	112	1011	91410	\N
1294818	30986	\N	358621	\N
1294819	113	1012	91411	\N
1294819	112	1011	91410	\N
1294819	30986	\N	358621	\N
1294820	113	1012	91411	\N
1294820	112	1011	91410	\N
1294820	30986	\N	358621	\N
1294821	113	1012	91411	\N
1294821	112	1011	91410	\N
1294821	30986	\N	358621	\N
1294822	113	1012	91411	\N
1294822	112	1011	91410	\N
1294822	30986	\N	358621	\N
1294823	113	1012	91411	\N
1294823	112	1011	91410	\N
1294823	30986	\N	358621	\N
1294824	113	1012	91411	\N
1294824	112	1011	91410	\N
1294824	30986	\N	358621	\N
1294825	113	1012	91411	\N
1294825	112	1011	91410	\N
1294825	30986	\N	358621	\N
1294826	113	1012	91411	\N
1294826	112	1011	91410	\N
1294826	30986	\N	358621	\N
1294827	113	1012	91411	\N
1294827	112	1011	91410	\N
1294827	30986	\N	358621	\N
1294828	113	1012	91411	\N
1294828	112	1011	91410	\N
1294828	30986	\N	358621	\N
1294829	113	1012	91411	\N
1294829	112	1011	91410	\N
1294829	30986	\N	358621	\N
1294830	113	1012	91411	\N
1294830	112	1011	91410	\N
1294830	30986	\N	358621	\N
1294831	113	1012	91411	\N
1294831	112	1011	91410	\N
1294831	30986	\N	358621	\N
1294832	113	1012	91411	\N
1294832	112	1011	91410	\N
1294832	30986	\N	358621	\N
1294833	113	1012	91411	\N
1294833	112	1011	91410	\N
1294833	30986	\N	358621	\N
1294834	113	1012	91411	\N
1294834	112	1011	91410	\N
1294834	30986	\N	358621	\N
1294835	113	1012	91411	\N
1294835	112	1011	91410	\N
1294835	30986	\N	358621	\N
1294836	113	1012	91411	\N
1294836	112	1011	91410	\N
1294836	30986	\N	358621	\N
1294837	113	1012	91411	\N
1294837	112	1011	91410	\N
1294837	30986	\N	358621	\N
1294838	113	1012	91411	\N
1294838	112	1011	91410	\N
1294838	30986	\N	358621	\N
1294839	113	1012	91411	\N
1294839	112	1011	91410	\N
1294839	30986	\N	358621	\N
1294840	113	1012	91411	\N
1294840	112	1011	91410	\N
1294840	30986	\N	358621	\N
1294841	113	1012	91411	\N
1294841	112	1011	91410	\N
1294841	30986	\N	358621	\N
1294842	113	1012	91411	\N
1294842	112	1011	91410	\N
1294842	30986	\N	358621	\N
1294843	113	1012	91411	\N
1294843	112	1011	91410	\N
1294843	30986	\N	358621	\N
1294844	113	1012	91411	\N
1294844	112	1011	91410	\N
1294844	30986	\N	358621	\N
1294845	113	1012	91411	\N
1294845	112	1011	91410	\N
1294845	30986	\N	358621	\N
1294846	113	1012	91411	\N
1294846	112	1011	91410	\N
1294846	30986	\N	358621	\N
1294847	113	1012	91411	\N
1294847	112	1011	91410	\N
1294847	30986	\N	358621	\N
1294848	113	1012	91411	\N
1294848	112	1011	91410	\N
1294848	30986	\N	358621	\N
1294849	113	1012	91411	\N
1294849	112	1011	91410	\N
1294849	30986	\N	358621	\N
1294850	113	1012	91411	\N
1294850	112	1011	91410	\N
1294850	30986	\N	358621	\N
1294851	113	1012	91411	\N
1294851	112	1011	91410	\N
1294851	30986	\N	358621	\N
1294852	113	1012	91411	\N
1294852	112	1011	91410	\N
1294852	30986	\N	358621	\N
1294853	113	1012	91411	\N
1294853	112	1011	91410	\N
1294853	30986	\N	358621	\N
1294854	113	1012	91411	\N
1294854	112	1011	91410	\N
1294854	30986	\N	358621	\N
1294855	113	1012	91411	\N
1294855	112	1011	91410	\N
1294855	30986	\N	358621	\N
1294856	113	1012	91411	\N
1294856	112	1011	91410	\N
1294856	30986	\N	358621	\N
1294857	113	1012	91411	\N
1294857	112	1011	91410	\N
1294857	30986	\N	358621	\N
1294858	113	1012	91411	\N
1294858	112	1011	91410	\N
1294858	30986	\N	358621	\N
1294859	113	1012	91411	\N
1294859	112	1011	91410	\N
1294859	30986	\N	358621	\N
1294860	113	1012	91411	\N
1294860	112	1011	91410	\N
1294860	30986	\N	358621	\N
1294861	113	1012	91411	\N
1294861	112	1011	91410	\N
1294861	30986	\N	358621	\N
1294862	113	1012	91411	\N
1294862	112	1011	91410	\N
1294862	30986	\N	358621	\N
1294863	113	1012	91411	\N
1294863	112	1011	91410	\N
1294863	30986	\N	358621	\N
1294864	113	1012	91411	\N
1294864	112	1011	91410	\N
1294864	30986	\N	358621	\N
1294865	113	1012	91411	\N
1294865	112	1011	91410	\N
1294865	30986	\N	358621	\N
1294866	113	1012	91411	\N
1294866	112	1011	91410	\N
1294866	30986	\N	358621	\N
1294867	113	1012	91411	\N
1294867	112	1011	91410	\N
1294867	30986	\N	358621	\N
1294868	113	1012	91411	\N
1294868	112	1011	91410	\N
1294868	30986	\N	358621	\N
1294869	113	1012	91411	\N
1294869	112	1011	91410	\N
1294869	30986	\N	358621	\N
1294870	113	1012	91411	\N
1294870	112	1011	91410	\N
1294870	30986	\N	358621	\N
1294871	113	1012	91411	\N
1294871	112	1011	91410	\N
1294871	30986	\N	358621	\N
1294872	113	1012	91411	\N
1294872	112	1011	91410	\N
1294872	30986	\N	358621	\N
1294873	113	1012	91411	\N
1294873	112	1011	91410	\N
1294873	30986	\N	358621	\N
1294874	113	1012	91411	\N
1294874	112	1011	91410	\N
1294874	30986	\N	358621	\N
1294875	113	1012	91411	\N
1294875	112	1011	91410	\N
1294875	30986	\N	358621	\N
1294876	113	1012	91411	\N
1294876	112	1011	91410	\N
1294876	30986	\N	358621	\N
1294877	113	1012	91411	\N
1294877	112	1011	91410	\N
1294877	30986	\N	358621	\N
1294878	113	1012	91411	\N
1294878	112	1011	91410	\N
1294878	30986	\N	358621	\N
1294879	113	1012	91411	\N
1294879	112	1011	91410	\N
1294879	30986	\N	358621	\N
1294880	113	1012	91411	\N
1294880	112	1011	91410	\N
1294880	30986	\N	358621	\N
1294881	113	1012	91411	\N
1294881	112	1011	91410	\N
1294881	30986	\N	358621	\N
1294882	113	1012	91411	\N
1294882	112	1011	91410	\N
1294882	30986	\N	358621	\N
1294883	113	1012	91411	\N
1294883	112	1011	91410	\N
1294883	30986	\N	358621	\N
1294884	113	1012	91411	\N
1294884	112	1011	91410	\N
1294884	30986	\N	358621	\N
1294885	113	1012	91411	\N
1294885	112	1011	91410	\N
1294885	30986	\N	358621	\N
1294886	113	1012	91411	\N
1294886	112	1011	91410	\N
1294886	30986	\N	358621	\N
1294887	113	1012	91411	\N
1294887	112	1011	91410	\N
1294887	30986	\N	358621	\N
1294888	113	1012	91411	\N
1294888	112	1011	91410	\N
1294888	30986	\N	358621	\N
1294889	113	1012	91411	\N
1294889	112	1011	91410	\N
1294889	30986	\N	358621	\N
1294890	113	1012	91411	\N
1294890	112	1011	91410	\N
1294890	30986	\N	358621	\N
1294891	113	1012	91411	\N
1294891	112	1011	91410	\N
1294891	30986	\N	358621	\N
1294892	113	1012	91411	\N
1294892	112	1011	91410	\N
1294892	30986	\N	358621	\N
1294893	113	1012	91411	\N
1294893	112	1011	91410	\N
1294893	30986	\N	358621	\N
1294894	113	1012	91411	\N
1294894	112	1011	91410	\N
1294894	30986	\N	358621	\N
1294895	113	1012	91411	\N
1294895	112	1011	91410	\N
1294895	30986	\N	358621	\N
1294896	113	1012	91411	\N
1294896	112	1011	91410	\N
1294896	30986	\N	358621	\N
1294897	113	1012	91411	\N
1294897	112	1011	91410	\N
1294897	30986	\N	358621	\N
1294898	113	1012	91411	\N
1294898	112	1011	91410	\N
1294898	30986	\N	358621	\N
1294899	113	1012	91411	\N
1294899	112	1011	91410	\N
1294899	30986	\N	358621	\N
1294900	113	1012	91411	\N
1294900	112	1011	91410	\N
1294900	30986	\N	358621	\N
1294901	113	1012	91411	\N
1294901	112	1011	91410	\N
1294901	30986	\N	358621	\N
1294902	113	1012	91411	\N
1294902	112	1011	91410	\N
1294902	30986	\N	358621	\N
1294903	113	1012	91411	\N
1294903	112	1011	91410	\N
1294903	30986	\N	358621	\N
1294904	113	1012	91411	\N
1294904	112	1011	91410	\N
1294904	30986	\N	358621	\N
1294905	113	1012	91411	\N
1294905	112	1011	91410	\N
1294905	30986	\N	358621	\N
1294906	113	1012	91411	\N
1294906	112	1011	91410	\N
1294906	30986	\N	358621	\N
1294907	113	1012	91411	\N
1294907	112	1011	91410	\N
1294907	30986	\N	358621	\N
1294908	113	1012	91411	\N
1294908	112	1011	91410	\N
1294908	30986	\N	358621	\N
1294909	113	1012	91411	\N
1294909	112	1011	91410	\N
1294909	30986	\N	358621	\N
1294910	113	1012	91411	\N
1294910	112	1011	91410	\N
1294910	30986	\N	358621	\N
1294911	113	1012	91411	\N
1294911	112	1011	91410	\N
1294911	30986	\N	358621	\N
1294912	113	1012	91411	\N
1294912	112	1011	91410	\N
1294912	30986	\N	358621	\N
1294913	113	1012	91411	\N
1294913	112	1011	91410	\N
1294913	30986	\N	358621	\N
1294914	113	1012	91411	\N
1294914	112	1011	91410	\N
1294914	30986	\N	358621	\N
1294915	113	1012	91411	\N
1294915	112	1011	91410	\N
1294915	30986	\N	358621	\N
1294916	113	1012	91411	\N
1294916	112	1011	91410	\N
1294916	30986	\N	358621	\N
1294917	113	1012	91411	\N
1294917	112	1011	91410	\N
1294917	30986	\N	358621	\N
1294918	113	1012	91411	\N
1294918	112	1011	91410	\N
1294918	30986	\N	358621	\N
1294919	113	1012	91411	\N
1294919	112	1011	91410	\N
1294919	30986	\N	358621	\N
1294920	113	1012	91411	\N
1294920	112	1011	91410	\N
1294920	30986	\N	358621	\N
1294921	113	1012	91411	\N
1294921	112	1011	91410	\N
1294921	30986	\N	358621	\N
1294922	113	1012	91411	\N
1294922	112	1011	91410	\N
1294922	30986	\N	358621	\N
1294923	113	1012	91411	\N
1294923	112	1011	91410	\N
1294923	30986	\N	358621	\N
1294924	113	1012	91411	\N
1294924	112	1011	91410	\N
1294924	30986	\N	358621	\N
1294925	113	1012	91411	\N
1294925	112	1011	91410	\N
1294925	30986	\N	358621	\N
1294926	113	1012	91411	\N
1294926	112	1011	91410	\N
1294926	30986	\N	358621	\N
1294927	113	1012	91411	\N
1294927	112	1011	91410	\N
1294927	30986	\N	358621	\N
1294928	113	1012	91411	\N
1294928	112	1011	91410	\N
1294928	30986	\N	358621	\N
1294929	113	1012	91411	\N
1294929	112	1011	91410	\N
1294929	30986	\N	358621	\N
1294930	113	1012	91411	\N
1294930	112	1011	91410	\N
1294930	30986	\N	358621	\N
1294931	113	1012	91411	\N
1294931	112	1011	91410	\N
1294931	30986	\N	358621	\N
1294932	113	1012	91411	\N
1294932	112	1011	91410	\N
1294932	30986	\N	358621	\N
1294933	113	1012	91411	\N
1294933	112	1011	91410	\N
1294933	30986	\N	358621	\N
1294934	113	1012	91411	\N
1294934	112	1011	91410	\N
1294934	30986	\N	358621	\N
1294935	113	1012	91411	\N
1294935	112	1011	91410	\N
1294935	30986	\N	358621	\N
1294936	113	1012	91411	\N
1294936	112	1011	91410	\N
1294936	30986	\N	358621	\N
1294937	113	1012	91411	\N
1294937	112	1011	91410	\N
1294937	30986	\N	358621	\N
1294938	113	1012	91411	\N
1294938	112	1011	91410	\N
1294938	30986	\N	358621	\N
1294939	113	1012	91411	\N
1294939	112	1011	91410	\N
1294939	30986	\N	358621	\N
1294940	113	1012	91411	\N
1294940	112	1011	91410	\N
1294940	30986	\N	358621	\N
1294941	113	1012	91411	\N
1294941	112	1011	91410	\N
1294941	30986	\N	358621	\N
1294942	113	1012	91411	\N
1294942	112	1011	91410	\N
1294942	30986	\N	358621	\N
1294943	113	1012	91411	\N
1294943	112	1011	91410	\N
1294943	30986	\N	358621	\N
1294944	113	1012	91411	\N
1294944	112	1011	91410	\N
1294944	30986	\N	358621	\N
1294945	113	1012	91411	\N
1294945	112	1011	91410	\N
1294945	30986	\N	358621	\N
1294946	113	1012	91411	\N
1294946	112	1011	91410	\N
1294946	30986	\N	358621	\N
1294947	113	1012	91411	\N
1294947	112	1011	91410	\N
1294947	30986	\N	358621	\N
1294948	113	1012	91411	\N
1294948	112	1011	91410	\N
1294948	30986	\N	358621	\N
1294949	113	1012	91411	\N
1294949	112	1011	91410	\N
1294949	30986	\N	358621	\N
1294950	113	1012	91411	\N
1294950	112	1011	91410	\N
1294950	30986	\N	358621	\N
1294951	113	1012	91411	\N
1294951	112	1011	91410	\N
1294951	30986	\N	358621	\N
1294952	113	1012	91411	\N
1294952	112	1011	91410	\N
1294952	30986	\N	358621	\N
1294953	113	1012	91411	\N
1294953	112	1011	91410	\N
1294953	30986	\N	358621	\N
1294954	113	1012	91411	\N
1294954	112	1011	91410	\N
1294954	30986	\N	358621	\N
1294955	113	1012	91411	\N
1294955	112	1011	91410	\N
1294955	30986	\N	358621	\N
1294956	113	1012	91411	\N
1294956	112	1011	91410	\N
1294956	30986	\N	358621	\N
1294957	113	1012	91411	\N
1294957	112	1011	91410	\N
1294957	30986	\N	358621	\N
1294958	113	1012	91411	\N
1294958	112	1011	91410	\N
1294958	30986	\N	358621	\N
1294959	113	1012	91411	\N
1294959	112	1011	91410	\N
1294959	30986	\N	358621	\N
1294960	113	1012	91411	\N
1294960	112	1011	91410	\N
1294960	30986	\N	358621	\N
1294961	113	1012	91411	\N
1294961	112	1011	91410	\N
1294961	30986	\N	358621	\N
1294962	113	1012	91411	\N
1294962	112	1011	91410	\N
1294962	30986	\N	358621	\N
1294963	113	1012	91411	\N
1294963	112	1011	91410	\N
1294963	30986	\N	358621	\N
1294964	113	1012	91411	\N
1294964	112	1011	91410	\N
1294964	30986	\N	358621	\N
1294965	113	1012	91411	\N
1294965	112	1011	91410	\N
1294965	30986	\N	358621	\N
1294966	113	1012	91411	\N
1294966	112	1011	91410	\N
1294966	30986	\N	358621	\N
1294967	113	1012	91411	\N
1294967	112	1011	91410	\N
1294967	30986	\N	358621	\N
1294968	113	1012	91411	\N
1294968	112	1011	91410	\N
1294968	30986	\N	358621	\N
1294969	113	1012	91411	\N
1294969	112	1011	91410	\N
1294969	30986	\N	358621	\N
1294970	113	1012	91411	\N
1294970	112	1011	91410	\N
1294970	30986	\N	358621	\N
1294971	113	1012	91411	\N
1294971	112	1011	91410	\N
1294971	30986	\N	358621	\N
1294972	113	1012	91411	\N
1294972	112	1011	91410	\N
1294972	30986	\N	358621	\N
1294973	113	1012	91411	\N
1294973	112	1011	91410	\N
1294973	30986	\N	358621	\N
1294974	113	1012	91411	\N
1294974	112	1011	91410	\N
1294974	30986	\N	358621	\N
1294975	113	1012	91411	\N
1294975	112	1011	91410	\N
1294975	30986	\N	358621	\N
1294976	113	1012	91411	\N
1294976	112	1011	91410	\N
1294976	30986	\N	358621	\N
1294977	113	1012	91411	\N
1294977	112	1011	91410	\N
1294977	30986	\N	358621	\N
1294978	113	1012	91411	\N
1294978	112	1011	91410	\N
1294978	30986	\N	358621	\N
1294979	113	1012	91411	\N
1294979	112	1011	91410	\N
1294979	30986	\N	358621	\N
1294980	113	1012	91411	\N
1294980	112	1011	91410	\N
1294980	30986	\N	358621	\N
1294981	113	1012	91411	\N
1294981	112	1011	91410	\N
1294981	30986	\N	358621	\N
1294982	113	1012	91411	\N
1294982	112	1011	91410	\N
1294982	30986	\N	358621	\N
1294983	113	1012	91411	\N
1294983	112	1011	91410	\N
1294983	30986	\N	358621	\N
1294984	113	1012	91411	\N
1294984	112	1011	91410	\N
1294984	30986	\N	358621	\N
1294985	113	1012	91411	\N
1294985	112	1011	91410	\N
1294985	30986	\N	358621	\N
1294986	113	1012	91411	\N
1294986	112	1011	91410	\N
1294986	30986	\N	358621	\N
1294987	113	1012	91411	\N
1294987	112	1011	91410	\N
1294987	30986	\N	358621	\N
1294988	113	1012	91411	\N
1294988	112	1011	91410	\N
1294988	30986	\N	358621	\N
1294989	113	1012	91411	\N
1294989	112	1011	91410	\N
1294989	30986	\N	358621	\N
1294990	113	1012	91411	\N
1294990	112	1011	91410	\N
1294990	30986	\N	358621	\N
1294991	113	1012	91411	\N
1294991	112	1011	91410	\N
1294991	30986	\N	358621	\N
1294992	113	1012	91411	\N
1294992	112	1011	91410	\N
1294992	30986	\N	358621	\N
1294993	113	1012	91411	\N
1294993	112	1011	91410	\N
1294993	30986	\N	358621	\N
1294994	113	1012	91411	\N
1294994	112	1011	91410	\N
1294994	30986	\N	358621	\N
1294995	113	1012	91411	\N
1294995	112	1011	91410	\N
1294995	30986	\N	358621	\N
1294996	113	1012	91411	\N
1294996	112	1011	91410	\N
1294996	30986	\N	358621	\N
1294997	113	1012	91411	\N
1294997	112	1011	91410	\N
1294997	30986	\N	358621	\N
1294998	113	1012	91411	\N
1294998	112	1011	91410	\N
1294998	30986	\N	358621	\N
1294999	113	1012	91411	\N
1294999	112	1011	91410	\N
1294999	30986	\N	358621	\N
1295000	113	1012	91411	\N
1295000	112	1011	91410	\N
1295000	30986	\N	358621	\N
1295001	113	1012	91411	\N
1295001	112	1011	91410	\N
1295001	30986	\N	358621	\N
1295002	113	1012	91411	\N
1295002	112	1011	91410	\N
1295002	30986	\N	358621	\N
1295003	113	1012	91411	\N
1295003	112	1011	91410	\N
1295003	30986	\N	358621	\N
1295004	113	1012	91411	\N
1295004	112	1011	91410	\N
1295004	30986	\N	358621	\N
1295005	113	1012	91411	\N
1295005	112	1011	91410	\N
1295005	30986	\N	358621	\N
1295006	113	1012	91411	\N
1295006	112	1011	91410	\N
1295006	30986	\N	358621	\N
1295007	113	1012	91411	\N
1295007	112	1011	91410	\N
1295007	30986	\N	358621	\N
1295008	113	1012	91411	\N
1295008	112	1011	91410	\N
1295008	30986	\N	358621	\N
1295009	113	1012	91411	\N
1295009	112	1011	91410	\N
1295009	30986	\N	358621	\N
1295010	113	1012	91411	\N
1295010	112	1011	91410	\N
1295010	30986	\N	358621	\N
1295011	113	1012	91411	\N
1295011	112	1011	91410	\N
1295011	30986	\N	358621	\N
1295012	113	1012	91411	\N
1295012	112	1011	91410	\N
1295012	30986	\N	358621	\N
1295013	113	1012	91411	\N
1295013	112	1011	91410	\N
1295013	30986	\N	358621	\N
1295014	113	1012	91411	\N
1295014	112	1011	91410	\N
1295014	30986	\N	358621	\N
1295015	113	1012	91411	\N
1295015	112	1011	91410	\N
1295015	30986	\N	358621	\N
1295016	113	1012	91411	\N
1295016	112	1011	91410	\N
1295016	30986	\N	358621	\N
1295017	113	1012	91411	\N
1295017	112	1011	91410	\N
1295017	30986	\N	358621	\N
1295018	113	1012	91411	\N
1295018	112	1011	91410	\N
1295018	30986	\N	358621	\N
1295019	113	1012	91411	\N
1295019	112	1011	91410	\N
1295019	30986	\N	358621	\N
1295020	113	1012	91411	\N
1295020	112	1011	91410	\N
1295020	30986	\N	358621	\N
1295021	113	1012	91411	\N
1295021	112	1011	91410	\N
1295021	30986	\N	358621	\N
1295022	113	1012	91411	\N
1295022	112	1011	91410	\N
1295022	30986	\N	358621	\N
1295023	113	1012	91411	\N
1295023	112	1011	91410	\N
1295023	30986	\N	358621	\N
1295024	113	1012	91411	\N
1295024	112	1011	91410	\N
1295024	30986	\N	358621	\N
1295025	113	1012	91411	\N
1295025	112	1011	91410	\N
1295025	30986	\N	358621	\N
1295026	113	1012	91411	\N
1295026	112	1011	91410	\N
1295026	30986	\N	358621	\N
1295027	113	1012	91411	\N
1295027	112	1011	91410	\N
1295027	30986	\N	358621	\N
1295028	113	1012	91411	\N
1295028	112	1011	91410	\N
1295028	30986	\N	358621	\N
1295029	113	1012	91411	\N
1295029	112	1011	91410	\N
1295029	30986	\N	358621	\N
1295030	113	1012	91411	\N
1295030	112	1011	91410	\N
1295030	30986	\N	358621	\N
1295031	113	1012	91411	\N
1295031	112	1011	91410	\N
1295031	30986	\N	358621	\N
1295032	113	1012	91411	\N
1295032	112	1011	91410	\N
1295032	30986	\N	358621	\N
1295033	113	1012	91411	\N
1295033	112	1011	91410	\N
1295033	30986	\N	358621	\N
1295034	113	1012	91411	\N
1295034	112	1011	91410	\N
1295034	30986	\N	358621	\N
1295035	113	1012	91411	\N
1295035	112	1011	91410	\N
1295035	30986	\N	358621	\N
1295036	113	1012	91411	\N
1295036	112	1011	91410	\N
1295036	30986	\N	358621	\N
1295037	113	1012	91411	\N
1295037	112	1011	91410	\N
1295037	30986	\N	358621	\N
1295038	113	1012	91411	\N
1295038	112	1011	91410	\N
1295038	30986	\N	358621	\N
1295039	113	1012	91411	\N
1295039	112	1011	91410	\N
1295039	30986	\N	358621	\N
1295040	113	1012	91411	\N
1295040	112	1011	91410	\N
1295040	30986	\N	358621	\N
1295041	113	1012	91411	\N
1295041	112	1011	91410	\N
1295041	30986	\N	358621	\N
1295042	113	1012	91411	\N
1295042	112	1011	91410	\N
1295042	30986	\N	358621	\N
1295043	113	1012	91411	\N
1295043	112	1011	91410	\N
1295043	30986	\N	358621	\N
1295044	113	1012	91411	\N
1295044	112	1011	91410	\N
1295044	30986	\N	358621	\N
1295045	113	1012	91411	\N
1295045	112	1011	91410	\N
1295045	30986	\N	358621	\N
1295046	113	1012	91411	\N
1295046	112	1011	91410	\N
1295046	30986	\N	358621	\N
1295047	113	1012	91411	\N
1295047	112	1011	91410	\N
1295047	30986	\N	358621	\N
1295048	113	1012	91411	\N
1295048	112	1011	91410	\N
1295048	30986	\N	358621	\N
1295049	113	1012	91411	\N
1295049	112	1011	91410	\N
1295049	30986	\N	358621	\N
1295050	113	1012	91411	\N
1295050	112	1011	91410	\N
1295050	30986	\N	358621	\N
1295051	113	1012	91411	\N
1295051	112	1011	91410	\N
1295051	30986	\N	358621	\N
1295052	113	1012	91411	\N
1295052	112	1011	91410	\N
1295052	30986	\N	358621	\N
1295053	113	1012	91411	\N
1295053	112	1011	91410	\N
1295053	30986	\N	358621	\N
1295054	113	1012	91411	\N
1295054	112	1011	91410	\N
1295054	30986	\N	358621	\N
1295055	113	1012	91411	\N
1295055	112	1011	91410	\N
1295055	30986	\N	358621	\N
1295056	113	1012	91411	\N
1295056	112	1011	91410	\N
1295056	30986	\N	358621	\N
1295057	113	1012	91411	\N
1295057	112	1011	91410	\N
1295057	30986	\N	358621	\N
1295058	113	1012	91411	\N
1295058	112	1011	91410	\N
1295058	30986	\N	358621	\N
1295059	113	1012	91411	\N
1295059	112	1011	91410	\N
1295059	30986	\N	358621	\N
1295060	113	1012	91411	\N
1295060	112	1011	91410	\N
1295060	30986	\N	358621	\N
1295061	113	1012	91411	\N
1295061	112	1011	91410	\N
1295061	30986	\N	358621	\N
1295062	113	1012	91411	\N
1295062	112	1011	91410	\N
1295062	30986	\N	358621	\N
1295063	113	1012	91411	\N
1295063	112	1011	91410	\N
1295063	30986	\N	358621	\N
1295064	113	1012	91411	\N
1295064	112	1011	91410	\N
1295064	30986	\N	358621	\N
1295065	113	1012	91411	\N
1295065	112	1011	91410	\N
1295065	30986	\N	358621	\N
1295066	113	1012	91411	\N
1295066	112	1011	91410	\N
1295066	30986	\N	358621	\N
1295067	113	1012	91411	\N
1295067	112	1011	91410	\N
1295067	30986	\N	358621	\N
1295068	113	1012	91411	\N
1295068	112	1011	91410	\N
1295068	30986	\N	358621	\N
1295069	113	1012	91411	\N
1295069	112	1011	91410	\N
1295069	30986	\N	358621	\N
1295070	113	1012	91411	\N
1295070	112	1011	91410	\N
1295070	30986	\N	358621	\N
1295071	113	1012	91411	\N
1295071	112	1011	91410	\N
1295071	30986	\N	358621	\N
1295072	113	1012	91411	\N
1295072	112	1011	91410	\N
1295072	30986	\N	358621	\N
1295073	113	1012	91411	\N
1295073	112	1011	91410	\N
1295073	30986	\N	358621	\N
1295074	113	1012	91411	\N
1295074	112	1011	91410	\N
1295074	30986	\N	358621	\N
1295075	113	1012	91411	\N
1295075	112	1011	91410	\N
1295075	30986	\N	358621	\N
1295076	113	1012	91411	\N
1295076	112	1011	91410	\N
1295076	30986	\N	358621	\N
1295077	113	1012	91411	\N
1295077	112	1011	91410	\N
1295077	30986	\N	358621	\N
1295078	113	1012	91411	\N
1295078	112	1011	91410	\N
1295078	30986	\N	358621	\N
1295079	113	1012	91411	\N
1295079	112	1011	91410	\N
1295079	30986	\N	358621	\N
1295080	113	1012	91411	\N
1295080	112	1011	91410	\N
1295080	30986	\N	358621	\N
1295081	113	1012	91411	\N
1295081	112	1011	91410	\N
1295081	30986	\N	358621	\N
1295082	113	1012	91411	\N
1295082	112	1011	91410	\N
1295082	30986	\N	358621	\N
1295083	113	1012	91411	\N
1295083	112	1011	91410	\N
1295083	30986	\N	358621	\N
1295084	113	1012	91411	\N
1295084	112	1011	91410	\N
1295084	30986	\N	358621	\N
1295085	113	1012	91411	\N
1295085	112	1011	91410	\N
1295085	30986	\N	358621	\N
1295086	113	1012	91411	\N
1295086	112	1011	91410	\N
1295086	30986	\N	358621	\N
1295087	113	1012	91411	\N
1295087	112	1011	91410	\N
1295087	30986	\N	358621	\N
1295088	113	1012	91411	\N
1295088	112	1011	91410	\N
1295088	30986	\N	358621	\N
1295089	113	1012	91411	\N
1295089	112	1011	91410	\N
1295089	30986	\N	358621	\N
1295090	113	1012	91411	\N
1295090	112	1011	91410	\N
1295090	30986	\N	358621	\N
1295091	113	1012	91411	\N
1295091	112	1011	91410	\N
1295091	30986	\N	358621	\N
1295092	113	1012	91411	\N
1295092	112	1011	91410	\N
1295092	30986	\N	358621	\N
1295093	113	1012	91411	\N
1295093	112	1011	91410	\N
1295093	30986	\N	358621	\N
1295094	113	1012	91411	\N
1295094	112	1011	91410	\N
1295094	30986	\N	358621	\N
1295095	113	1012	91411	\N
1295095	112	1011	91410	\N
1295095	30986	\N	358621	\N
1295096	113	1012	91411	\N
1295096	112	1011	91410	\N
1295096	30986	\N	358621	\N
1295097	113	1012	91411	\N
1295097	112	1011	91410	\N
1295097	30986	\N	358621	\N
1295098	113	1012	91411	\N
1295098	112	1011	91410	\N
1295098	30986	\N	358621	\N
1295099	113	1012	91411	\N
1295099	112	1011	91410	\N
1295099	30986	\N	358621	\N
1295100	113	1012	91411	\N
1295100	112	1011	91410	\N
1295100	30986	\N	358621	\N
1295101	113	1012	91411	\N
1295101	112	1011	91410	\N
1295101	30986	\N	358621	\N
1295102	113	1012	91411	\N
1295102	112	1011	91410	\N
1295102	30986	\N	358621	\N
1295103	113	1012	91411	\N
1295103	112	1011	91410	\N
1295103	30986	\N	358621	\N
1295104	113	1012	91411	\N
1295104	112	1011	91410	\N
1295104	30986	\N	358621	\N
1295105	113	1012	91411	\N
1295105	112	1011	91410	\N
1295105	30986	\N	358621	\N
1295106	113	1012	91411	\N
1295106	112	1011	91410	\N
1295106	30986	\N	358621	\N
1295107	113	1012	91411	\N
1295107	112	1011	91410	\N
1295107	30986	\N	358621	\N
1295108	113	1012	91411	\N
1295108	112	1011	91410	\N
1295108	30986	\N	358621	\N
1295109	113	1012	91411	\N
1295109	112	1011	91410	\N
1295109	30986	\N	358621	\N
1295110	113	1012	91411	\N
1295110	112	1011	91410	\N
1295110	30986	\N	358621	\N
1295111	113	1012	91411	\N
1295111	112	1011	91410	\N
1295111	30986	\N	358621	\N
1295112	113	1012	91411	\N
1295112	112	1011	91410	\N
1295112	30986	\N	358621	\N
1295113	113	1012	91411	\N
1295113	112	1011	91410	\N
1295113	30986	\N	358621	\N
1295114	113	1012	91411	\N
1295114	112	1011	91410	\N
1295114	30986	\N	358621	\N
1295115	113	1012	91411	\N
1295115	112	1011	91410	\N
1295115	30986	\N	358621	\N
1295116	113	1012	91411	\N
1295116	112	1011	91410	\N
1295116	30986	\N	358621	\N
1295117	113	1012	91411	\N
1295117	112	1011	91410	\N
1295117	30986	\N	358621	\N
1295118	113	1012	91411	\N
1295118	112	1011	91410	\N
1295118	30986	\N	358621	\N
1295119	113	1012	91411	\N
1295119	112	1011	91410	\N
1295119	30986	\N	358621	\N
1295120	113	1012	91411	\N
1295120	112	1011	91410	\N
1295120	30986	\N	358621	\N
1295121	113	1012	91411	\N
1295121	112	1011	91410	\N
1295121	30986	\N	358621	\N
1295122	113	1012	91411	\N
1295122	112	1011	91410	\N
1295122	30986	\N	358621	\N
1295123	113	1012	91411	\N
1295123	112	1011	91410	\N
1295123	30986	\N	358621	\N
1295124	113	1012	91411	\N
1295124	112	1011	91410	\N
1295124	30986	\N	358621	\N
1295125	113	1012	91411	\N
1295125	112	1011	91410	\N
1295125	30986	\N	358621	\N
1295126	113	1012	91411	\N
1295126	112	1011	91410	\N
1295126	30986	\N	358621	\N
1295127	113	1012	91411	\N
1295127	112	1011	91410	\N
1295127	30986	\N	358621	\N
1295128	113	1012	91411	\N
1295128	112	1011	91410	\N
1295128	30986	\N	358621	\N
1295129	113	1012	91411	\N
1295129	112	1011	91410	\N
1295129	30986	\N	358621	\N
1295130	113	1012	91411	\N
1295130	112	1011	91410	\N
1295130	30986	\N	358621	\N
1295131	113	1012	91411	\N
1295131	112	1011	91410	\N
1295131	30986	\N	358621	\N
1295132	113	1012	91411	\N
1295132	112	1011	91410	\N
1295132	30986	\N	358621	\N
1295133	113	1012	91411	\N
1295133	112	1011	91410	\N
1295133	30986	\N	358621	\N
1295134	113	1012	91411	\N
1295134	112	1011	91410	\N
1295134	30986	\N	358621	\N
1295135	113	1012	91411	\N
1295135	112	1011	91410	\N
1295135	30986	\N	358621	\N
1295136	113	1012	91411	\N
1295136	112	1011	91410	\N
1295136	30986	\N	358621	\N
1295137	113	1012	91411	\N
1295137	112	1011	91410	\N
1295137	30986	\N	358621	\N
1295138	113	1012	91411	\N
1295138	112	1011	91410	\N
1295138	30986	\N	358621	\N
1295139	113	1012	91411	\N
1295139	112	1011	91410	\N
1295139	30986	\N	358621	\N
1295140	113	1012	91411	\N
1295140	112	1011	91410	\N
1295140	30986	\N	358621	\N
1295141	113	1012	91411	\N
1295141	112	1011	91410	\N
1295141	30986	\N	358621	\N
1295142	113	1012	91411	\N
1295142	112	1011	91410	\N
1295142	30986	\N	358621	\N
1295143	113	1012	91411	\N
1295143	112	1011	91410	\N
1295143	30986	\N	358621	\N
1295144	113	1012	91411	\N
1295144	112	1011	91410	\N
1295144	30986	\N	358621	\N
1295145	113	1012	91411	\N
1295145	112	1011	91410	\N
1295145	30986	\N	358621	\N
1295146	113	1012	91411	\N
1295146	112	1011	91410	\N
1295146	30986	\N	358621	\N
1295147	113	1012	91411	\N
1295147	112	1011	91410	\N
1295147	30986	\N	358621	\N
1295148	113	1012	91411	\N
1295148	112	1011	91410	\N
1295148	30986	\N	358621	\N
1295149	113	1012	91411	\N
1295149	112	1011	91410	\N
1295149	30986	\N	358621	\N
1295150	113	1012	91411	\N
1295150	112	1011	91410	\N
1295150	30986	\N	358621	\N
1295151	113	1012	91411	\N
1295151	112	1011	91410	\N
1295151	30986	\N	358621	\N
1295152	113	1012	91411	\N
1295152	112	1011	91410	\N
1295152	30986	\N	358621	\N
1295153	113	1012	91411	\N
1295153	112	1011	91410	\N
1295153	30986	\N	358621	\N
1295154	113	1012	91411	\N
1295154	112	1011	91410	\N
1295154	30986	\N	358621	\N
1295155	113	1012	91411	\N
1295155	112	1011	91410	\N
1295155	30986	\N	358621	\N
1295156	113	1012	91411	\N
1295156	112	1011	91410	\N
1295156	30986	\N	358621	\N
1295157	113	1012	91411	\N
1295157	112	1011	91410	\N
1295157	30986	\N	358621	\N
1295158	113	1012	91411	\N
1295158	112	1011	91410	\N
1295158	30986	\N	358621	\N
1295159	113	1012	91411	\N
1295159	112	1011	91410	\N
1295159	30986	\N	358621	\N
1295160	113	1012	91411	\N
1295160	112	1011	91410	\N
1295160	30986	\N	358621	\N
1295161	113	1012	91411	\N
1295161	112	1011	91410	\N
1295161	30986	\N	358621	\N
1295162	113	1012	91411	\N
1295162	112	1011	91410	\N
1295162	30986	\N	358621	\N
1295163	113	1012	91411	\N
1295163	112	1011	91410	\N
1295163	30986	\N	358621	\N
1295164	113	1012	91411	\N
1295164	112	1011	91410	\N
1295164	30986	\N	358621	\N
1295165	113	1012	91411	\N
1295165	112	1011	91410	\N
1295165	30986	\N	358621	\N
1295166	113	1012	91411	\N
1295166	112	1011	91410	\N
1295166	30986	\N	358621	\N
1295167	113	1012	91411	\N
1295167	112	1011	91410	\N
1295167	30986	\N	358621	\N
1295168	113	1012	91411	\N
1295168	112	1011	91410	\N
1295168	30986	\N	358621	\N
1295169	113	1012	91411	\N
1295169	112	1011	91410	\N
1295169	30986	\N	358621	\N
1295170	113	1012	91411	\N
1295170	112	1011	91410	\N
1295170	30986	\N	358621	\N
1295171	113	1012	91411	\N
1295171	112	1011	91410	\N
1295171	30986	\N	358621	\N
1295172	113	1012	91411	\N
1295172	112	1011	91410	\N
1295172	30986	\N	358621	\N
1295173	113	1012	91411	\N
1295173	112	1011	91410	\N
1295173	30986	\N	358621	\N
1295174	113	1012	91411	\N
1295174	112	1011	91410	\N
1295174	30986	\N	358621	\N
1295175	113	1012	91411	\N
1295175	112	1011	91410	\N
1295175	30986	\N	358621	\N
1295176	113	1012	91411	\N
1295176	112	1011	91410	\N
1295176	30986	\N	358621	\N
1295177	113	1012	91411	\N
1295177	112	1011	91410	\N
1295177	30986	\N	358621	\N
1295178	113	1012	91411	\N
1295178	112	1011	91410	\N
1295178	30986	\N	358621	\N
1295179	113	1012	91411	\N
1295179	112	1011	91410	\N
1295179	30986	\N	358621	\N
1295180	113	1012	91411	\N
1295180	112	1011	91410	\N
1295180	30986	\N	358621	\N
1295181	113	1012	91411	\N
1295181	112	1011	91410	\N
1295181	30986	\N	358621	\N
1295182	113	1012	91411	\N
1295182	112	1011	91410	\N
1295182	30986	\N	358621	\N
1295183	113	1012	91411	\N
1295183	112	1011	91410	\N
1295183	30986	\N	358621	\N
1295184	113	1012	91411	\N
1295184	112	1011	91410	\N
1295184	30986	\N	358621	\N
1295185	113	1012	91411	\N
1295185	112	1011	91410	\N
1295185	30986	\N	358621	\N
1295186	113	1012	91411	\N
1295186	112	1011	91410	\N
1295186	30986	\N	358621	\N
1295187	113	1012	91411	\N
1295187	112	1011	91410	\N
1295187	30986	\N	358621	\N
1295188	113	1012	91411	\N
1295188	112	1011	91410	\N
1295188	30986	\N	358621	\N
1295189	113	1012	91411	\N
1295189	112	1011	91410	\N
1295189	30986	\N	358621	\N
1295190	113	1012	91411	\N
1295190	112	1011	91410	\N
1295190	30986	\N	358621	\N
1295191	113	1012	91411	\N
1295191	112	1011	91410	\N
1295191	30986	\N	358621	\N
1295192	113	1012	91411	\N
1295192	112	1011	91410	\N
1295192	30986	\N	358621	\N
1295193	113	1012	91411	\N
1295193	112	1011	91410	\N
1295193	30986	\N	358621	\N
1295194	113	1012	91411	\N
1295194	112	1011	91410	\N
1295194	30986	\N	358621	\N
1295195	113	1012	91411	\N
1295195	112	1011	91410	\N
1295195	30986	\N	358621	\N
1295196	113	1012	91411	\N
1295196	112	1011	91410	\N
1295196	30986	\N	358621	\N
1295197	113	1012	91411	\N
1295197	112	1011	91410	\N
1295197	30986	\N	358621	\N
1295198	113	1012	91411	\N
1295198	112	1011	91410	\N
1295198	30986	\N	358621	\N
1295199	113	1012	91411	\N
1295199	112	1011	91410	\N
1295199	30986	\N	358621	\N
1295200	113	1012	91411	\N
1295200	112	1011	91410	\N
1295200	30986	\N	358621	\N
1295201	113	1012	91411	\N
1295201	112	1011	91410	\N
1295201	30986	\N	358621	\N
1295202	113	1012	91411	\N
1295202	112	1011	91410	\N
1295202	30986	\N	358621	\N
1295203	113	1012	91411	\N
1295203	112	1011	91410	\N
1295203	30986	\N	358621	\N
1295204	113	1012	91411	\N
1295204	112	1011	91410	\N
1295204	30986	\N	358621	\N
1295205	113	1012	91411	\N
1295205	112	1011	91410	\N
1295205	30986	\N	358621	\N
1295206	113	1012	91411	\N
1295206	112	1011	91410	\N
1295206	30986	\N	358621	\N
1295207	113	1012	91411	\N
1295207	112	1011	91410	\N
1295207	30986	\N	358621	\N
1295208	113	1012	91411	\N
1295208	112	1011	91410	\N
1295208	30986	\N	358621	\N
1295209	113	1012	91411	\N
1295209	112	1011	91410	\N
1295209	30986	\N	358621	\N
1295210	113	1012	91411	\N
1295210	112	1011	91410	\N
1295210	30986	\N	358621	\N
1295211	113	1012	91411	\N
1295211	112	1011	91410	\N
1295211	30986	\N	358621	\N
1295212	113	1012	91411	\N
1295212	112	1011	91410	\N
1295212	30986	\N	358621	\N
1295213	113	1012	91411	\N
1295213	112	1011	91410	\N
1295213	30986	\N	358621	\N
1295214	113	1012	91411	\N
1295214	112	1011	91410	\N
1295214	30986	\N	358621	\N
1295215	113	1012	91411	\N
1295215	112	1011	91410	\N
1295215	30986	\N	358621	\N
1295216	113	1012	91411	\N
1295216	112	1011	91410	\N
1295216	30986	\N	358621	\N
1295217	113	1012	91411	\N
1295217	112	1011	91410	\N
1295217	30986	\N	358621	\N
1295218	113	1012	91411	\N
1295218	112	1011	91410	\N
1295218	30986	\N	358621	\N
1295219	113	1012	91411	\N
1295219	112	1011	91410	\N
1295219	30986	\N	358621	\N
1295220	113	1012	91411	\N
1295220	112	1011	91410	\N
1295220	30986	\N	358621	\N
1295221	113	1012	91411	\N
1295221	112	1011	91410	\N
1295221	30986	\N	358621	\N
1295222	113	1012	91411	\N
1295222	112	1011	91410	\N
1295222	30986	\N	358621	\N
1295223	113	1012	91411	\N
1295223	112	1011	91410	\N
1295223	30986	\N	358621	\N
1295224	113	1012	91411	\N
1295224	112	1011	91410	\N
1295224	30986	\N	358621	\N
1295225	113	1012	91411	\N
1295225	112	1011	91410	\N
1295225	30986	\N	358621	\N
1295226	113	1012	91411	\N
1295226	112	1011	91410	\N
1295226	30986	\N	358621	\N
1295227	113	1012	91411	\N
1295227	112	1011	91410	\N
1295227	30986	\N	358621	\N
1295228	113	1012	91411	\N
1295228	112	1011	91410	\N
1295228	30986	\N	358621	\N
1295229	113	1012	91411	\N
1295229	112	1011	91410	\N
1295229	30986	\N	358621	\N
1295230	113	1012	91411	\N
1295230	112	1011	91410	\N
1295230	30986	\N	358621	\N
1295231	113	1012	91411	\N
1295231	112	1011	91410	\N
1295231	30986	\N	358621	\N
1295232	113	1012	91411	\N
1295232	112	1011	91410	\N
1295232	30986	\N	358621	\N
1295233	113	1012	91411	\N
1295233	112	1011	91410	\N
1295233	30986	\N	358621	\N
1295234	113	1012	91411	\N
1295234	112	1011	91410	\N
1295234	30986	\N	358621	\N
1295235	113	1012	91411	\N
1295235	112	1011	91410	\N
1295235	30986	\N	358621	\N
1295236	113	1012	91411	\N
1295236	112	1011	91410	\N
1295236	30986	\N	358621	\N
1295237	113	1012	91411	\N
1295237	112	1011	91410	\N
1295237	30986	\N	358621	\N
1295238	113	1012	91411	\N
1295238	112	1011	91410	\N
1295238	30986	\N	358621	\N
1295239	113	1012	91411	\N
1295239	112	1011	91410	\N
1295239	30986	\N	358621	\N
1295240	113	1012	91411	\N
1295240	112	1011	91410	\N
1295240	30986	\N	358621	\N
1295241	113	1012	91411	\N
1295241	112	1011	91410	\N
1295241	30986	\N	358621	\N
1295242	113	1012	91411	\N
1295242	112	1011	91410	\N
1295242	30986	\N	358621	\N
1295243	113	1012	91411	\N
1295243	112	1011	91410	\N
1295243	30986	\N	358621	\N
1295244	113	1012	91411	\N
1295244	112	1011	91410	\N
1295244	30986	\N	358621	\N
1295245	113	1012	91411	\N
1295245	112	1011	91410	\N
1295245	30986	\N	358621	\N
1295246	113	1012	91411	\N
1295246	112	1011	91410	\N
1295246	30986	\N	358621	\N
1295247	113	1012	91411	\N
1295247	112	1011	91410	\N
1295247	30986	\N	358621	\N
1295248	113	1012	91411	\N
1295248	112	1011	91410	\N
1295248	30986	\N	358621	\N
1295249	113	1012	91411	\N
1295249	112	1011	91410	\N
1295249	30986	\N	358621	\N
1295250	113	1012	91411	\N
1295250	112	1011	91410	\N
1295250	30986	\N	358621	\N
1295251	113	1012	91411	\N
1295251	112	1011	91410	\N
1295251	30986	\N	358621	\N
1295252	113	1012	91411	\N
1295252	112	1011	91410	\N
1295252	30986	\N	358621	\N
1295253	113	1012	91411	\N
1295253	112	1011	91410	\N
1295253	30986	\N	358621	\N
1295254	113	1012	91411	\N
1295254	112	1011	91410	\N
1295254	30986	\N	358621	\N
1295255	113	1012	91411	\N
1295255	112	1011	91410	\N
1295255	30986	\N	358621	\N
1295256	113	1012	91411	\N
1295256	112	1011	91410	\N
1295256	30986	\N	358621	\N
1295257	113	1012	91411	\N
1295257	112	1011	91410	\N
1295257	30986	\N	358621	\N
1295258	113	1012	91411	\N
1295258	112	1011	91410	\N
1295258	30986	\N	358621	\N
1295259	113	1012	91411	\N
1295259	112	1011	91410	\N
1295259	30986	\N	358621	\N
1295260	113	1012	91411	\N
1295260	112	1011	91410	\N
1295260	30986	\N	358621	\N
1295261	113	1012	91411	\N
1295261	112	1011	91410	\N
1295261	30986	\N	358621	\N
1295262	113	1012	91411	\N
1295262	112	1011	91410	\N
1295262	30986	\N	358621	\N
1295263	113	1012	91411	\N
1295263	112	1011	91410	\N
1295263	30986	\N	358621	\N
1295264	113	1012	91411	\N
1295264	112	1011	91410	\N
1295264	30986	\N	358621	\N
1295265	113	1012	91411	\N
1295265	112	1011	91410	\N
1295265	30986	\N	358621	\N
1295266	113	1012	91411	\N
1295266	112	1011	91410	\N
1295266	30986	\N	358621	\N
1295267	113	1012	91411	\N
1295267	112	1011	91410	\N
1295267	30986	\N	358621	\N
1295268	113	1012	91411	\N
1295268	112	1011	91410	\N
1295268	30986	\N	358621	\N
1295269	113	1012	91411	\N
1295269	112	1011	91410	\N
1295269	30986	\N	358621	\N
1295270	113	1012	91411	\N
1295270	112	1011	91410	\N
1295270	30986	\N	358621	\N
1295271	113	1012	91411	\N
1295271	112	1011	91410	\N
1295271	30986	\N	358621	\N
1295272	113	1012	91411	\N
1295272	112	1011	91410	\N
1295272	30986	\N	358621	\N
1295273	113	1012	91411	\N
1295273	112	1011	91410	\N
1295273	30986	\N	358621	\N
1295274	113	1012	91411	\N
1295274	112	1011	91410	\N
1295274	30986	\N	358621	\N
1295275	113	1012	91411	\N
1295275	112	1011	91410	\N
1295275	30986	\N	358621	\N
1295276	113	1012	91411	\N
1295276	112	1011	91410	\N
1295276	30986	\N	358621	\N
1295277	113	1012	91411	\N
1295277	112	1011	91410	\N
1295277	30986	\N	358621	\N
1295278	113	1012	91411	\N
1295278	112	1011	91410	\N
1295278	30986	\N	358621	\N
1295279	113	1012	91411	\N
1295279	112	1011	91410	\N
1295279	30986	\N	358621	\N
1295280	113	1012	91411	\N
1295280	112	1011	91410	\N
1295280	30986	\N	358621	\N
1295281	113	1012	91411	\N
1295281	112	1011	91410	\N
1295281	30986	\N	358621	\N
1295282	113	1012	91411	\N
1295282	112	1011	91410	\N
1295282	30986	\N	358621	\N
1295283	113	1012	91411	\N
1295283	112	1011	91410	\N
1295283	30986	\N	358621	\N
1295284	113	1012	91411	\N
1295284	112	1011	91410	\N
1295284	30986	\N	358621	\N
1295285	113	1012	91411	\N
1295285	112	1011	91410	\N
1295285	30986	\N	358621	\N
1295286	113	1012	91411	\N
1295286	112	1011	91410	\N
1295286	30986	\N	358621	\N
1295287	113	1012	91411	\N
1295287	112	1011	91410	\N
1295287	30986	\N	358621	\N
1295288	113	1012	91411	\N
1295288	112	1011	91410	\N
1295288	30986	\N	358621	\N
1295289	113	1012	91411	\N
1295289	112	1011	91410	\N
1295289	30986	\N	358621	\N
1295290	113	1012	91411	\N
1295290	112	1011	91410	\N
1295290	30986	\N	358621	\N
1295291	113	1012	91411	\N
1295291	112	1011	91410	\N
1295291	30986	\N	358621	\N
1295292	113	1012	91411	\N
1295292	112	1011	91410	\N
1295292	30986	\N	358621	\N
1295293	113	1012	91411	\N
1295293	112	1011	91410	\N
1295293	30986	\N	358621	\N
1295294	113	1012	91411	\N
1295294	112	1011	91410	\N
1295294	30986	\N	358621	\N
1295295	113	1012	91411	\N
1295295	112	1011	91410	\N
1295295	30986	\N	358621	\N
1295296	113	1012	91411	\N
1295296	112	1011	91410	\N
1295296	30986	\N	358621	\N
1295297	113	1012	91411	\N
1295297	112	1011	91410	\N
1295297	30986	\N	358621	\N
1295298	113	1012	91411	\N
1295298	112	1011	91410	\N
1295298	30986	\N	358621	\N
1295299	113	1012	91411	\N
1295299	112	1011	91410	\N
1295299	30986	\N	358621	\N
1295300	113	1012	91411	\N
1295300	112	1011	91410	\N
1295300	30986	\N	358621	\N
1295301	113	1012	91411	\N
1295301	112	1011	91410	\N
1295301	30986	\N	358621	\N
1295302	113	1012	91411	\N
1295302	112	1011	91410	\N
1295302	30986	\N	358621	\N
1295303	113	1012	91411	\N
1295303	112	1011	91410	\N
1295303	30986	\N	358621	\N
1295304	113	1012	91411	\N
1295304	112	1011	91410	\N
1295304	30986	\N	358621	\N
1295305	113	1012	91411	\N
1295305	112	1011	91410	\N
1295305	30986	\N	358621	\N
1295306	113	1012	91411	\N
1295306	112	1011	91410	\N
1295306	30986	\N	358621	\N
1295307	113	1012	91411	\N
1295307	112	1011	91410	\N
1295307	30986	\N	358621	\N
1295308	113	1012	91411	\N
1295308	112	1011	91410	\N
1295308	30986	\N	358621	\N
1295309	113	1012	91411	\N
1295309	112	1011	91410	\N
1295309	30986	\N	358621	\N
1295310	113	1012	91411	\N
1295310	112	1011	91410	\N
1295310	30986	\N	358621	\N
1295311	113	1012	91411	\N
1295311	112	1011	91410	\N
1295311	30986	\N	358621	\N
1295312	113	1012	91411	\N
1295312	112	1011	91410	\N
1295312	30986	\N	358621	\N
1295313	113	1012	91411	\N
1295313	112	1011	91410	\N
1295313	30986	\N	358621	\N
1295314	113	1012	91411	\N
1295314	112	1011	91410	\N
1295314	30986	\N	358621	\N
1295315	113	1012	91411	\N
1295315	112	1011	91410	\N
1295315	30986	\N	358621	\N
1295316	113	1012	91411	\N
1295316	112	1011	91410	\N
1295316	30986	\N	358621	\N
1295317	113	1012	91411	\N
1295317	112	1011	91410	\N
1295317	30986	\N	358621	\N
1295318	113	1012	91411	\N
1295318	112	1011	91410	\N
1295318	30986	\N	358621	\N
1295319	113	1012	91411	\N
1295319	112	1011	91410	\N
1295319	30986	\N	358621	\N
1295320	113	1012	91411	\N
1295320	112	1011	91410	\N
1295320	30986	\N	358621	\N
1295321	113	1012	91411	\N
1295321	112	1011	91410	\N
1295321	30986	\N	358621	\N
1295322	113	1012	91411	\N
1295322	112	1011	91410	\N
1295322	30986	\N	358621	\N
1295323	113	1012	91411	\N
1295323	112	1011	91410	\N
1295323	30986	\N	358621	\N
1295324	113	1012	91411	\N
1295324	112	1011	91410	\N
1295324	30986	\N	358621	\N
1295325	113	1012	91411	\N
1295325	112	1011	91410	\N
1295325	30986	\N	358621	\N
1295326	113	1012	91411	\N
1295326	112	1011	91410	\N
1295326	30986	\N	358621	\N
1295327	113	1012	91411	\N
1295327	112	1011	91410	\N
1295327	30986	\N	358621	\N
1295328	113	1012	91411	\N
1295328	112	1011	91410	\N
1295328	30986	\N	358621	\N
1295329	113	1012	91411	\N
1295329	112	1011	91410	\N
1295329	30986	\N	358621	\N
1295330	113	1012	91411	\N
1295330	112	1011	91410	\N
1295330	30986	\N	358621	\N
1295331	113	1012	91411	\N
1295331	112	1011	91410	\N
1295331	30986	\N	358621	\N
1295332	113	1012	91411	\N
1295332	112	1011	91410	\N
1295332	30986	\N	358621	\N
1295333	113	1012	91411	\N
1295333	112	1011	91410	\N
1295333	30986	\N	358621	\N
1295334	113	1012	91411	\N
1295334	112	1011	91410	\N
1295334	30986	\N	358621	\N
1295335	113	1012	91411	\N
1295335	112	1011	91410	\N
1295335	30986	\N	358621	\N
1295336	113	1012	91411	\N
1295336	112	1011	91410	\N
1295336	30986	\N	358621	\N
1295337	113	1012	91411	\N
1295337	112	1011	91410	\N
1295337	30986	\N	358621	\N
1295338	113	1012	91411	\N
1295338	112	1011	91410	\N
1295338	30986	\N	358621	\N
1295339	113	1012	91411	\N
1295339	112	1011	91410	\N
1295339	30986	\N	358621	\N
1295340	113	1012	91411	\N
1295340	112	1011	91410	\N
1295340	30986	\N	358621	\N
1295341	113	1012	91411	\N
1295341	112	1011	91410	\N
1295341	30986	\N	358621	\N
1295342	113	1012	91411	\N
1295342	112	1011	91410	\N
1295342	30986	\N	358621	\N
1295343	113	1012	91411	\N
1295343	112	1011	91410	\N
1295343	30986	\N	358621	\N
1295344	113	1012	91411	\N
1295344	112	1011	91410	\N
1295344	30986	\N	358621	\N
1295345	113	1012	91411	\N
1295345	112	1011	91410	\N
1295345	30986	\N	358621	\N
1295346	113	1012	91411	\N
1295346	112	1011	91410	\N
1295346	30986	\N	358621	\N
1295347	113	1012	91411	\N
1295347	112	1011	91410	\N
1295347	30986	\N	358621	\N
1295348	113	1012	91411	\N
1295348	112	1011	91410	\N
1295348	30986	\N	358621	\N
1295349	113	1012	91411	\N
1295349	112	1011	91410	\N
1295349	30986	\N	358621	\N
1295350	113	1012	91411	\N
1295350	112	1011	91410	\N
1295350	30986	\N	358621	\N
1295351	113	1012	91411	\N
1295351	112	1011	91410	\N
1295351	30986	\N	358621	\N
1295352	113	1012	91411	\N
1295352	112	1011	91410	\N
1295352	30986	\N	358621	\N
1295353	113	1012	91411	\N
1295353	112	1011	91410	\N
1295353	30986	\N	358621	\N
1295354	113	1012	91411	\N
1295354	112	1011	91410	\N
1295354	30986	\N	358621	\N
1295355	113	1012	91411	\N
1295355	112	1011	91410	\N
1295355	30986	\N	358621	\N
1295356	113	1012	91411	\N
1295356	112	1011	91410	\N
1295356	30986	\N	358621	\N
1295357	113	1012	91411	\N
1295357	112	1011	91410	\N
1295357	30986	\N	358621	\N
1295358	113	1012	91411	\N
1295358	112	1011	91410	\N
1295358	30986	\N	358621	\N
1295359	113	1012	91411	\N
1295359	112	1011	91410	\N
1295359	30986	\N	358621	\N
1295360	113	1012	91411	\N
1295360	112	1011	91410	\N
1295360	30986	\N	358621	\N
1295361	113	1012	91411	\N
1295361	112	1011	91410	\N
1295361	30986	\N	358621	\N
1295362	113	1012	91411	\N
1295362	112	1011	91410	\N
1295362	30986	\N	358621	\N
1295363	113	1012	91411	\N
1295363	112	1011	91410	\N
1295363	30986	\N	358621	\N
1295364	113	1012	91411	\N
1295364	112	1011	91410	\N
1295364	30986	\N	358621	\N
1295365	113	1012	91411	\N
1295365	112	1011	91410	\N
1295365	30986	\N	358621	\N
1295366	113	1012	91411	\N
1295366	112	1011	91410	\N
1295366	30986	\N	358621	\N
1295367	113	1012	91411	\N
1295367	112	1011	91410	\N
1295367	30986	\N	358621	\N
1295368	113	1012	91411	\N
1295368	112	1011	91410	\N
1295368	30986	\N	358621	\N
1295369	113	1012	91411	\N
1295369	112	1011	91410	\N
1295369	30986	\N	358621	\N
1295370	113	1012	91411	\N
1295370	112	1011	91410	\N
1295370	30986	\N	358621	\N
1295371	113	1012	91411	\N
1295371	112	1011	91410	\N
1295371	30986	\N	358621	\N
1295372	113	1012	91411	\N
1295372	112	1011	91410	\N
1295372	30986	\N	358621	\N
1295373	113	1012	91411	\N
1295373	112	1011	91410	\N
1295373	30986	\N	358621	\N
1295374	113	1012	91411	\N
1295374	112	1011	91410	\N
1295374	30986	\N	358621	\N
1295375	113	1012	91411	\N
1295375	112	1011	91410	\N
1295375	30986	\N	358621	\N
1295376	113	1012	91411	\N
1295376	112	1011	91410	\N
1295376	30986	\N	358621	\N
1295377	113	1012	91411	\N
1295377	112	1011	91410	\N
1295377	30986	\N	358621	\N
1295378	113	1012	91411	\N
1295378	112	1011	91410	\N
1295378	30986	\N	358621	\N
1295379	113	1012	91411	\N
1295379	112	1011	91410	\N
1295379	30986	\N	358621	\N
1295380	113	1012	91411	\N
1295380	112	1011	91410	\N
1295380	30986	\N	358621	\N
1295381	113	1012	91411	\N
1295381	112	1011	91410	\N
1295381	30986	\N	358621	\N
1295382	113	1012	91411	\N
1295382	112	1011	91410	\N
1295382	30986	\N	358621	\N
1295383	113	1012	91411	\N
1295383	112	1011	91410	\N
1295383	30986	\N	358621	\N
1295384	113	1012	91411	\N
1295384	112	1011	91410	\N
1295384	30986	\N	358621	\N
1295385	113	1012	91411	\N
1295385	112	1011	91410	\N
1295385	30986	\N	358621	\N
1295386	113	1012	91411	\N
1295386	112	1011	91410	\N
1295386	30986	\N	358621	\N
1295387	113	1012	91411	\N
1295387	112	1011	91410	\N
1295387	30986	\N	358621	\N
1295388	113	1012	91411	\N
1295388	112	1011	91410	\N
1295388	30986	\N	358621	\N
1295389	113	1012	91411	\N
1295389	112	1011	91410	\N
1295389	30986	\N	358621	\N
1295390	113	1012	91411	\N
1295390	112	1011	91410	\N
1295390	30986	\N	358621	\N
1295391	113	1012	91411	\N
1295391	112	1011	91410	\N
1295391	30986	\N	358621	\N
1295392	113	1012	91411	\N
1295392	112	1011	91410	\N
1295392	30986	\N	358621	\N
1295393	113	1012	91411	\N
1295393	112	1011	91410	\N
1295393	30986	\N	358621	\N
1295394	113	1012	91411	\N
1295394	112	1011	91410	\N
1295394	30986	\N	358621	\N
1295395	113	1012	91411	\N
1295395	112	1011	91410	\N
1295395	30986	\N	358621	\N
1295396	113	1012	91411	\N
1295396	112	1011	91410	\N
1295396	30986	\N	358621	\N
1295397	113	1012	91411	\N
1295397	112	1011	91410	\N
1295397	30986	\N	358621	\N
1295398	113	1012	91411	\N
1295398	112	1011	91410	\N
1295398	30986	\N	358621	\N
1295399	113	1012	91411	\N
1295399	112	1011	91410	\N
1295399	30986	\N	358621	\N
1295400	113	1012	91411	\N
1295400	112	1011	91410	\N
1295400	30986	\N	358621	\N
1295401	113	1012	91411	\N
1295401	112	1011	91410	\N
1295401	30986	\N	358621	\N
1295402	113	1012	91411	\N
1295402	112	1011	91410	\N
1295402	30986	\N	358621	\N
1295403	113	1012	91411	\N
1295403	112	1011	91410	\N
1295403	30986	\N	358621	\N
1295404	113	1012	91411	\N
1295404	112	1011	91410	\N
1295404	30986	\N	358621	\N
1295405	113	1012	91411	\N
1295405	112	1011	91410	\N
1295405	30986	\N	358621	\N
1295406	113	1012	91411	\N
1295406	112	1011	91410	\N
1295406	30986	\N	358621	\N
1295407	113	1012	91411	\N
1295407	112	1011	91410	\N
1295407	30986	\N	358621	\N
1295408	113	1012	91411	\N
1295408	112	1011	91410	\N
1295408	30986	\N	358621	\N
1295409	113	1012	91411	\N
1295409	112	1011	91410	\N
1295409	30986	\N	358621	\N
1295410	113	1012	91411	\N
1295410	112	1011	91410	\N
1295410	30986	\N	358621	\N
1295411	113	1012	91411	\N
1295411	112	1011	91410	\N
1295411	30986	\N	358621	\N
1295412	113	1012	91411	\N
1295412	112	1011	91410	\N
1295412	30986	\N	358621	\N
1295413	113	1012	91411	\N
1295413	112	1011	91410	\N
1295413	30986	\N	358621	\N
1295414	113	1012	91411	\N
1295414	112	1011	91410	\N
1295414	30986	\N	358621	\N
1295415	113	1012	91411	\N
1295415	112	1011	91410	\N
1295415	30986	\N	358621	\N
1295416	113	1012	91411	\N
1295416	112	1011	91410	\N
1295416	30986	\N	358621	\N
1295417	113	1012	91411	\N
1295417	112	1011	91410	\N
1295417	30986	\N	358621	\N
1295418	113	1012	91411	\N
1295418	112	1011	91410	\N
1295418	30986	\N	358621	\N
1295419	113	1012	91411	\N
1295419	112	1011	91410	\N
1295419	30986	\N	358621	\N
1295420	113	1012	91411	\N
1295420	112	1011	91410	\N
1295420	30986	\N	358621	\N
1295421	113	1012	91411	\N
1295421	112	1011	91410	\N
1295421	30986	\N	358621	\N
1295422	113	1012	91411	\N
1295422	112	1011	91410	\N
1295422	30986	\N	358621	\N
1295423	113	1012	91411	\N
1295423	112	1011	91410	\N
1295423	30986	\N	358621	\N
1295424	113	1012	91411	\N
1295424	112	1011	91410	\N
1295424	30986	\N	358621	\N
1295425	113	1012	91411	\N
1295425	112	1011	91410	\N
1295425	30986	\N	358621	\N
1295426	113	1012	91411	\N
1295426	112	1011	91410	\N
1295426	30986	\N	358621	\N
1295427	113	1012	91411	\N
1295427	112	1011	91410	\N
1295427	30986	\N	358621	\N
1295428	113	1012	91411	\N
1295428	112	1011	91410	\N
1295428	30986	\N	358621	\N
1295429	113	1012	91411	\N
1295429	112	1011	91410	\N
1295429	30986	\N	358621	\N
1295430	113	1012	91411	\N
1295430	112	1011	91410	\N
1295430	30986	\N	358621	\N
1295431	113	1012	91411	\N
1295431	112	1011	91410	\N
1295431	30986	\N	358621	\N
1295432	113	1012	91411	\N
1295432	112	1011	91410	\N
1295432	30986	\N	358621	\N
1295433	113	1012	91411	\N
1295433	112	1011	91410	\N
1295433	30986	\N	358621	\N
1295434	113	1012	91411	\N
1295434	112	1011	91410	\N
1295434	30986	\N	358621	\N
1295435	113	1012	91411	\N
1295435	112	1011	91410	\N
1295435	30986	\N	358621	\N
1295436	113	1012	91411	\N
1295436	112	1011	91410	\N
1295436	30986	\N	358621	\N
1295437	113	1012	91411	\N
1295437	112	1011	91410	\N
1295437	30986	\N	358621	\N
1295438	113	1012	91411	\N
1295438	112	1011	91410	\N
1295438	30986	\N	358621	\N
1295439	113	1012	91411	\N
1295439	112	1011	91410	\N
1295439	30986	\N	358621	\N
1295440	113	1012	91411	\N
1295440	112	1011	91410	\N
1295440	30986	\N	358621	\N
1295441	113	1012	91411	\N
1295441	112	1011	91410	\N
1295441	30986	\N	358621	\N
1295442	113	1012	91411	\N
1295442	112	1011	91410	\N
1295442	30986	\N	358621	\N
1295443	113	1012	91411	\N
1295443	112	1011	91410	\N
1295443	30986	\N	358621	\N
1295444	113	1012	91411	\N
1295444	112	1011	91410	\N
1295444	30986	\N	358621	\N
1295445	113	1012	91411	\N
1295445	112	1011	91410	\N
1295445	30986	\N	358621	\N
1295446	113	1012	91411	\N
1295446	112	1011	91410	\N
1295446	30986	\N	358621	\N
1295447	113	1012	91411	\N
1295447	112	1011	91410	\N
1295447	30986	\N	358621	\N
1295448	113	1012	91411	\N
1295448	112	1011	91410	\N
1295448	30986	\N	358621	\N
1295449	113	1012	91411	\N
1295449	112	1011	91410	\N
1295449	30986	\N	358621	\N
1295450	113	1012	91411	\N
1295450	112	1011	91410	\N
1295450	30986	\N	358621	\N
1295451	113	1012	91411	\N
1295451	112	1011	91410	\N
1295451	30986	\N	358621	\N
1295452	113	1012	91411	\N
1295452	112	1011	91410	\N
1295452	30986	\N	358621	\N
1295453	113	1012	91411	\N
1295453	112	1011	91410	\N
1295453	30986	\N	358621	\N
1295454	113	1012	91411	\N
1295454	112	1011	91410	\N
1295454	30986	\N	358621	\N
1295455	113	1012	91411	\N
1295455	112	1011	91410	\N
1295455	30986	\N	358621	\N
1295456	113	1012	91411	\N
1295456	112	1011	91410	\N
1295456	30986	\N	358621	\N
1295457	113	1012	91411	\N
1295457	112	1011	91410	\N
1295457	30986	\N	358621	\N
1295458	113	1012	91411	\N
1295458	112	1011	91410	\N
1295458	30986	\N	358621	\N
1295459	113	1012	91411	\N
1295459	112	1011	91410	\N
1295459	30986	\N	358621	\N
1295460	113	1012	91411	\N
1295460	112	1011	91410	\N
1295460	30986	\N	358621	\N
1295461	113	1012	91411	\N
1295461	112	1011	91410	\N
1295461	30986	\N	358621	\N
1295462	113	1012	91411	\N
1295462	112	1011	91410	\N
1295462	30986	\N	358621	\N
1295463	113	1012	91411	\N
1295463	112	1011	91410	\N
1295463	30986	\N	358621	\N
1295464	113	1012	91411	\N
1295464	112	1011	91410	\N
1295464	30986	\N	358621	\N
1295465	113	1012	91411	\N
1295465	112	1011	91410	\N
1295465	30986	\N	358621	\N
1295466	113	1012	91411	\N
1295466	112	1011	91410	\N
1295466	30986	\N	358621	\N
1295467	113	1012	91411	\N
1295467	112	1011	91410	\N
1295467	30986	\N	358621	\N
1295468	113	1012	91411	\N
1295468	112	1011	91410	\N
1295468	30986	\N	358621	\N
1295469	113	1012	91411	\N
1295469	112	1011	91410	\N
1295469	30986	\N	358621	\N
1295470	113	1012	91411	\N
1295470	112	1011	91410	\N
1295470	30986	\N	358621	\N
1295471	113	1012	91411	\N
1295471	112	1011	91410	\N
1295471	30986	\N	358621	\N
1295472	113	1012	91411	\N
1295472	112	1011	91410	\N
1295472	30986	\N	358621	\N
1295473	113	1012	91411	\N
1295473	112	1011	91410	\N
1295473	30986	\N	358621	\N
1295474	113	1012	91411	\N
1295474	112	1011	91410	\N
1295474	30986	\N	358621	\N
1295475	113	1012	91411	\N
1295475	112	1011	91410	\N
1295475	30986	\N	358621	\N
1295476	113	1012	91411	\N
1295476	112	1011	91410	\N
1295476	30986	\N	358621	\N
1295477	113	1012	91411	\N
1295477	112	1011	91410	\N
1295477	30986	\N	358621	\N
1295478	113	1012	91411	\N
1295478	112	1011	91410	\N
1295478	30986	\N	358621	\N
1295479	113	1012	91411	\N
1295479	112	1011	91410	\N
1295479	30986	\N	358621	\N
1295480	113	1012	91411	\N
1295480	112	1011	91410	\N
1295480	30986	\N	358621	\N
1295481	113	1012	91411	\N
1295481	112	1011	91410	\N
1295481	30986	\N	358621	\N
1295482	113	1012	91411	\N
1295482	112	1011	91410	\N
1295482	30986	\N	358621	\N
1295483	113	1012	91411	\N
1295483	112	1011	91410	\N
1295483	30986	\N	358621	\N
1295484	113	1012	91411	\N
1295484	112	1011	91410	\N
1295484	30986	\N	358621	\N
1295485	113	1012	91411	\N
1295485	112	1011	91410	\N
1295485	30986	\N	358621	\N
1295486	113	1012	91411	\N
1295486	112	1011	91410	\N
1295486	30986	\N	358621	\N
1295487	113	1012	91411	\N
1295487	112	1011	91410	\N
1295487	30986	\N	358621	\N
1295488	113	1012	91411	\N
1295488	112	1011	91410	\N
1295488	30986	\N	358621	\N
1295489	113	1012	91411	\N
1295489	112	1011	91410	\N
1295489	30986	\N	358621	\N
1295490	113	1012	91411	\N
1295490	112	1011	91410	\N
1295490	30986	\N	358621	\N
1295491	113	1012	91411	\N
1295491	112	1011	91410	\N
1295491	30986	\N	358621	\N
1295492	113	1012	91411	\N
1295492	112	1011	91410	\N
1295492	30986	\N	358621	\N
1295493	113	1012	91411	\N
1295493	112	1011	91410	\N
1295493	30986	\N	358621	\N
1295494	113	1012	91411	\N
1295494	112	1011	91410	\N
1295494	30986	\N	358621	\N
1295495	113	1012	91411	\N
1295495	112	1011	91410	\N
1295495	30986	\N	358621	\N
1295496	113	1012	91411	\N
1295496	112	1011	91410	\N
1295496	30986	\N	358621	\N
1295497	113	1012	91411	\N
1295497	112	1011	91410	\N
1295497	30986	\N	358621	\N
1295498	113	1012	91411	\N
1295498	112	1011	91410	\N
1295498	30986	\N	358621	\N
1295499	113	1012	91411	\N
1295499	112	1011	91410	\N
1295499	30986	\N	358621	\N
1295500	113	1012	91411	\N
1295500	112	1011	91410	\N
1295500	30986	\N	358621	\N
1295501	113	1012	91411	\N
1295501	112	1011	91410	\N
1295501	30986	\N	358621	\N
1295502	113	1012	91411	\N
1295502	112	1011	91410	\N
1295502	30986	\N	358621	\N
1295503	113	1012	91411	\N
1295503	112	1011	91410	\N
1295503	30986	\N	358621	\N
1295504	113	1012	91411	\N
1295504	112	1011	91410	\N
1295504	30986	\N	358621	\N
1295505	113	1012	91411	\N
1295505	112	1011	91410	\N
1295505	30986	\N	358621	\N
1295506	113	1012	91411	\N
1295506	112	1011	91410	\N
1295506	30986	\N	358621	\N
1295507	113	1012	91411	\N
1295507	112	1011	91410	\N
1295507	30986	\N	358621	\N
1295508	113	1012	91411	\N
1295508	112	1011	91410	\N
1295508	30986	\N	358621	\N
1295509	113	1012	91411	\N
1295509	112	1011	91410	\N
1295509	30986	\N	358621	\N
1295510	113	1012	91411	\N
1295510	112	1011	91410	\N
1295510	30986	\N	358621	\N
1295511	113	1012	91411	\N
1295511	112	1011	91410	\N
1295511	30986	\N	358621	\N
1295512	113	1012	91411	\N
1295512	112	1011	91410	\N
1295512	30986	\N	358621	\N
1295513	113	1012	91411	\N
1295513	112	1011	91410	\N
1295513	30986	\N	358621	\N
1295514	113	1012	91411	\N
1295514	112	1011	91410	\N
1295514	30986	\N	358621	\N
1295515	113	1012	91411	\N
1295515	112	1011	91410	\N
1295515	30986	\N	358621	\N
1295516	113	1012	91411	\N
1295516	112	1011	91410	\N
1295516	30986	\N	358621	\N
1295517	113	1012	91411	\N
1295517	112	1011	91410	\N
1295517	30986	\N	358621	\N
1295518	113	1012	91411	\N
1295518	112	1011	91410	\N
1295518	30986	\N	358621	\N
1295519	113	1012	91411	\N
1295519	112	1011	91410	\N
1295519	30986	\N	358621	\N
1295520	113	1012	91411	\N
1295520	112	1011	91410	\N
1295520	30986	\N	358621	\N
1295521	113	1012	91411	\N
1295521	112	1011	91410	\N
1295521	30986	\N	358621	\N
1295522	113	1012	91411	\N
1295522	112	1011	91410	\N
1295522	30986	\N	358621	\N
1295523	113	1012	91411	\N
1295523	112	1011	91410	\N
1295523	30986	\N	358621	\N
1295524	113	1012	91411	\N
1295524	112	1011	91410	\N
1295524	30986	\N	358621	\N
1295525	113	1012	91411	\N
1295525	112	1011	91410	\N
1295525	30986	\N	358621	\N
1295526	113	1012	91411	\N
1295526	112	1011	91410	\N
1295526	30986	\N	358621	\N
1295527	113	1012	91411	\N
1295527	112	1011	91410	\N
1295527	30986	\N	358621	\N
1295528	113	1012	91411	\N
1295528	112	1011	91410	\N
1295528	30986	\N	358621	\N
1295529	113	1012	91411	\N
1295529	112	1011	91410	\N
1295529	30986	\N	358621	\N
1295530	113	1012	91411	\N
1295530	112	1011	91410	\N
1295530	30986	\N	358621	\N
1295531	113	1012	91411	\N
1295531	112	1011	91410	\N
1295531	30986	\N	358621	\N
1295532	113	1012	91411	\N
1295532	112	1011	91410	\N
1295532	30986	\N	358621	\N
1295533	113	1012	91411	\N
1295533	112	1011	91410	\N
1295533	30986	\N	358621	\N
1295534	113	1012	91411	\N
1295534	112	1011	91410	\N
1295534	30986	\N	358621	\N
1295535	113	1012	91411	\N
1295535	112	1011	91410	\N
1295535	30986	\N	358621	\N
1295536	113	1012	91411	\N
1295536	112	1011	91410	\N
1295536	30986	\N	358621	\N
1295537	113	1012	91411	\N
1295537	112	1011	91410	\N
1295537	30986	\N	358621	\N
1295538	113	1012	91411	\N
1295538	112	1011	91410	\N
1295538	30986	\N	358621	\N
1295539	113	1012	91411	\N
1295539	112	1011	91410	\N
1295539	30986	\N	358621	\N
1295540	113	1012	91411	\N
1295540	112	1011	91410	\N
1295540	30986	\N	358621	\N
1295541	113	1012	91411	\N
1295541	112	1011	91410	\N
1295541	30986	\N	358621	\N
1295542	113	1012	91411	\N
1295542	112	1011	91410	\N
1295542	30986	\N	358621	\N
1295543	113	1012	91411	\N
1295543	112	1011	91410	\N
1295543	30986	\N	358621	\N
1295544	113	1012	91411	\N
1295544	112	1011	91410	\N
1295544	30986	\N	358621	\N
1295545	113	1012	91411	\N
1295545	112	1011	91410	\N
1295545	30986	\N	358621	\N
1295546	113	1012	91411	\N
1295546	112	1011	91410	\N
1295546	30986	\N	358621	\N
1295547	113	1012	91411	\N
1295547	112	1011	91410	\N
1295547	30986	\N	358621	\N
1295548	113	1012	91411	\N
1295548	112	1011	91410	\N
1295548	30986	\N	358621	\N
1295549	113	1012	91411	\N
1295549	112	1011	91410	\N
1295549	30986	\N	358621	\N
1295550	113	1012	91411	\N
1295550	112	1011	91410	\N
1295550	30986	\N	358621	\N
1295551	113	1012	91411	\N
1295551	112	1011	91410	\N
1295551	30986	\N	358621	\N
1295552	113	1012	91411	\N
1295552	112	1011	91410	\N
1295552	30986	\N	358621	\N
1295553	113	1012	91411	\N
1295553	112	1011	91410	\N
1295553	30986	\N	358621	\N
1295554	113	1012	91411	\N
1295554	112	1011	91410	\N
1295554	30986	\N	358621	\N
1295555	113	1012	91411	\N
1295555	112	1011	91410	\N
1295555	30986	\N	358621	\N
1295556	113	1012	91411	\N
1295556	112	1011	91410	\N
1295556	30986	\N	358621	\N
1295557	113	1012	91411	\N
1295557	112	1011	91410	\N
1295557	30986	\N	358621	\N
1295558	113	1012	91411	\N
1295558	112	1011	91410	\N
1295558	30986	\N	358621	\N
1295559	113	1012	91411	\N
1295559	112	1011	91410	\N
1295559	30986	\N	358621	\N
1295560	113	1012	91411	\N
1295560	112	1011	91410	\N
1295560	30986	\N	358621	\N
1295561	113	1012	91411	\N
1295561	112	1011	91410	\N
1295561	30986	\N	358621	\N
1295562	113	1012	91411	\N
1295562	112	1011	91410	\N
1295562	30986	\N	358621	\N
1295563	113	1012	91411	\N
1295563	112	1011	91410	\N
1295563	30986	\N	358621	\N
1295564	113	1012	91411	\N
1295564	112	1011	91410	\N
1295564	30986	\N	358621	\N
1295565	113	1012	91411	\N
1295565	112	1011	91410	\N
1295565	30986	\N	358621	\N
1295566	113	1012	91411	\N
1295566	112	1011	91410	\N
1295566	30986	\N	358621	\N
1295567	113	1012	91411	\N
1295567	112	1011	91410	\N
1295567	30986	\N	358621	\N
1295568	113	1012	91411	\N
1295568	112	1011	91410	\N
1295568	30986	\N	358621	\N
1295569	113	1012	91411	\N
1295569	112	1011	91410	\N
1295569	30986	\N	358621	\N
1295570	113	1012	91411	\N
1295570	112	1011	91410	\N
1295570	30986	\N	358621	\N
1295571	113	1012	91411	\N
1295571	112	1011	91410	\N
1295571	30986	\N	358621	\N
1295572	113	1012	91411	\N
1295572	112	1011	91410	\N
1295572	30986	\N	358621	\N
1295573	113	1012	91411	\N
1295573	112	1011	91410	\N
1295573	30986	\N	358621	\N
1295574	113	1012	91411	\N
1295574	112	1011	91410	\N
1295574	30986	\N	358621	\N
1295575	113	1012	91411	\N
1295575	112	1011	91410	\N
1295575	30986	\N	358621	\N
1295576	113	1012	91411	\N
1295576	112	1011	91410	\N
1295576	30986	\N	358621	\N
1295577	113	1012	91411	\N
1295577	112	1011	91410	\N
1295577	30986	\N	358621	\N
1295578	113	1012	91411	\N
1295578	112	1011	91410	\N
1295578	30986	\N	358621	\N
1295579	113	1012	91411	\N
1295579	112	1011	91410	\N
1295579	30986	\N	358621	\N
1295580	113	1012	91411	\N
1295580	112	1011	91410	\N
1295580	30986	\N	358621	\N
1295581	113	1012	91411	\N
1295581	112	1011	91410	\N
1295581	30986	\N	358621	\N
1295582	113	1012	91411	\N
1295582	112	1011	91410	\N
1295582	30986	\N	358621	\N
1295583	113	1012	91411	\N
1295583	112	1011	91410	\N
1295583	30986	\N	358621	\N
1295584	113	1012	91411	\N
1295584	112	1011	91410	\N
1295584	30986	\N	358621	\N
1295585	113	1012	91411	\N
1295585	112	1011	91410	\N
1295585	30986	\N	358621	\N
1295586	113	1012	91411	\N
1295586	112	1011	91410	\N
1295586	30986	\N	358621	\N
1295587	113	1012	91411	\N
1295587	112	1011	91410	\N
1295587	30986	\N	358621	\N
1295588	113	1012	91411	\N
1295588	112	1011	91410	\N
1295588	30986	\N	358621	\N
1295589	113	1012	91411	\N
1295589	112	1011	91410	\N
1295589	30986	\N	358621	\N
1295590	113	1012	91411	\N
1295590	112	1011	91410	\N
1295590	30986	\N	358621	\N
1295591	113	1012	91411	\N
1295591	112	1011	91410	\N
1295591	30986	\N	358621	\N
1295592	113	1012	91411	\N
1295592	112	1011	91410	\N
1295592	30986	\N	358621	\N
1295593	113	1012	91411	\N
1295593	112	1011	91410	\N
1295593	30986	\N	358621	\N
1295594	113	1012	91411	\N
1295594	112	1011	91410	\N
1295594	30986	\N	358621	\N
1295595	113	1012	91411	\N
1295595	112	1011	91410	\N
1295595	30986	\N	358621	\N
1295596	113	1012	91411	\N
1295596	112	1011	91410	\N
1295596	30986	\N	358621	\N
1295597	113	1012	91411	\N
1295597	112	1011	91410	\N
1295597	30986	\N	358621	\N
1295598	113	1012	91411	\N
1295598	112	1011	91410	\N
1295598	30986	\N	358621	\N
1295599	113	1012	91411	\N
1295599	112	1011	91410	\N
1295599	30986	\N	358621	\N
1295600	113	1012	91411	\N
1295600	112	1011	91410	\N
1295600	30986	\N	358621	\N
1295601	113	1012	91411	\N
1295601	112	1011	91410	\N
1295601	30986	\N	358621	\N
1295602	113	1012	91411	\N
1295602	112	1011	91410	\N
1295602	30986	\N	358621	\N
1295603	113	1012	91411	\N
1295603	112	1011	91410	\N
1295603	30986	\N	358621	\N
1295604	113	1012	91411	\N
1295604	112	1011	91410	\N
1295604	30986	\N	358621	\N
1295605	113	1012	91411	\N
1295605	112	1011	91410	\N
1295605	30986	\N	358621	\N
1295606	113	1012	91411	\N
1295606	112	1011	91410	\N
1295606	30986	\N	358621	\N
1295607	113	1012	91411	\N
1295607	112	1011	91410	\N
1295607	30986	\N	358621	\N
1295608	113	1012	91411	\N
1295608	112	1011	91410	\N
1295608	30986	\N	358621	\N
1295609	113	1012	91411	\N
1295609	112	1011	91410	\N
1295609	30986	\N	358621	\N
1295610	113	1012	91411	\N
1295610	112	1011	91410	\N
1295610	30986	\N	358621	\N
1295611	113	1012	91411	\N
1295611	112	1011	91410	\N
1295611	30986	\N	358621	\N
1295612	113	1012	91411	\N
1295612	112	1011	91410	\N
1295612	30986	\N	358621	\N
1295613	113	1012	91411	\N
1295613	112	1011	91410	\N
1295613	30986	\N	358621	\N
1295614	113	1012	91411	\N
1295614	112	1011	91410	\N
1295614	30986	\N	358621	\N
1295615	113	1012	91411	\N
1295615	112	1011	91410	\N
1295615	30986	\N	358621	\N
1295616	113	1012	91411	\N
1295616	112	1011	91410	\N
1295616	30986	\N	358621	\N
1295617	113	1012	91411	\N
1295617	112	1011	91410	\N
1295617	30986	\N	358621	\N
1295618	113	1012	91411	\N
1295618	112	1011	91410	\N
1295618	30986	\N	358621	\N
1295619	113	1012	91411	\N
1295619	112	1011	91410	\N
1295619	30986	\N	358621	\N
1295620	113	1012	91411	\N
1295620	112	1011	91410	\N
1295620	30986	\N	358621	\N
1295621	113	1012	91411	\N
1295621	112	1011	91410	\N
1295621	30986	\N	358621	\N
1295622	113	1012	91411	\N
1295622	112	1011	91410	\N
1295622	30986	\N	358621	\N
1295623	113	1012	91411	\N
1295623	112	1011	91410	\N
1295623	30986	\N	358621	\N
1295624	113	1012	91411	\N
1295624	112	1011	91410	\N
1295624	30986	\N	358621	\N
1295625	113	1012	91411	\N
1295625	112	1011	91410	\N
1295625	30986	\N	358621	\N
1295626	113	1012	91411	\N
1295626	112	1011	91410	\N
1295626	30986	\N	358621	\N
1295627	113	1012	91411	\N
1295627	112	1011	91410	\N
1295627	30986	\N	358621	\N
1295628	113	1012	91411	\N
1295628	112	1011	91410	\N
1295628	30986	\N	358621	\N
1295629	113	1012	91411	\N
1295629	112	1011	91410	\N
1295629	30986	\N	358621	\N
1295630	113	1012	91411	\N
1295630	112	1011	91410	\N
1295630	30986	\N	358621	\N
1295631	113	1012	91411	\N
1295631	112	1011	91410	\N
1295631	30986	\N	358621	\N
1295632	113	1012	91411	\N
1295632	112	1011	91410	\N
1295632	30986	\N	358621	\N
1295633	113	1012	91411	\N
1295633	112	1011	91410	\N
1295633	30986	\N	358621	\N
1295634	113	1012	91411	\N
1295634	112	1011	91410	\N
1295634	30986	\N	358621	\N
1295635	113	1012	91411	\N
1295635	112	1011	91410	\N
1295635	30986	\N	358621	\N
1295636	113	1012	91411	\N
1295636	112	1011	91410	\N
1295636	30986	\N	358621	\N
1295637	113	1012	91411	\N
1295637	112	1011	91410	\N
1295637	30986	\N	358621	\N
1295638	113	1012	91411	\N
1295638	112	1011	91410	\N
1295638	30986	\N	358621	\N
1295639	113	1012	91411	\N
1295639	112	1011	91410	\N
1295639	30986	\N	358621	\N
1295640	113	1012	91411	\N
1295640	112	1011	91410	\N
1295640	30986	\N	358621	\N
1295641	113	1012	91411	\N
1295641	112	1011	91410	\N
1295641	30986	\N	358621	\N
1295642	113	1012	91411	\N
1295642	112	1011	91410	\N
1295642	30986	\N	358621	\N
1295643	113	1012	91411	\N
1295643	112	1011	91410	\N
1295643	30986	\N	358621	\N
1295644	113	1012	91411	\N
1295644	112	1011	91410	\N
1295644	30986	\N	358621	\N
1295645	113	1012	91411	\N
1295645	112	1011	91410	\N
1295645	30986	\N	358621	\N
1295646	113	1012	91411	\N
1295646	112	1011	91410	\N
1295646	30986	\N	358621	\N
1295647	113	1012	91411	\N
1295647	112	1011	91410	\N
1295647	30986	\N	358621	\N
1295648	113	1012	91411	\N
1295648	112	1011	91410	\N
1295648	30986	\N	358621	\N
1295649	113	1012	91411	\N
1295649	112	1011	91410	\N
1295649	30986	\N	358621	\N
1295650	113	1012	91411	\N
1295650	112	1011	91410	\N
1295650	30986	\N	358621	\N
1295651	113	1012	91411	\N
1295651	112	1011	91410	\N
1295651	30986	\N	358621	\N
1295652	113	1012	91411	\N
1295652	112	1011	91410	\N
1295652	30986	\N	358621	\N
1295653	113	1012	91411	\N
1295653	112	1011	91410	\N
1295653	30986	\N	358621	\N
1295654	113	1012	91411	\N
1295654	112	1011	91410	\N
1295654	30986	\N	358621	\N
1295655	113	1012	91411	\N
1295655	112	1011	91410	\N
1295655	30986	\N	358621	\N
1295656	113	1012	91411	\N
1295656	112	1011	91410	\N
1295656	30986	\N	358621	\N
1295657	113	1012	91411	\N
1295657	112	1011	91410	\N
1295657	30986	\N	358621	\N
1295658	113	1012	91411	\N
1295658	112	1011	91410	\N
1295658	30986	\N	358621	\N
1295659	113	1012	91411	\N
1295659	112	1011	91410	\N
1295659	30986	\N	358621	\N
1295660	113	1012	91411	\N
1295660	112	1011	91410	\N
1295660	30986	\N	358621	\N
1295661	113	1012	91411	\N
1295661	112	1011	91410	\N
1295661	30986	\N	358621	\N
1295662	113	1012	91411	\N
1295662	112	1011	91410	\N
1295662	30986	\N	358621	\N
1295663	113	1012	91411	\N
1295663	112	1011	91410	\N
1295663	30986	\N	358621	\N
1295664	113	1012	91411	\N
1295664	112	1011	91410	\N
1295664	30986	\N	358621	\N
1295665	113	1012	91411	\N
1295665	112	1011	91410	\N
1295665	30986	\N	358621	\N
1295666	113	1012	91411	\N
1295666	112	1011	91410	\N
1295666	30986	\N	358621	\N
1295667	113	1012	91411	\N
1295667	112	1011	91410	\N
1295667	30986	\N	358621	\N
1295668	113	1012	91411	\N
1295668	112	1011	91410	\N
1295668	30986	\N	358621	\N
1295669	113	1012	91411	\N
1295669	112	1011	91410	\N
1295669	30986	\N	358621	\N
1295670	113	1012	91411	\N
1295670	112	1011	91410	\N
1295670	30986	\N	358621	\N
1295671	113	1012	91411	\N
1295671	112	1011	91410	\N
1295671	30986	\N	358621	\N
1295672	113	1012	91411	\N
1295672	112	1011	91410	\N
1295672	30986	\N	358621	\N
1295673	113	1012	91411	\N
1295673	112	1011	91410	\N
1295673	30986	\N	358621	\N
1295674	113	1012	91411	\N
1295674	112	1011	91410	\N
1295674	30986	\N	358621	\N
1295675	113	1012	91411	\N
1295675	112	1011	91410	\N
1295675	30986	\N	358621	\N
1295676	113	1012	91411	\N
1295676	112	1011	91410	\N
1295676	30986	\N	358621	\N
1295677	113	1012	91411	\N
1295677	112	1011	91410	\N
1295677	30986	\N	358621	\N
1295678	113	1012	91411	\N
1295678	112	1011	91410	\N
1295678	30986	\N	358621	\N
1295679	113	1012	91411	\N
1295679	112	1011	91410	\N
1295679	30986	\N	358621	\N
1295680	113	1012	91411	\N
1295680	112	1011	91410	\N
1295680	30986	\N	358621	\N
1295681	113	1012	91411	\N
1295681	112	1011	91410	\N
1295681	30986	\N	358621	\N
1295682	113	1012	91411	\N
1295682	112	1011	91410	\N
1295682	30986	\N	358621	\N
1295683	113	1012	91411	\N
1295683	112	1011	91410	\N
1295683	30986	\N	358621	\N
1295684	113	1012	91411	\N
1295684	112	1011	91410	\N
1295684	30986	\N	358621	\N
1295685	113	1012	91411	\N
1295685	112	1011	91410	\N
1295685	30986	\N	358621	\N
1295686	113	1012	91411	\N
1295686	112	1011	91410	\N
1295686	30986	\N	358621	\N
1295687	113	1012	91411	\N
1295687	112	1011	91410	\N
1295687	30986	\N	358621	\N
1295688	113	1012	91411	\N
1295688	112	1011	91410	\N
1295688	30986	\N	358621	\N
1295689	113	1012	91411	\N
1295689	112	1011	91410	\N
1295689	30986	\N	358621	\N
1295690	113	1012	91411	\N
1295690	112	1011	91410	\N
1295690	30986	\N	358621	\N
1295691	113	1012	91411	\N
1295691	112	1011	91410	\N
1295691	30986	\N	358621	\N
1295692	113	1012	91411	\N
1295692	112	1011	91410	\N
1295692	30986	\N	358621	\N
1295693	113	1012	91411	\N
1295693	112	1011	91410	\N
1295693	30986	\N	358621	\N
1295694	113	1012	91411	\N
1295694	112	1011	91410	\N
1295694	30986	\N	358621	\N
1295695	113	1012	91411	\N
1295695	112	1011	91410	\N
1295695	30986	\N	358621	\N
1295696	113	1012	91411	\N
1295696	112	1011	91410	\N
1295696	30986	\N	358621	\N
1295697	113	1012	91411	\N
1295697	112	1011	91410	\N
1295697	30986	\N	358621	\N
1295698	113	1012	91411	\N
1295698	112	1011	91410	\N
1295698	30986	\N	358621	\N
1295699	113	1012	91411	\N
1295699	112	1011	91410	\N
1295699	30986	\N	358621	\N
1295700	113	1012	91411	\N
1295700	112	1011	91410	\N
1295700	30986	\N	358621	\N
1295701	113	1012	91411	\N
1295701	112	1011	91410	\N
1295701	30986	\N	358621	\N
1295702	113	1012	91411	\N
1295702	112	1011	91410	\N
1295702	30986	\N	358621	\N
1295703	113	1012	91411	\N
1295703	112	1011	91410	\N
1295703	30986	\N	358621	\N
1295704	113	1012	91411	\N
1295704	112	1011	91410	\N
1295704	30986	\N	358621	\N
1295705	113	1012	91411	\N
1295705	112	1011	91410	\N
1295705	30986	\N	358621	\N
1295706	113	1012	91411	\N
1295706	112	1011	91410	\N
1295706	30986	\N	358621	\N
1295707	113	1012	91411	\N
1295707	112	1011	91410	\N
1295707	30986	\N	358621	\N
1295708	113	1012	91411	\N
1295708	112	1011	91410	\N
1295708	30986	\N	358621	\N
1295709	113	1012	91411	\N
1295709	112	1011	91410	\N
1295709	30986	\N	358621	\N
1295710	113	1012	91411	\N
1295710	112	1011	91410	\N
1295710	30986	\N	358621	\N
1295711	113	1012	91411	\N
1295711	112	1011	91410	\N
1295711	30986	\N	358621	\N
1295712	113	1012	91411	\N
1295712	112	1011	91410	\N
1295712	30986	\N	358621	\N
1295713	113	1012	91411	\N
1295713	112	1011	91410	\N
1295713	30986	\N	358621	\N
1295714	113	1012	91411	\N
1295714	112	1011	91410	\N
1295714	30986	\N	358621	\N
1295715	113	1012	91411	\N
1295715	112	1011	91410	\N
1295715	30986	\N	358621	\N
1295716	113	1012	91411	\N
1295716	112	1011	91410	\N
1295716	30986	\N	358621	\N
1295717	113	1012	91411	\N
1295717	112	1011	91410	\N
1295717	30986	\N	358621	\N
1295718	113	1012	91411	\N
1295718	112	1011	91410	\N
1295718	30986	\N	358621	\N
1295719	113	1012	91411	\N
1295719	112	1011	91410	\N
1295719	30986	\N	358621	\N
1295720	113	1012	91411	\N
1295720	112	1011	91410	\N
1295720	30986	\N	358621	\N
1295721	113	1012	91411	\N
1295721	112	1011	91410	\N
1295721	30986	\N	358621	\N
1295722	113	1012	91411	\N
1295722	112	1011	91410	\N
1295722	30986	\N	358621	\N
1295723	113	1012	91411	\N
1295723	112	1011	91410	\N
1295723	30986	\N	358621	\N
1295724	113	1012	91411	\N
1295724	112	1011	91410	\N
1295724	30986	\N	358621	\N
1295725	113	1012	91411	\N
1295725	112	1011	91410	\N
1295725	30986	\N	358621	\N
1295726	113	1012	91411	\N
1295726	112	1011	91410	\N
1295726	30986	\N	358621	\N
1295727	113	1012	91411	\N
1295727	112	1011	91410	\N
1295727	30986	\N	358621	\N
1295728	113	1012	91411	\N
1295728	112	1011	91410	\N
1295728	30986	\N	358621	\N
1295729	113	1012	91411	\N
1295729	112	1011	91410	\N
1295729	30986	\N	358621	\N
1295730	113	1012	91411	\N
1295730	112	1011	91410	\N
1295730	30986	\N	358621	\N
1295731	113	1012	91411	\N
1295731	112	1011	91410	\N
1295731	30986	\N	358621	\N
1295732	113	1012	91411	\N
1295732	112	1011	91410	\N
1295732	30986	\N	358621	\N
1295733	113	1012	91411	\N
1295733	112	1011	91410	\N
1295733	30986	\N	358621	\N
1295734	113	1012	91411	\N
1295734	112	1011	91410	\N
1295734	30986	\N	358621	\N
1295735	113	1012	91411	\N
1295735	112	1011	91410	\N
1295735	30986	\N	358621	\N
1295736	113	1012	91411	\N
1295736	112	1011	91410	\N
1295736	30986	\N	358621	\N
1295737	113	1012	91411	\N
1295737	112	1011	91410	\N
1295737	30986	\N	358621	\N
1295738	113	1012	91411	\N
1295738	112	1011	91410	\N
1295738	30986	\N	358621	\N
1295739	113	1012	91411	\N
1295739	112	1011	91410	\N
1295739	30986	\N	358621	\N
1295740	113	1012	91411	\N
1295740	112	1011	91410	\N
1295740	30986	\N	358621	\N
1295741	113	1012	91411	\N
1295741	112	1011	91410	\N
1295741	30986	\N	358621	\N
1295742	113	1012	91411	\N
1295742	112	1011	91410	\N
1295742	30986	\N	358621	\N
1295743	113	1012	91411	\N
1295743	112	1011	91410	\N
1295743	30986	\N	358621	\N
1295744	113	1012	91411	\N
1295744	112	1011	91410	\N
1295744	30986	\N	358621	\N
1295745	113	1012	91411	\N
1295745	112	1011	91410	\N
1295745	30986	\N	358621	\N
1295746	113	1012	91411	\N
1295746	112	1011	91410	\N
1295746	30986	\N	358621	\N
1295747	113	1012	91411	\N
1295747	112	1011	91410	\N
1295747	30986	\N	358621	\N
1295748	113	1012	91411	\N
1295748	112	1011	91410	\N
1295748	30986	\N	358621	\N
1295749	113	1012	91411	\N
1295749	112	1011	91410	\N
1295749	30986	\N	358621	\N
1295750	113	1012	91411	\N
1295750	112	1011	91410	\N
1295750	30986	\N	358621	\N
1295751	113	1012	91411	\N
1295751	112	1011	91410	\N
1295751	30986	\N	358621	\N
1295752	113	1012	91411	\N
1295752	112	1011	91410	\N
1295752	30986	\N	358621	\N
1295753	113	1012	91411	\N
1295753	112	1011	91410	\N
1295753	30986	\N	358621	\N
1295754	113	1012	91411	\N
1295754	112	1011	91410	\N
1295754	30986	\N	358621	\N
1295755	113	1012	91411	\N
1295755	112	1011	91410	\N
1295755	30986	\N	358621	\N
1295756	113	1012	91411	\N
1295756	112	1011	91410	\N
1295756	30986	\N	358621	\N
1295757	113	1012	91411	\N
1295757	112	1011	91410	\N
1295757	30986	\N	358621	\N
1295758	113	1012	91411	\N
1295758	112	1011	91410	\N
1295758	30986	\N	358621	\N
1295759	113	1012	91411	\N
1295759	112	1011	91410	\N
1295759	30986	\N	358621	\N
1295760	113	1012	91411	\N
1295760	112	1011	91410	\N
1295760	30986	\N	358621	\N
1295761	113	1012	91411	\N
1295761	112	1011	91410	\N
1295761	30986	\N	358621	\N
1295762	113	1012	91411	\N
1295762	112	1011	91410	\N
1295762	30986	\N	358621	\N
1295763	113	1012	91411	\N
1295763	112	1011	91410	\N
1295763	30986	\N	358621	\N
1295764	113	1012	91411	\N
1295764	112	1011	91410	\N
1295764	30986	\N	358621	\N
1295765	113	1012	91411	\N
1295765	112	1011	91410	\N
1295765	30986	\N	358621	\N
1295766	113	1012	91411	\N
1295766	112	1011	91410	\N
1295766	30986	\N	358621	\N
1295767	113	1012	91411	\N
1295767	112	1011	91410	\N
1295767	30986	\N	358621	\N
1295768	113	1012	91411	\N
1295768	112	1011	91410	\N
1295768	30986	\N	358621	\N
1295769	113	1012	91411	\N
1295769	112	1011	91410	\N
1295769	30986	\N	358621	\N
1295770	113	1012	91411	\N
1295770	112	1011	91410	\N
1295770	30986	\N	358621	\N
1295771	113	1012	91411	\N
1295771	112	1011	91410	\N
1295771	30986	\N	358621	\N
1295772	113	1012	91411	\N
1295772	112	1011	91410	\N
1295772	30986	\N	358621	\N
1295773	113	1012	91411	\N
1295773	112	1011	91410	\N
1295773	30986	\N	358621	\N
1295774	113	1012	91411	\N
1295774	112	1011	91410	\N
1295774	30986	\N	358621	\N
1295775	113	1012	91411	\N
1295775	112	1011	91410	\N
1295775	30986	\N	358621	\N
1295776	113	1012	91411	\N
1295776	112	1011	91410	\N
1295776	30986	\N	358621	\N
1295777	113	1012	91411	\N
1295777	112	1011	91410	\N
1295777	30986	\N	358621	\N
1295778	113	1012	91411	\N
1295778	112	1011	91410	\N
1295778	30986	\N	358621	\N
1295779	113	1012	91411	\N
1295779	112	1011	91410	\N
1295779	30986	\N	358621	\N
1295780	113	1012	91411	\N
1295780	112	1011	91410	\N
1295780	30986	\N	358621	\N
1295781	113	1012	91411	\N
1295781	112	1011	91410	\N
1295781	30986	\N	358621	\N
1295782	113	1012	91411	\N
1295782	112	1011	91410	\N
1295782	30986	\N	358621	\N
1295783	113	1012	91411	\N
1295783	112	1011	91410	\N
1295783	30986	\N	358621	\N
1295784	113	1012	91411	\N
1295784	112	1011	91410	\N
1295784	30986	\N	358621	\N
1295785	113	1012	91411	\N
1295785	112	1011	91410	\N
1295785	30986	\N	358621	\N
1295786	113	1012	91411	\N
1295786	112	1011	91410	\N
1295786	30986	\N	358621	\N
1295787	113	1012	91411	\N
1295787	112	1011	91410	\N
1295787	30986	\N	358621	\N
1295788	113	1012	91411	\N
1295788	112	1011	91410	\N
1295788	30986	\N	358621	\N
1295789	113	1012	91411	\N
1295789	112	1011	91410	\N
1295789	30986	\N	358621	\N
1295790	113	1012	91411	\N
1295790	112	1011	91410	\N
1295790	30986	\N	358621	\N
1295791	113	1012	91411	\N
1295791	112	1011	91410	\N
1295791	30986	\N	358621	\N
1295792	113	1012	91411	\N
1295792	112	1011	91410	\N
1295792	30986	\N	358621	\N
1295793	113	1012	91411	\N
1295793	112	1011	91410	\N
1295793	30986	\N	358621	\N
1295794	113	1012	91411	\N
1295794	112	1011	91410	\N
1295794	30986	\N	358621	\N
1295795	113	1012	91411	\N
1295795	112	1011	91410	\N
1295795	30986	\N	358621	\N
1295796	113	1012	91411	\N
1295796	112	1011	91410	\N
1295796	30986	\N	358621	\N
1295797	113	1012	91411	\N
1295797	112	1011	91410	\N
1295797	30986	\N	358621	\N
1295798	113	1012	91411	\N
1295798	112	1011	91410	\N
1295798	30986	\N	358621	\N
1295799	113	1012	91411	\N
1295799	112	1011	91410	\N
1295799	30986	\N	358621	\N
1295800	113	1012	91411	\N
1295800	112	1011	91410	\N
1295800	30986	\N	358621	\N
1295801	113	1012	91411	\N
1295801	112	1011	91410	\N
1295801	30986	\N	358621	\N
1295802	113	1012	91411	\N
1295802	112	1011	91410	\N
1295802	30986	\N	358621	\N
1295803	113	1012	91411	\N
1295803	112	1011	91410	\N
1295803	30986	\N	358621	\N
1295804	113	1012	91411	\N
1295804	112	1011	91410	\N
1295804	30986	\N	358621	\N
1295805	113	1012	91411	\N
1295805	112	1011	91410	\N
1295805	30986	\N	358621	\N
1295806	113	1012	91411	\N
1295806	112	1011	91410	\N
1295806	30986	\N	358621	\N
1295807	113	1012	91411	\N
1295807	112	1011	91410	\N
1295807	30986	\N	358621	\N
1295808	113	1012	91411	\N
1295808	112	1011	91410	\N
1295808	30986	\N	358621	\N
1295809	113	1012	91411	\N
1295809	112	1011	91410	\N
1295809	30986	\N	358621	\N
1295810	113	1012	91411	\N
1295810	112	1011	91410	\N
1295810	30986	\N	358621	\N
1295811	113	1012	91411	\N
1295811	112	1011	91410	\N
1295811	30986	\N	358621	\N
1295812	113	1012	91411	\N
1295812	112	1011	91410	\N
1295812	30986	\N	358621	\N
1295813	113	1012	91411	\N
1295813	112	1011	91410	\N
1295813	30986	\N	358621	\N
1295814	113	1012	91411	\N
1295814	112	1011	91410	\N
1295814	30986	\N	358621	\N
1295815	113	1012	91411	\N
1295815	112	1011	91410	\N
1295815	30986	\N	358621	\N
1295816	113	1012	91411	\N
1295816	112	1011	91410	\N
1295816	30986	\N	358621	\N
1295817	113	1012	91411	\N
1295817	112	1011	91410	\N
1295817	30986	\N	358621	\N
1295818	113	1012	91411	\N
1295818	112	1011	91410	\N
1295818	30986	\N	358621	\N
1295819	113	1012	91411	\N
1295819	112	1011	91410	\N
1295819	30986	\N	358621	\N
1295820	113	1012	91411	\N
1295820	112	1011	91410	\N
1295820	30986	\N	358621	\N
1295821	113	1012	91411	\N
1295821	112	1011	91410	\N
1295821	30986	\N	358621	\N
1295822	113	1012	91411	\N
1295822	112	1011	91410	\N
1295822	30986	\N	358621	\N
1295823	113	1012	91411	\N
1295823	112	1011	91410	\N
1295823	30986	\N	358621	\N
1295824	113	1012	91411	\N
1295824	112	1011	91410	\N
1295824	30986	\N	358621	\N
1295825	113	1012	91411	\N
1295825	112	1011	91410	\N
1295825	30986	\N	358621	\N
1295826	113	1012	91411	\N
1295826	112	1011	91410	\N
1295826	30986	\N	358621	\N
1295827	113	1012	91411	\N
1295827	112	1011	91410	\N
1295827	30986	\N	358621	\N
1295828	113	1012	91411	\N
1295828	112	1011	91410	\N
1295828	30986	\N	358621	\N
1295829	113	1012	91411	\N
1295829	112	1011	91410	\N
1295829	30986	\N	358621	\N
1295830	113	1012	91411	\N
1295830	112	1011	91410	\N
1295830	30986	\N	358621	\N
1295831	113	1012	91411	\N
1295831	112	1011	91410	\N
1295831	30986	\N	358621	\N
1295832	113	1012	91411	\N
1295832	112	1011	91410	\N
1295832	30986	\N	358621	\N
1295833	113	1012	91411	\N
1295833	112	1011	91410	\N
1295833	30986	\N	358621	\N
1295834	113	1012	91411	\N
1295834	112	1011	91410	\N
1295834	30986	\N	358621	\N
1295835	113	1012	91411	\N
1295835	112	1011	91410	\N
1295835	30986	\N	358621	\N
1295836	113	1012	91411	\N
1295836	112	1011	91410	\N
1295836	30986	\N	358621	\N
1295837	113	1012	91411	\N
1295837	112	1011	91410	\N
1295837	30986	\N	358621	\N
1295838	113	1012	91411	\N
1295838	112	1011	91410	\N
1295838	30986	\N	358621	\N
1295839	113	1012	91411	\N
1295839	112	1011	91410	\N
1295839	30986	\N	358621	\N
1295840	113	1012	91411	\N
1295840	112	1011	91410	\N
1295840	30986	\N	358621	\N
1295841	113	1012	91411	\N
1295841	112	1011	91410	\N
1295841	30986	\N	358621	\N
1295842	113	1012	91411	\N
1295842	112	1011	91410	\N
1295842	30986	\N	358621	\N
1295843	113	1012	91411	\N
1295843	112	1011	91410	\N
1295843	30986	\N	358621	\N
1295844	113	1012	91411	\N
1295844	112	1011	91410	\N
1295844	30986	\N	358621	\N
1295845	113	1012	91411	\N
1295845	112	1011	91410	\N
1295845	30986	\N	358621	\N
1295846	113	1012	91411	\N
1295846	112	1011	91410	\N
1295846	30986	\N	358621	\N
1295847	113	1012	91411	\N
1295847	112	1011	91410	\N
1295847	30986	\N	358621	\N
1295848	113	1012	91411	\N
1295848	112	1011	91410	\N
1295848	30986	\N	358621	\N
1295849	113	1012	91411	\N
1295849	112	1011	91410	\N
1295849	30986	\N	358621	\N
1295850	113	1012	91411	\N
1295850	112	1011	91410	\N
1295850	30986	\N	358621	\N
1295851	113	1012	91411	\N
1295851	112	1011	91410	\N
1295851	30986	\N	358621	\N
1295852	113	1012	91411	\N
1295852	112	1011	91410	\N
1295852	30986	\N	358621	\N
1295853	113	1012	91411	\N
1295853	112	1011	91410	\N
1295853	30986	\N	358621	\N
1295854	113	1012	91411	\N
1295854	112	1011	91410	\N
1295854	30986	\N	358621	\N
1295855	113	1012	91411	\N
1295855	112	1011	91410	\N
1295855	30986	\N	358621	\N
1295856	113	1012	91411	\N
1295856	112	1011	91410	\N
1295856	30986	\N	358621	\N
1295857	113	1012	91411	\N
1295857	112	1011	91410	\N
1295857	30986	\N	358621	\N
1295858	113	1012	91411	\N
1295858	112	1011	91410	\N
1295858	30986	\N	358621	\N
1295859	113	1012	91411	\N
1295859	112	1011	91410	\N
1295859	30986	\N	358621	\N
1295860	113	1012	91411	\N
1295860	112	1011	91410	\N
1295860	30986	\N	358621	\N
1295861	113	1012	91411	\N
1295861	112	1011	91410	\N
1295861	30986	\N	358621	\N
1295862	113	1012	91411	\N
1295862	112	1011	91410	\N
1295862	30986	\N	358621	\N
1295863	113	1012	91411	\N
1295863	112	1011	91410	\N
1295863	30986	\N	358621	\N
1295864	113	1012	91411	\N
1295864	112	1011	91410	\N
1295864	30986	\N	358621	\N
1295865	113	1012	91411	\N
1295865	112	1011	91410	\N
1295865	30986	\N	358621	\N
1295866	113	1012	91411	\N
1295866	112	1011	91410	\N
1295866	30986	\N	358621	\N
1295867	113	1012	91411	\N
1295867	112	1011	91410	\N
1295867	30986	\N	358621	\N
1295868	113	1012	91411	\N
1295868	112	1011	91410	\N
1295868	30986	\N	358621	\N
1295869	113	1012	91411	\N
1295869	112	1011	91410	\N
1295869	30986	\N	358621	\N
1295870	113	1012	91411	\N
1295870	112	1011	91410	\N
1295870	30986	\N	358621	\N
1295871	113	1012	91411	\N
1295871	112	1011	91410	\N
1295871	30986	\N	358621	\N
1295872	113	1012	91411	\N
1295872	112	1011	91410	\N
1295872	30986	\N	358621	\N
1295873	113	1012	91411	\N
1295873	112	1011	91410	\N
1295873	30986	\N	358621	\N
1295874	113	1012	91411	\N
1295874	112	1011	91410	\N
1295874	30986	\N	358621	\N
1295875	113	1012	91411	\N
1295875	112	1011	91410	\N
1295875	30986	\N	358621	\N
1295876	113	1012	91411	\N
1295876	112	1011	91410	\N
1295876	30986	\N	358621	\N
1295877	113	1012	91411	\N
1295877	112	1011	91410	\N
1295877	30986	\N	358621	\N
1295878	113	1012	91411	\N
1295878	112	1011	91410	\N
1295878	30986	\N	358621	\N
1295879	113	1012	91411	\N
1295879	112	1011	91410	\N
1295879	30986	\N	358621	\N
1295880	113	1012	91411	\N
1295880	112	1011	91410	\N
1295880	30986	\N	358621	\N
1295881	113	1012	91411	\N
1295881	112	1011	91410	\N
1295881	30986	\N	358621	\N
1295882	113	1012	91411	\N
1295882	112	1011	91410	\N
1295882	30986	\N	358621	\N
1295883	113	1012	91411	\N
1295883	112	1011	91410	\N
1295883	30986	\N	358621	\N
1295884	113	1012	91411	\N
1295884	112	1011	91410	\N
1295884	30986	\N	358621	\N
1295885	113	1012	91411	\N
1295885	112	1011	91410	\N
1295885	30986	\N	358621	\N
1295886	113	1012	91411	\N
1295886	112	1011	91410	\N
1295886	30986	\N	358621	\N
1295887	113	1012	91411	\N
1295887	112	1011	91410	\N
1295887	30986	\N	358621	\N
1295888	113	1012	91411	\N
1295888	112	1011	91410	\N
1295888	30986	\N	358621	\N
1295889	113	1012	91411	\N
1295889	112	1011	91410	\N
1295889	30986	\N	358621	\N
1295890	113	1012	91411	\N
1295890	112	1011	91410	\N
1295890	30986	\N	358621	\N
1295891	113	1012	91411	\N
1295891	112	1011	91410	\N
1295891	30986	\N	358621	\N
1295892	113	1012	91411	\N
1295892	112	1011	91410	\N
1295892	30986	\N	358621	\N
1295893	113	1012	91411	\N
1295893	112	1011	91410	\N
1295893	30986	\N	358621	\N
1295894	113	1012	91411	\N
1295894	112	1011	91410	\N
1295894	30986	\N	358621	\N
1295895	113	1012	91411	\N
1295895	112	1011	91410	\N
1295895	30986	\N	358621	\N
1295896	113	1012	91411	\N
1295896	112	1011	91410	\N
1295896	30986	\N	358621	\N
1295897	113	1012	91411	\N
1295897	112	1011	91410	\N
1295897	30986	\N	358621	\N
1295898	113	1012	91411	\N
1295898	112	1011	91410	\N
1295898	30986	\N	358621	\N
1295899	113	1012	91411	\N
1295899	112	1011	91410	\N
1295899	30986	\N	358621	\N
1295900	113	1012	91411	\N
1295900	112	1011	91410	\N
1295900	30986	\N	358621	\N
1295901	113	1012	91411	\N
1295901	112	1011	91410	\N
1295901	30986	\N	358621	\N
1295902	113	1012	91411	\N
1295902	112	1011	91410	\N
1295902	30986	\N	358621	\N
1295903	113	1012	91411	\N
1295903	112	1011	91410	\N
1295903	30986	\N	358621	\N
1295904	113	1012	91411	\N
1295904	112	1011	91410	\N
1295904	30986	\N	358621	\N
1295905	113	1012	91411	\N
1295905	112	1011	91410	\N
1295905	30986	\N	358621	\N
1295906	113	1012	91411	\N
1295906	112	1011	91410	\N
1295906	30986	\N	358621	\N
1295907	113	1012	91411	\N
1295907	112	1011	91410	\N
1295907	30986	\N	358621	\N
1295908	113	1012	91411	\N
1295908	112	1011	91410	\N
1295908	30986	\N	358621	\N
1295909	113	1012	91411	\N
1295909	112	1011	91410	\N
1295909	30986	\N	358621	\N
1295910	113	1012	91411	\N
1295910	112	1011	91410	\N
1295910	30986	\N	358621	\N
1295911	113	1012	91411	\N
1295911	112	1011	91410	\N
1295911	30986	\N	358621	\N
1295912	113	1012	91411	\N
1295912	112	1011	91410	\N
1295912	30986	\N	358621	\N
1295913	113	1012	91411	\N
1295913	112	1011	91410	\N
1295913	30986	\N	358621	\N
1295914	113	1012	91411	\N
1295914	112	1011	91410	\N
1295914	30986	\N	358621	\N
1295915	113	1012	91411	\N
1295915	112	1011	91410	\N
1295915	30986	\N	358621	\N
1295916	113	1012	91411	\N
1295916	112	1011	91410	\N
1295916	30986	\N	358621	\N
1295917	113	1012	91411	\N
1295917	112	1011	91410	\N
1295917	30986	\N	358621	\N
1295918	113	1012	91411	\N
1295918	112	1011	91410	\N
1295918	30986	\N	358621	\N
1295919	113	1012	91411	\N
1295919	112	1011	91410	\N
1295919	30986	\N	358621	\N
1295920	113	1012	91411	\N
1295920	112	1011	91410	\N
1295920	30986	\N	358621	\N
1295921	113	1012	91411	\N
1295921	112	1011	91410	\N
1295921	30986	\N	358621	\N
1295922	113	1012	91411	\N
1295922	112	1011	91410	\N
1295922	30986	\N	358621	\N
1295923	113	1012	91411	\N
1295923	112	1011	91410	\N
1295923	30986	\N	358621	\N
1295924	113	1012	91411	\N
1295924	112	1011	91410	\N
1295924	30986	\N	358621	\N
1295925	113	1012	91411	\N
1295925	112	1011	91410	\N
1295925	30986	\N	358621	\N
1295926	113	1012	91411	\N
1295926	112	1011	91410	\N
1295926	30986	\N	358621	\N
1295927	113	1012	91411	\N
1295927	112	1011	91410	\N
1295927	30986	\N	358621	\N
1295928	113	1012	91411	\N
1295928	112	1011	91410	\N
1295928	30986	\N	358621	\N
1295929	113	1012	91411	\N
1295929	112	1011	91410	\N
1295929	30986	\N	358621	\N
1295930	113	1012	91411	\N
1295930	112	1011	91410	\N
1295930	30986	\N	358621	\N
1295931	113	1012	91411	\N
1295931	112	1011	91410	\N
1295931	30986	\N	358621	\N
1295932	113	1012	91411	\N
1295932	112	1011	91410	\N
1295932	30986	\N	358621	\N
1295933	113	1012	91411	\N
1295933	112	1011	91410	\N
1295933	30986	\N	358621	\N
1295934	113	1012	91411	\N
1295934	112	1011	91410	\N
1295934	30986	\N	358621	\N
1295935	113	1012	91411	\N
1295935	112	1011	91410	\N
1295935	30986	\N	358621	\N
1295936	113	1012	91411	\N
1295936	112	1011	91410	\N
1295936	30986	\N	358621	\N
1295937	113	1012	91411	\N
1295937	112	1011	91410	\N
1295937	30986	\N	358621	\N
1295938	113	1012	91411	\N
1295938	112	1011	91410	\N
1295938	30986	\N	358621	\N
1295939	113	1012	91411	\N
1295939	112	1011	91410	\N
1295939	30986	\N	358621	\N
1295940	113	1012	91411	\N
1295940	112	1011	91410	\N
1295940	30986	\N	358621	\N
1295941	113	1012	91411	\N
1295941	112	1011	91410	\N
1295941	30986	\N	358621	\N
1295942	113	1012	91411	\N
1295942	112	1011	91410	\N
1295942	30986	\N	358621	\N
1295943	113	1012	91411	\N
1295943	112	1011	91410	\N
1295943	30986	\N	358621	\N
1295944	113	1012	91411	\N
1295944	112	1011	91410	\N
1295944	30986	\N	358621	\N
1295945	113	1012	91411	\N
1295945	112	1011	91410	\N
1295945	30986	\N	358621	\N
1295946	113	1012	91411	\N
1295946	112	1011	91410	\N
1295946	30986	\N	358621	\N
1295947	113	1012	91411	\N
1295947	112	1011	91410	\N
1295947	30986	\N	358621	\N
1295948	113	1012	91411	\N
1295948	112	1011	91410	\N
1295948	30986	\N	358621	\N
1295949	113	1012	91411	\N
1295949	112	1011	91410	\N
1295949	30986	\N	358621	\N
1295950	113	1012	91411	\N
1295950	112	1011	91410	\N
1295950	30986	\N	358621	\N
1295951	113	1012	91411	\N
1295951	112	1011	91410	\N
1295951	30986	\N	358621	\N
1295952	113	1012	91411	\N
1295952	112	1011	91410	\N
1295952	30986	\N	358621	\N
1295953	113	1012	91411	\N
1295953	112	1011	91410	\N
1295953	30986	\N	358621	\N
1295954	113	1012	91411	\N
1295954	112	1011	91410	\N
1295954	30986	\N	358621	\N
1295955	113	1012	91411	\N
1295955	112	1011	91410	\N
1295955	30986	\N	358621	\N
1295956	113	1012	91411	\N
1295956	112	1011	91410	\N
1295956	30986	\N	358621	\N
1295957	113	1012	91411	\N
1295957	112	1011	91410	\N
1295957	30986	\N	358621	\N
1295958	113	1012	91411	\N
1295958	112	1011	91410	\N
1295958	30986	\N	358621	\N
1295959	113	1012	91411	\N
1295959	112	1011	91410	\N
1295959	30986	\N	358621	\N
1295960	113	1012	91411	\N
1295960	112	1011	91410	\N
1295960	30986	\N	358621	\N
1295961	113	1012	91411	\N
1295961	112	1011	91410	\N
1295961	30986	\N	358621	\N
1295962	113	1012	91411	\N
1295962	112	1011	91410	\N
1295962	30986	\N	358621	\N
1295963	113	1012	91411	\N
1295963	112	1011	91410	\N
1295963	30986	\N	358621	\N
1295964	113	1012	91411	\N
1295964	112	1011	91410	\N
1295964	30986	\N	358621	\N
1295965	113	1012	91411	\N
1295965	112	1011	91410	\N
1295965	30986	\N	358621	\N
1295966	113	1012	91411	\N
1295966	112	1011	91410	\N
1295966	30986	\N	358621	\N
1295967	113	1012	91411	\N
1295967	112	1011	91410	\N
1295967	30986	\N	358621	\N
1295968	113	1012	91411	\N
1295968	112	1011	91410	\N
1295968	30986	\N	358621	\N
1295969	113	1012	91411	\N
1295969	112	1011	91410	\N
1295969	30986	\N	358621	\N
1295970	113	1012	91411	\N
1295970	112	1011	91410	\N
1295970	30986	\N	358621	\N
1295971	113	1012	91411	\N
1295971	112	1011	91410	\N
1295971	30986	\N	358621	\N
1295972	113	1012	91411	\N
1295972	112	1011	91410	\N
1295972	30986	\N	358621	\N
1295973	113	1012	91411	\N
1295973	112	1011	91410	\N
1295973	30986	\N	358621	\N
1295974	113	1012	91411	\N
1295974	112	1011	91410	\N
1295974	30986	\N	358621	\N
1295975	113	1012	91411	\N
1295975	112	1011	91410	\N
1295975	30986	\N	358621	\N
1295976	113	1012	91411	\N
1295976	112	1011	91410	\N
1295976	30986	\N	358621	\N
1295977	113	1012	91411	\N
1295977	112	1011	91410	\N
1295977	30986	\N	358621	\N
1295978	113	1012	91411	\N
1295978	112	1011	91410	\N
1295978	30986	\N	358621	\N
1295979	113	1012	91411	\N
1295979	112	1011	91410	\N
1295979	30986	\N	358621	\N
1295980	113	1012	91411	\N
1295980	112	1011	91410	\N
1295980	30986	\N	358621	\N
1295981	113	1012	91411	\N
1295981	112	1011	91410	\N
1295981	30986	\N	358621	\N
1295982	113	1012	91411	\N
1295982	112	1011	91410	\N
1295982	30986	\N	358621	\N
1295983	113	1012	91411	\N
1295983	112	1011	91410	\N
1295983	30986	\N	358621	\N
1295984	113	1012	91411	\N
1295984	112	1011	91410	\N
1295984	30986	\N	358621	\N
1295985	113	1012	91411	\N
1295985	112	1011	91410	\N
1295985	30986	\N	358621	\N
1295986	113	1012	91411	\N
1295986	112	1011	91410	\N
1295986	30986	\N	358621	\N
1295987	113	1012	91411	\N
1295987	112	1011	91410	\N
1295987	30986	\N	358621	\N
1295988	113	1012	91411	\N
1295988	112	1011	91410	\N
1295988	30986	\N	358621	\N
1295989	113	1012	91411	\N
1295989	112	1011	91410	\N
1295989	30986	\N	358621	\N
1295990	113	1012	91411	\N
1295990	112	1011	91410	\N
1295990	30986	\N	358621	\N
1295991	113	1012	91411	\N
1295991	112	1011	91410	\N
1295991	30986	\N	358621	\N
1295992	113	1012	91411	\N
1295992	112	1011	91410	\N
1295992	30986	\N	358621	\N
1295993	113	1012	91411	\N
1295993	112	1011	91410	\N
1295993	30986	\N	358621	\N
1295994	113	1012	91411	\N
1295994	112	1011	91410	\N
1295994	30986	\N	358621	\N
1295995	113	1012	91411	\N
1295995	112	1011	91410	\N
1295995	30986	\N	358621	\N
1295996	113	1012	91411	\N
1295996	112	1011	91410	\N
1295996	30986	\N	358621	\N
1295997	113	1012	91411	\N
1295997	112	1011	91410	\N
1295997	30986	\N	358621	\N
1295998	113	1012	91411	\N
1295998	112	1011	91410	\N
1295998	30986	\N	358621	\N
1295999	113	1012	91411	\N
1295999	112	1011	91410	\N
1295999	30986	\N	358621	\N
1296000	113	1012	91411	\N
1296000	112	1011	91410	\N
1296000	30986	\N	358621	\N
1296001	113	1012	91411	\N
1296001	112	1011	91410	\N
1296001	30986	\N	358621	\N
1296002	113	1012	91411	\N
1296002	112	1011	91410	\N
1296002	30986	\N	358621	\N
1296003	113	1012	91411	\N
1296003	112	1011	91410	\N
1296003	30986	\N	358621	\N
1296004	113	1012	91411	\N
1296004	112	1011	91410	\N
1296004	30986	\N	358621	\N
1296005	113	1012	91411	\N
1296005	112	1011	91410	\N
1296005	30986	\N	358621	\N
1296006	113	1012	91411	\N
1296006	112	1011	91410	\N
1296006	30986	\N	358621	\N
1296007	113	1012	91411	\N
1296007	112	1011	91410	\N
1296007	30986	\N	358621	\N
1296008	113	1012	91411	\N
1296008	112	1011	91410	\N
1296008	30986	\N	358621	\N
1296009	113	1012	91411	\N
1296009	112	1011	91410	\N
1296009	30986	\N	358621	\N
1296010	113	1012	91411	\N
1296010	30986	\N	358621	\N
1296010	112	1011	91410	\N
1296011	113	1012	91411	\N
1296011	30986	\N	358621	\N
1296011	112	1011	91410	\N
1296012	113	1012	91411	\N
1296012	30986	\N	358621	\N
1296012	112	1011	91410	\N
1296013	113	1012	91411	\N
1296013	30986	\N	358621	\N
1296013	112	1011	91410	\N
1296014	113	1012	91411	\N
1296014	30986	\N	358621	\N
1296014	112	1011	91410	\N
1296015	113	1012	91411	\N
1296015	30986	\N	358621	\N
1296015	112	1011	91410	\N
1296016	113	1012	91411	\N
1296016	30986	\N	358621	\N
1296016	112	1011	91410	\N
1296017	113	1012	91411	\N
1296017	30986	\N	358621	\N
1296017	112	1011	91410	\N
1296018	113	1012	91411	\N
1296018	30986	\N	358621	\N
1296018	112	1011	91410	\N
1296019	113	1012	91411	\N
1296019	30986	\N	358621	\N
1296019	112	1011	91410	\N
1296020	113	1012	91411	\N
1296020	30986	\N	358621	\N
1296020	112	1011	91410	\N
1296021	113	1012	91411	\N
1296021	30986	\N	358621	\N
1296021	112	1011	91410	\N
1296022	113	1012	91411	\N
1296022	30986	\N	358621	\N
1296022	112	1011	91410	\N
1296023	113	1012	91411	\N
1296023	30986	\N	358621	\N
1296023	112	1011	91410	\N
1296024	113	1012	91411	\N
1296024	30986	\N	358621	\N
1296024	112	1011	91410	\N
1296025	113	1012	91411	\N
1296025	30986	\N	358621	\N
1296025	112	1011	91410	\N
1296026	113	1012	91411	\N
1296026	30986	\N	358621	\N
1296026	112	1011	91410	\N
1296027	113	1012	91411	\N
1296027	30986	\N	358621	\N
1296027	112	1011	91410	\N
1296028	113	1012	91411	\N
1296028	30986	\N	358621	\N
1296028	112	1011	91410	\N
1296029	113	1012	91411	\N
1296029	30986	\N	358621	\N
1296029	112	1011	91410	\N
1296030	113	1012	91411	\N
1296030	30986	\N	358621	\N
1296030	112	1011	91410	\N
1296031	113	1012	91411	\N
1296031	30986	\N	358621	\N
1296031	112	1011	91410	\N
1296032	113	1012	91411	\N
1296032	30986	\N	358621	\N
1296032	112	1011	91410	\N
1296033	113	1012	91411	\N
1296033	30986	\N	358621	\N
1296033	112	1011	91410	\N
1296034	113	1012	91411	\N
1296034	30986	\N	358621	\N
1296034	112	1011	91410	\N
1296035	113	1012	91411	\N
1296035	30986	\N	358621	\N
1296035	112	1011	91410	\N
1296036	113	1012	91411	\N
1296036	30986	\N	358621	\N
1296036	112	1011	91410	\N
1296037	113	1012	91411	\N
1296037	30986	\N	358621	\N
1296037	112	1011	91410	\N
1296038	113	1012	91411	\N
1296038	30986	\N	358621	\N
1296038	112	1011	91410	\N
1296039	113	1012	91411	\N
1296039	30986	\N	358621	\N
1296039	112	1011	91410	\N
1296040	113	1012	91411	\N
1296040	30986	\N	358621	\N
1296040	112	1011	91410	\N
1296041	113	1012	91411	\N
1296041	30986	\N	358621	\N
1296041	112	1011	91410	\N
1296042	113	1012	91411	\N
1296042	30986	\N	358621	\N
1296042	112	1011	91410	\N
1296043	113	1012	91411	\N
1296043	30986	\N	358621	\N
1296043	112	1011	91410	\N
1296044	113	1012	91411	\N
1296044	30986	\N	358621	\N
1296044	112	1011	91410	\N
1296045	113	1012	91411	\N
1296045	30986	\N	358621	\N
1296045	112	1011	91410	\N
1296046	113	1012	91411	\N
1296046	30986	\N	358621	\N
1296046	112	1011	91410	\N
1296047	113	1012	91411	\N
1296047	30986	\N	358621	\N
1296047	112	1011	91410	\N
1296048	113	1012	91411	\N
1296048	30986	\N	358621	\N
1296048	112	1011	91410	\N
1296049	113	1012	91411	\N
1296049	30986	\N	358621	\N
1296049	112	1011	91410	\N
1296050	113	1012	91411	\N
1296050	112	1011	91410	\N
1296050	30986	\N	358621	\N
1296051	113	1012	91411	\N
1296051	112	1011	91410	\N
1296051	30986	\N	358621	\N
1296052	113	1012	91411	\N
1296052	112	1011	91410	\N
1296052	30986	\N	358621	\N
1296053	113	1012	91411	\N
1296053	112	1011	91410	\N
1296053	30986	\N	358621	\N
1296054	113	1012	91411	\N
1296054	112	1011	91410	\N
1296054	30986	\N	358621	\N
1296055	113	1012	91411	\N
1296055	112	1011	91410	\N
1296055	30986	\N	358621	\N
1296056	113	1012	91411	\N
1296056	112	1011	91410	\N
1296056	30986	\N	358621	\N
1296057	113	1012	91411	\N
1296057	112	1011	91410	\N
1296057	30986	\N	358621	\N
1296058	113	1012	91411	\N
1296058	112	1011	91410	\N
1296058	30986	\N	358621	\N
1296059	113	1012	91411	\N
1296059	112	1011	91410	\N
1296059	30986	\N	358621	\N
1296060	113	1012	91411	\N
1296060	112	1011	91410	\N
1296060	30986	\N	358621	\N
1296061	113	1012	91411	\N
1296061	112	1011	91410	\N
1296061	30986	\N	358621	\N
1296062	113	1012	91411	\N
1296062	112	1011	91410	\N
1296062	30986	\N	358621	\N
1296063	113	1012	91411	\N
1296063	112	1011	91410	\N
1296063	30986	\N	358621	\N
1296064	113	1012	91411	\N
1296064	112	1011	91410	\N
1296064	30986	\N	358621	\N
1296065	113	1012	91411	\N
1296065	112	1011	91410	\N
1296065	30986	\N	358621	\N
1296066	113	1012	91411	\N
1296066	112	1011	91410	\N
1296066	30986	\N	358621	\N
1296067	113	1012	91411	\N
1296067	112	1011	91410	\N
1296067	30986	\N	358621	\N
1296068	113	1012	91411	\N
1296068	112	1011	91410	\N
1296068	30986	\N	358621	\N
1296069	113	1012	91411	\N
1296069	112	1011	91410	\N
1296069	30986	\N	358621	\N
1296070	113	1012	91411	\N
1296070	112	1011	91410	\N
1296070	30986	\N	358621	\N
1296071	113	1012	91411	\N
1296071	112	1011	91410	\N
1296071	30986	\N	358621	\N
1296072	113	1012	91411	\N
1296072	112	1011	91410	\N
1296072	30986	\N	358621	\N
1296073	113	1012	91411	\N
1296073	112	1011	91410	\N
1296073	30986	\N	358621	\N
1296074	113	1012	91411	\N
1296074	112	1011	91410	\N
1296074	30986	\N	358621	\N
1296075	113	1012	91411	\N
1296075	112	1011	91410	\N
1296075	30986	\N	358621	\N
1296076	113	1012	91411	\N
1296076	112	1011	91410	\N
1296076	30986	\N	358621	\N
1296077	113	1012	91411	\N
1296077	112	1011	91410	\N
1296077	30986	\N	358621	\N
1296078	113	1012	91411	\N
1296078	112	1011	91410	\N
1296078	30986	\N	358621	\N
1296079	113	1012	91411	\N
1296079	112	1011	91410	\N
1296079	30986	\N	358621	\N
1296080	113	1012	91411	\N
1296080	112	1011	91410	\N
1296080	30986	\N	358621	\N
1296081	113	1012	91411	\N
1296081	112	1011	91410	\N
1296081	30986	\N	358621	\N
1296082	113	1012	91411	\N
1296082	112	1011	91410	\N
1296082	30986	\N	358621	\N
1296083	113	1012	91411	\N
1296083	112	1011	91410	\N
1296083	30986	\N	358621	\N
1296084	113	1012	91411	\N
1296084	112	1011	91410	\N
1296084	30986	\N	358621	\N
1296085	113	1012	91411	\N
1296085	112	1011	91410	\N
1296085	30986	\N	358621	\N
1296086	113	1012	91411	\N
1296086	112	1011	91410	\N
1296086	30986	\N	358621	\N
1296087	113	1012	91411	\N
1296087	112	1011	91410	\N
1296087	30986	\N	358621	\N
1296088	113	1012	91411	\N
1296088	112	1011	91410	\N
1296088	30986	\N	358621	\N
1296089	113	1012	91411	\N
1296089	112	1011	91410	\N
1296089	30986	\N	358621	\N
1296090	113	1012	91411	\N
1296090	112	1011	91410	\N
1296090	30986	\N	358621	\N
1296091	113	1012	91411	\N
1296091	112	1011	91410	\N
1296091	30986	\N	358621	\N
1296092	113	1012	91411	\N
1296092	112	1011	91410	\N
1296092	30986	\N	358621	\N
1296093	113	1012	91411	\N
1296093	112	1011	91410	\N
1296093	30986	\N	358621	\N
1296094	113	1012	91411	\N
1296094	112	1011	91410	\N
1296094	30986	\N	358621	\N
1296095	113	1012	91411	\N
1296095	112	1011	91410	\N
1296095	30986	\N	358621	\N
1296096	113	1012	91411	\N
1296096	112	1011	91410	\N
1296096	30986	\N	358621	\N
1296097	113	1012	91411	\N
1296097	112	1011	91410	\N
1296097	30986	\N	358621	\N
1296098	113	1012	91411	\N
1296098	112	1011	91410	\N
1296098	30986	\N	358621	\N
1296099	113	1012	91411	\N
1296099	112	1011	91410	\N
1296099	30986	\N	358621	\N
1296100	113	1012	91411	\N
1296100	112	1011	91410	\N
1296100	30986	\N	358621	\N
1296101	113	1012	91411	\N
1296101	112	1011	91410	\N
1296101	30986	\N	358621	\N
1296102	113	1012	91411	\N
1296102	30986	\N	358621	\N
1296102	112	1011	91410	\N
1296103	113	1012	91411	\N
1296103	30986	\N	358621	\N
1296103	112	1011	91410	\N
1296104	113	1012	91411	\N
1296104	30986	\N	358621	\N
1296104	112	1011	91410	\N
1296105	113	1012	91411	\N
1296105	30986	\N	358621	\N
1296105	112	1011	91410	\N
1296106	113	1012	91411	\N
1296106	30986	\N	358621	\N
1296106	112	1011	91410	\N
1296107	113	1012	91411	\N
1296107	30986	\N	358621	\N
1296107	112	1011	91410	\N
1296108	113	1012	91411	\N
1296108	30986	\N	358621	\N
1296108	112	1011	91410	\N
1296109	113	1012	91411	\N
1296109	30986	\N	358621	\N
1296109	112	1011	91410	\N
1296110	113	1012	91411	\N
1296110	30986	\N	358621	\N
1296110	112	1011	91410	\N
1296111	113	1012	91411	\N
1296111	30986	\N	358621	\N
1296111	112	1011	91410	\N
1296112	113	1012	91411	\N
1296112	30986	\N	358621	\N
1296112	112	1011	91410	\N
1296113	113	1012	91411	\N
1296113	30986	\N	358621	\N
1296113	112	1011	91410	\N
1296114	113	1012	91411	\N
1296114	30986	\N	358621	\N
1296114	112	1011	91410	\N
1296115	113	1012	91411	\N
1296115	30986	\N	358621	\N
1296115	112	1011	91410	\N
1296116	113	1012	91411	\N
1296116	30986	\N	358621	\N
1296116	112	1011	91410	\N
1296117	113	1012	91411	\N
1296117	30986	\N	358621	\N
1296117	112	1011	91410	\N
1296118	113	1012	91411	\N
1296118	30986	\N	358621	\N
1296118	112	1011	91410	\N
1296119	113	1012	91411	\N
1296119	30986	\N	358621	\N
1296119	112	1011	91410	\N
1296120	113	1012	91411	\N
1296120	30986	\N	358621	\N
1296120	112	1011	91410	\N
1296121	113	1012	91411	\N
1296121	30986	\N	358621	\N
1296121	112	1011	91410	\N
1296122	113	1012	91411	\N
1296122	30986	\N	358621	\N
1296122	112	1011	91410	\N
1296123	113	1012	91411	\N
1296123	30986	\N	358621	\N
1296123	112	1011	91410	\N
1296124	113	1012	91411	\N
1296124	30986	\N	358621	\N
1296124	112	1011	91410	\N
1296125	113	1012	91411	\N
1296125	30986	\N	358621	\N
1296125	112	1011	91410	\N
1296126	113	1012	91411	\N
1296126	30986	\N	358621	\N
1296126	112	1011	91410	\N
1296127	113	1012	91411	\N
1296127	30986	\N	358621	\N
1296127	112	1011	91410	\N
1296128	113	1012	91411	\N
1296128	30986	\N	358621	\N
1296128	112	1011	91410	\N
1296129	113	1012	91411	\N
1296129	30986	\N	358621	\N
1296129	112	1011	91410	\N
1296130	113	1012	91411	\N
1296130	30986	\N	358621	\N
1296130	112	1011	91410	\N
1296131	113	1012	91411	\N
1296131	30986	\N	358621	\N
1296131	112	1011	91410	\N
1296132	113	1012	91411	\N
1296132	30986	\N	358621	\N
1296132	112	1011	91410	\N
1296133	113	1012	91411	\N
1296133	30986	\N	358621	\N
1296133	112	1011	91410	\N
1296134	113	1012	91411	\N
1296134	30986	\N	358621	\N
1296134	112	1011	91410	\N
1296135	113	1012	91411	\N
1296135	112	1011	91410	\N
1296135	30986	\N	358621	\N
1296136	113	1012	91411	\N
1296136	112	1011	91410	\N
1296136	30986	\N	358621	\N
1296137	113	1012	91411	\N
1296137	112	1011	91410	\N
1296137	30986	\N	358621	\N
1296138	113	1012	91411	\N
1296138	112	1011	91410	\N
1296138	30986	\N	358621	\N
1296139	113	1012	91411	\N
1296139	112	1011	91410	\N
1296139	30986	\N	358621	\N
1296140	113	1012	91411	\N
1296140	112	1011	91410	\N
1296140	30986	\N	358621	\N
1296141	113	1012	91411	\N
1296141	112	1011	91410	\N
1296141	30986	\N	358621	\N
1296142	113	1012	91411	\N
1296142	112	1011	91410	\N
1296142	30986	\N	358621	\N
1296143	113	1012	91411	\N
1296143	112	1011	91410	\N
1296143	30986	\N	358621	\N
1296144	113	1012	91411	\N
1296144	112	1011	91410	\N
1296144	30986	\N	358621	\N
1296145	113	1012	91411	\N
1296145	112	1011	91410	\N
1296145	30986	\N	358621	\N
1296146	113	1012	91411	\N
1296146	112	1011	91410	\N
1296146	30986	\N	358621	\N
1296147	113	1012	91411	\N
1296147	112	1011	91410	\N
1296147	30986	\N	358621	\N
1296148	113	1012	91411	\N
1296148	112	1011	91410	\N
1296148	30986	\N	358621	\N
1296149	113	1012	91411	\N
1296149	112	1011	91410	\N
1296149	30986	\N	358621	\N
1296150	113	1012	91411	\N
1296150	112	1011	91410	\N
1296150	30986	\N	358621	\N
1296151	113	1012	91411	\N
1296151	112	1011	91410	\N
1296151	30986	\N	358621	\N
1296152	113	1012	91411	\N
1296152	112	1011	91410	\N
1296152	30986	\N	358621	\N
1296153	113	1012	91411	\N
1296153	112	1011	91410	\N
1296153	30986	\N	358621	\N
1296154	113	1012	91411	\N
1296154	112	1011	91410	\N
1296154	30986	\N	358621	\N
1296155	113	1012	91411	\N
1296155	112	1011	91410	\N
1296155	30986	\N	358621	\N
1296156	113	1012	91411	\N
1296156	112	1011	91410	\N
1296156	30986	\N	358621	\N
1296157	113	1012	91411	\N
1296157	112	1011	91410	\N
1296157	30986	\N	358621	\N
1296158	113	1012	91411	\N
1296158	112	1011	91410	\N
1296158	30986	\N	358621	\N
1296159	113	1012	91411	\N
1296159	112	1011	91410	\N
1296159	30986	\N	358621	\N
1296160	113	1012	91411	\N
1296160	112	1011	91410	\N
1296160	30986	\N	358621	\N
1296161	113	1012	91411	\N
1296161	112	1011	91410	\N
1296161	30986	\N	358621	\N
1296162	113	1012	91411	\N
1296162	112	1011	91410	\N
1296162	30986	\N	358621	\N
1296163	113	1012	91411	\N
1296163	112	1011	91410	\N
1296163	30986	\N	358621	\N
1296164	113	1012	91411	\N
1296164	112	1011	91410	\N
1296164	30986	\N	358621	\N
1296165	113	1012	91411	\N
1296165	112	1011	91410	\N
1296165	30986	\N	358621	\N
1296166	113	1012	91411	\N
1296166	112	1011	91410	\N
1296166	30986	\N	358621	\N
1296167	113	1012	91411	\N
1296167	112	1011	91410	\N
1296167	30986	\N	358621	\N
1296168	113	1012	91411	\N
1296168	112	1011	91410	\N
1296168	30986	\N	358621	\N
1296169	113	1012	91411	\N
1296169	112	1011	91410	\N
1296169	30986	\N	358621	\N
1296170	113	1012	91411	\N
1296170	112	1011	91410	\N
1296170	30986	\N	358621	\N
1296171	113	1012	91411	\N
1296171	112	1011	91410	\N
1296171	30986	\N	358621	\N
1296172	113	1012	91411	\N
1296172	112	1011	91410	\N
1296172	30986	\N	358621	\N
1296173	113	1012	91411	\N
1296173	112	1011	91410	\N
1296173	30986	\N	358621	\N
1296174	113	1012	91411	\N
1296174	112	1011	91410	\N
1296174	30986	\N	358621	\N
1296175	113	1012	91411	\N
1296175	112	1011	91410	\N
1296175	30986	\N	358621	\N
1296176	113	1012	91411	\N
1296176	112	1011	91410	\N
1296176	30986	\N	358621	\N
1296177	113	1012	91411	\N
1296177	112	1011	91410	\N
1296177	30986	\N	358621	\N
1296178	113	1012	91411	\N
1296178	112	1011	91410	\N
1296178	30986	\N	358621	\N
1296179	113	1012	91411	\N
1296179	112	1011	91410	\N
1296179	30986	\N	358621	\N
1296180	113	1012	91411	\N
1296180	112	1011	91410	\N
1296180	30986	\N	358621	\N
1296181	113	1012	91411	\N
1296181	112	1011	91410	\N
1296181	30986	\N	358621	\N
1296182	113	1012	91411	\N
1296182	112	1011	91410	\N
1296182	30986	\N	358621	\N
1296183	113	1012	91411	\N
1296183	112	1011	91410	\N
1296183	30986	\N	358621	\N
1296184	113	1012	91411	\N
1296184	112	1011	91410	\N
1296184	30986	\N	358621	\N
1296185	113	1012	91411	\N
1296185	112	1011	91410	\N
1296185	30986	\N	358621	\N
1296186	113	1012	91411	\N
1296186	112	1011	91410	\N
1296186	30986	\N	358621	\N
1296187	113	1012	91411	\N
1296187	112	1011	91410	\N
1296187	30986	\N	358621	\N
1296188	113	1012	91411	\N
1296188	112	1011	91410	\N
1296188	30986	\N	358621	\N
1296189	113	1012	91411	\N
1296189	112	1011	91410	\N
1296189	30986	\N	358621	\N
1296190	113	1012	91411	\N
1296190	112	1011	91410	\N
1296190	30986	\N	358621	\N
1296191	113	1012	91411	\N
1296191	112	1011	91410	\N
1296191	30986	\N	358621	\N
1296192	113	1012	91411	\N
1296192	112	1011	91410	\N
1296192	30986	\N	358621	\N
1296193	113	1012	91411	\N
1296193	112	1011	91410	\N
1296193	30986	\N	358621	\N
1296194	113	1012	91411	\N
1296194	112	1011	91410	\N
1296194	30986	\N	358621	\N
1296195	113	1012	91411	\N
1296195	112	1011	91410	\N
1296195	30986	\N	358621	\N
1296196	113	1012	91411	\N
1296196	112	1011	91410	\N
1296196	30986	\N	358621	\N
1296197	113	1012	91411	\N
1296197	112	1011	91410	\N
1296197	30986	\N	358621	\N
1296198	113	1012	91411	\N
1296198	112	1011	91410	\N
1296198	30986	\N	358621	\N
1296199	113	1012	91411	\N
1296199	112	1011	91410	\N
1296199	30986	\N	358621	\N
1296200	113	1012	91411	\N
1296200	112	1011	91410	\N
1296200	30986	\N	358621	\N
1296201	113	1012	91411	\N
1296201	112	1011	91410	\N
1296201	30986	\N	358621	\N
1296202	113	1012	91411	\N
1296202	112	1011	91410	\N
1296202	30986	\N	358621	\N
1296203	113	1012	91411	\N
1296203	112	1011	91410	\N
1296203	30986	\N	358621	\N
1296204	113	1012	91411	\N
1296204	112	1011	91410	\N
1296204	30986	\N	358621	\N
1296205	113	1012	91411	\N
1296205	112	1011	91410	\N
1296205	30986	\N	358621	\N
1296206	113	1012	91411	\N
1296206	112	1011	91410	\N
1296206	30986	\N	358621	\N
1296207	113	1012	91411	\N
1296207	112	1011	91410	\N
1296207	30986	\N	358621	\N
1296208	113	1012	91411	\N
1296208	112	1011	91410	\N
1296208	30986	\N	358621	\N
1296209	113	1012	91411	\N
1296209	112	1011	91410	\N
1296209	30986	\N	358621	\N
1296210	113	1012	91411	\N
1296210	112	1011	91410	\N
1296210	30986	\N	358621	\N
1296211	113	1012	91411	\N
1296211	112	1011	91410	\N
1296211	30986	\N	358621	\N
1296212	113	1012	91411	\N
1296212	112	1011	91410	\N
1296212	30986	\N	358621	\N
1296213	113	1012	91411	\N
1296213	112	1011	91410	\N
1296213	30986	\N	358621	\N
1296214	113	1012	91411	\N
1296214	112	1011	91410	\N
1296214	30986	\N	358621	\N
1296215	113	1012	91411	\N
1296215	112	1011	91410	\N
1296215	30986	\N	358621	\N
1296216	113	1012	91411	\N
1296216	112	1011	91410	\N
1296216	30986	\N	358621	\N
1296217	113	1012	91411	\N
1296217	112	1011	91410	\N
1296217	30986	\N	358621	\N
1296218	113	1012	91411	\N
1296218	112	1011	91410	\N
1296218	30986	\N	358621	\N
1296219	113	1012	91411	\N
1296219	112	1011	91410	\N
1296219	30986	\N	358621	\N
1296220	113	1012	91411	\N
1296220	112	1011	91410	\N
1296220	30986	\N	358621	\N
1296221	113	1012	91411	\N
1296221	112	1011	91410	\N
1296221	30986	\N	358621	\N
1296222	113	1012	91411	\N
1296222	112	1011	91410	\N
1296222	30986	\N	358621	\N
1296223	113	1012	91411	\N
1296223	112	1011	91410	\N
1296223	30986	\N	358621	\N
1296224	113	1012	91411	\N
1296224	112	1011	91410	\N
1296224	30986	\N	358621	\N
1296225	113	1012	91411	\N
1296225	112	1011	91410	\N
1296225	30986	\N	358621	\N
1296226	113	1012	91411	\N
1296226	112	1011	91410	\N
1296226	30986	\N	358621	\N
1296227	113	1012	91411	\N
1296227	112	1011	91410	\N
1296227	30986	\N	358621	\N
1296228	113	1012	91411	\N
1296228	112	1011	91410	\N
1296228	30986	\N	358621	\N
1296229	113	1012	91411	\N
1296229	112	1011	91410	\N
1296229	30986	\N	358621	\N
1296230	113	1012	91411	\N
1296230	112	1011	91410	\N
1296230	30986	\N	358621	\N
1296231	113	1012	91411	\N
1296231	112	1011	91410	\N
1296231	30986	\N	358621	\N
1296232	113	1012	91411	\N
1296232	112	1011	91410	\N
1296232	30986	\N	358621	\N
1296233	113	1012	91411	\N
1296233	112	1011	91410	\N
1296233	30986	\N	358621	\N
1296234	113	1012	91411	\N
1296234	112	1011	91410	\N
1296234	30986	\N	358621	\N
1296235	113	1012	91411	\N
1296235	112	1011	91410	\N
1296235	30986	\N	358621	\N
1296236	113	1012	91411	\N
1296236	112	1011	91410	\N
1296236	30986	\N	358621	\N
1296237	113	1012	91411	\N
1296237	112	1011	91410	\N
1296237	30986	\N	358621	\N
1296238	113	1012	91411	\N
1296238	112	1011	91410	\N
1296238	30986	\N	358621	\N
1296239	113	1012	91411	\N
1296239	112	1011	91410	\N
1296239	30986	\N	358621	\N
1296240	113	1012	91411	\N
1296240	112	1011	91410	\N
1296240	30986	\N	358621	\N
1296241	113	1012	91411	\N
1296241	112	1011	91410	\N
1296241	30986	\N	358621	\N
1296242	113	1012	91411	\N
1296242	112	1011	91410	\N
1296242	30986	\N	358621	\N
1296243	113	1012	91411	\N
1296243	112	1011	91410	\N
1296243	30986	\N	358621	\N
1296244	113	1012	91411	\N
1296244	112	1011	91410	\N
1296244	30986	\N	358621	\N
1296245	113	1012	91411	\N
1296245	112	1011	91410	\N
1296245	30986	\N	358621	\N
1296246	113	1012	91411	\N
1296246	112	1011	91410	\N
1296246	30986	\N	358621	\N
1296247	113	1012	91411	\N
1296247	112	1011	91410	\N
1296247	30986	\N	358621	\N
1296248	113	1012	91411	\N
1296248	112	1011	91410	\N
1296248	30986	\N	358621	\N
1296249	113	1012	91411	\N
1296249	112	1011	91410	\N
1296249	30986	\N	358621	\N
1296250	113	1012	91411	\N
1296250	112	1011	91410	\N
1296250	30986	\N	358621	\N
1296251	113	1012	91411	\N
1296251	112	1011	91410	\N
1296251	30986	\N	358621	\N
1296252	113	1012	91411	\N
1296252	112	1011	91410	\N
1296252	30986	\N	358621	\N
1296253	113	1012	91411	\N
1296253	112	1011	91410	\N
1296253	30986	\N	358621	\N
1296254	113	1012	91411	\N
1296254	112	1011	91410	\N
1296254	30986	\N	358621	\N
1296255	113	1012	91411	\N
1296255	112	1011	91410	\N
1296255	30986	\N	358621	\N
1296256	113	1012	91411	\N
1296256	112	1011	91410	\N
1296256	30986	\N	358621	\N
1296257	113	1012	91411	\N
1296257	112	1011	91410	\N
1296257	30986	\N	358621	\N
1296258	113	1012	91411	\N
1296258	112	1011	91410	\N
1296258	30986	\N	358621	\N
1296259	113	1012	91411	\N
1296259	112	1011	91410	\N
1296259	30986	\N	358621	\N
1296260	113	1012	91411	\N
1296260	112	1011	91410	\N
1296260	30986	\N	358621	\N
1296261	113	1012	91411	\N
1296261	112	1011	91410	\N
1296261	30986	\N	358621	\N
1296262	113	1012	91411	\N
1296262	112	1011	91410	\N
1296262	30986	\N	358621	\N
1296263	113	1012	91411	\N
1296263	112	1011	91410	\N
1296263	30986	\N	358621	\N
1296264	113	1012	91411	\N
1296264	112	1011	91410	\N
1296264	30986	\N	358621	\N
1296265	113	1012	91411	\N
1296265	112	1011	91410	\N
1296265	30986	\N	358621	\N
1296266	113	1012	91411	\N
1296266	112	1011	91410	\N
1296266	30986	\N	358621	\N
1296267	113	1012	91411	\N
1296267	112	1011	91410	\N
1296267	30986	\N	358621	\N
1296268	113	1012	91411	\N
1296268	112	1011	91410	\N
1296268	30986	\N	358621	\N
1296269	113	1012	91411	\N
1296269	112	1011	91410	\N
1296269	30986	\N	358621	\N
1296270	113	1012	91411	\N
1296270	112	1011	91410	\N
1296270	30986	\N	358621	\N
1296271	113	1012	91411	\N
1296271	112	1011	91410	\N
1296271	30986	\N	358621	\N
1296272	113	1012	91411	\N
1296272	112	1011	91410	\N
1296272	30986	\N	358621	\N
1296273	113	1012	91411	\N
1296273	112	1011	91410	\N
1296273	30986	\N	358621	\N
1296274	113	1012	91411	\N
1296274	112	1011	91410	\N
1296274	30986	\N	358621	\N
1296275	113	1012	91411	\N
1296275	112	1011	91410	\N
1296275	30986	\N	358621	\N
1296276	113	1012	91411	\N
1296276	112	1011	91410	\N
1296276	30986	\N	358621	\N
1296277	113	1012	91411	\N
1296277	112	1011	91410	\N
1296277	30986	\N	358621	\N
1296278	113	1012	91411	\N
1296278	112	1011	91410	\N
1296278	30986	\N	358621	\N
1296279	113	1012	91411	\N
1296279	112	1011	91410	\N
1296279	30986	\N	358621	\N
1296280	113	1012	91411	\N
1296280	112	1011	91410	\N
1296280	30986	\N	358621	\N
1296281	113	1012	91411	\N
1296281	112	1011	91410	\N
1296281	30986	\N	358621	\N
1296282	113	1012	91411	\N
1296282	112	1011	91410	\N
1296282	30986	\N	358621	\N
1296283	113	1012	91411	\N
1296283	112	1011	91410	\N
1296283	30986	\N	358621	\N
1296284	113	1012	91411	\N
1296284	112	1011	91410	\N
1296284	30986	\N	358621	\N
1296285	113	1012	91411	\N
1296285	112	1011	91410	\N
1296285	30986	\N	358621	\N
1296286	113	1012	91411	\N
1296286	112	1011	91410	\N
1296286	30986	\N	358621	\N
1296287	113	1012	91411	\N
1296287	112	1011	91410	\N
1296287	30986	\N	358621	\N
1296288	113	1012	91411	\N
1296288	112	1011	91410	\N
1296288	30986	\N	358621	\N
1296289	113	1012	91411	\N
1296289	112	1011	91410	\N
1296289	30986	\N	358621	\N
1296290	113	1012	91411	\N
1296290	112	1011	91410	\N
1296290	30986	\N	358621	\N
1296291	113	1012	91411	\N
1296291	112	1011	91410	\N
1296291	30986	\N	358621	\N
1296292	113	1012	91411	\N
1296292	112	1011	91410	\N
1296292	30986	\N	358621	\N
1296293	113	1012	91411	\N
1296293	112	1011	91410	\N
1296293	30986	\N	358621	\N
1296294	113	1012	91411	\N
1296294	112	1011	91410	\N
1296294	30986	\N	358621	\N
1296295	113	1012	91411	\N
1296295	112	1011	91410	\N
1296295	30986	\N	358621	\N
1296296	113	1012	91411	\N
1296296	112	1011	91410	\N
1296296	30986	\N	358621	\N
1296297	113	1012	91411	\N
1296297	112	1011	91410	\N
1296297	30986	\N	358621	\N
1296298	113	1012	91411	\N
1296298	112	1011	91410	\N
1296298	30986	\N	358621	\N
1296299	113	1012	91411	\N
1296299	112	1011	91410	\N
1296299	30986	\N	358621	\N
1296300	113	1012	91411	\N
1296300	112	1011	91410	\N
1296300	30986	\N	358621	\N
1296301	113	1012	91411	\N
1296301	112	1011	91410	\N
1296301	30986	\N	358621	\N
1296302	113	1012	91411	\N
1296302	112	1011	91410	\N
1296302	30986	\N	358621	\N
1296303	113	1012	91411	\N
1296303	112	1011	91410	\N
1296303	30986	\N	358621	\N
1296304	113	1012	91411	\N
1296304	112	1011	91410	\N
1296304	30986	\N	358621	\N
1296305	113	1012	91411	\N
1296305	112	1011	91410	\N
1296305	30986	\N	358621	\N
1296306	113	1012	91411	\N
1296306	112	1011	91410	\N
1296306	30986	\N	358621	\N
1296307	113	1012	91411	\N
1296307	112	1011	91410	\N
1296307	30986	\N	358621	\N
1296308	113	1012	91411	\N
1296308	112	1011	91410	\N
1296308	30986	\N	358621	\N
1296309	113	1012	91411	\N
1296309	112	1011	91410	\N
1296309	30986	\N	358621	\N
1296310	113	1012	91411	\N
1296310	112	1011	91410	\N
1296310	30986	\N	358621	\N
1296311	113	1012	91411	\N
1296311	112	1011	91410	\N
1296311	30986	\N	358621	\N
1296312	113	1012	91411	\N
1296312	112	1011	91410	\N
1296312	30986	\N	358621	\N
1296313	113	1012	91411	\N
1296313	112	1011	91410	\N
1296313	30986	\N	358621	\N
1296314	113	1012	91411	\N
1296314	112	1011	91410	\N
1296314	30986	\N	358621	\N
1296315	113	1012	91411	\N
1296315	112	1011	91410	\N
1296315	30986	\N	358621	\N
1296316	113	1012	91411	\N
1296316	112	1011	91410	\N
1296316	30986	\N	358621	\N
1296317	113	1012	91411	\N
1296317	112	1011	91410	\N
1296317	30986	\N	358621	\N
1296318	113	1012	91411	\N
1296318	112	1011	91410	\N
1296318	30986	\N	358621	\N
1296319	113	1012	91411	\N
1296319	112	1011	91410	\N
1296319	30986	\N	358621	\N
1296320	113	1012	91411	\N
1296320	112	1011	91410	\N
1296320	30986	\N	358621	\N
1296321	113	1012	91411	\N
1296321	112	1011	91410	\N
1296321	30986	\N	358621	\N
1296322	113	1012	91411	\N
1296322	112	1011	91410	\N
1296322	30986	\N	358621	\N
1296323	113	1012	91411	\N
1296323	112	1011	91410	\N
1296323	30986	\N	358621	\N
1296324	113	1012	91411	\N
1296324	112	1011	91410	\N
1296324	30986	\N	358621	\N
1296325	113	1012	91411	\N
1296325	112	1011	91410	\N
1296325	30986	\N	358621	\N
1296326	113	1012	91411	\N
1296326	112	1011	91410	\N
1296326	30986	\N	358621	\N
1296327	113	1012	91411	\N
1296327	112	1011	91410	\N
1296327	30986	\N	358621	\N
1296328	113	1012	91411	\N
1296328	112	1011	91410	\N
1296328	30986	\N	358621	\N
1296329	113	1012	91411	\N
1296329	112	1011	91410	\N
1296329	30986	\N	358621	\N
1296330	113	1012	91411	\N
1296330	112	1011	91410	\N
1296330	30986	\N	358621	\N
1296331	113	1012	91411	\N
1296331	112	1011	91410	\N
1296331	30986	\N	358621	\N
1296332	113	1012	91411	\N
1296332	112	1011	91410	\N
1296332	30986	\N	358621	\N
1296333	113	1012	91411	\N
1296333	112	1011	91410	\N
1296333	30986	\N	358621	\N
1296334	113	1012	91411	\N
1296334	112	1011	91410	\N
1296334	30986	\N	358621	\N
1296335	113	1012	91411	\N
1296335	112	1011	91410	\N
1296335	30986	\N	358621	\N
1296336	113	1012	91411	\N
1296336	112	1011	91410	\N
1296336	30986	\N	358621	\N
1296337	113	1012	91411	\N
1296337	112	1011	91410	\N
1296337	30986	\N	358621	\N
1296338	113	1012	91411	\N
1296338	112	1011	91410	\N
1296338	30986	\N	358621	\N
1296339	113	1012	91411	\N
1296339	112	1011	91410	\N
1296339	30986	\N	358621	\N
1296340	113	1012	91411	\N
1296340	112	1011	91410	\N
1296340	30986	\N	358621	\N
1296341	113	1012	91411	\N
1296341	112	1011	91410	\N
1296341	30986	\N	358621	\N
1296342	113	1012	91411	\N
1296342	112	1011	91410	\N
1296342	30986	\N	358621	\N
1296343	113	1012	91411	\N
1296343	112	1011	91410	\N
1296343	30986	\N	358621	\N
1296344	113	1012	91411	\N
1296344	112	1011	91410	\N
1296344	30986	\N	358621	\N
1296345	113	1012	91411	\N
1296345	112	1011	91410	\N
1296345	30986	\N	358621	\N
1296346	113	1012	91411	\N
1296346	112	1011	91410	\N
1296346	30986	\N	358621	\N
1296347	113	1012	91411	\N
1296347	112	1011	91410	\N
1296347	30986	\N	358621	\N
1296348	113	1012	91411	\N
1296348	112	1011	91410	\N
1296348	30986	\N	358621	\N
1296349	113	1012	91411	\N
1296349	112	1011	91410	\N
1296349	30986	\N	358621	\N
1296350	113	1012	91411	\N
1296350	112	1011	91410	\N
1296350	30986	\N	358621	\N
1296351	113	1012	91411	\N
1296351	112	1011	91410	\N
1296351	30986	\N	358621	\N
1296352	113	1012	91411	\N
1296352	112	1011	91410	\N
1296352	30986	\N	358621	\N
1296353	113	1012	91411	\N
1296353	112	1011	91410	\N
1296353	30986	\N	358621	\N
1296354	113	1012	91411	\N
1296354	112	1011	91410	\N
1296354	30986	\N	358621	\N
1296355	113	1012	91411	\N
1296355	112	1011	91410	\N
1296355	30986	\N	358621	\N
1296356	113	1012	91411	\N
1296356	112	1011	91410	\N
1296356	30986	\N	358621	\N
1296357	113	1012	91411	\N
1296357	112	1011	91410	\N
1296357	30986	\N	358621	\N
1296358	113	1012	91411	\N
1296358	112	1011	91410	\N
1296358	30986	\N	358621	\N
1296359	113	1012	91411	\N
1296359	112	1011	91410	\N
1296359	30986	\N	358621	\N
1296360	113	1012	91411	\N
1296360	112	1011	91410	\N
1296360	30986	\N	358621	\N
1296361	113	1012	91411	\N
1296361	112	1011	91410	\N
1296361	30986	\N	358621	\N
1296362	113	1012	91411	\N
1296362	112	1011	91410	\N
1296362	30986	\N	358621	\N
1296363	113	1012	91411	\N
1296363	112	1011	91410	\N
1296363	30986	\N	358621	\N
1296364	113	1012	91411	\N
1296364	112	1011	91410	\N
1296364	30986	\N	358621	\N
1296365	113	1012	91411	\N
1296365	112	1011	91410	\N
1296365	30986	\N	358621	\N
1296366	113	1012	91411	\N
1296366	112	1011	91410	\N
1296366	30986	\N	358621	\N
1296367	113	1012	91411	\N
1296367	112	1011	91410	\N
1296367	30986	\N	358621	\N
1296368	113	1012	91411	\N
1296368	112	1011	91410	\N
1296368	30986	\N	358621	\N
1296369	113	1012	91411	\N
1296369	112	1011	91410	\N
1296369	30986	\N	358621	\N
1296370	113	1012	91411	\N
1296370	112	1011	91410	\N
1296370	30986	\N	358621	\N
1296371	113	1012	91411	\N
1296371	112	1011	91410	\N
1296371	30986	\N	358621	\N
1296372	113	1012	91411	\N
1296372	112	1011	91410	\N
1296372	30986	\N	358621	\N
1296373	113	1012	91411	\N
1296373	112	1011	91410	\N
1296373	30986	\N	358621	\N
1296374	113	1012	91411	\N
1296374	112	1011	91410	\N
1296374	30986	\N	358621	\N
1296375	113	1012	91411	\N
1296375	112	1011	91410	\N
1296375	30986	\N	358621	\N
1296376	113	1012	91411	\N
1296376	112	1011	91410	\N
1296376	30986	\N	358621	\N
1296377	113	1012	91411	\N
1296377	112	1011	91410	\N
1296377	30986	\N	358621	\N
1296378	113	1012	91411	\N
1296378	112	1011	91410	\N
1296378	30986	\N	358621	\N
1296379	113	1012	91411	\N
1296379	112	1011	91410	\N
1296379	30986	\N	358621	\N
1296380	113	1012	91411	\N
1296380	112	1011	91410	\N
1296380	30986	\N	358621	\N
1296381	113	1012	91411	\N
1296381	112	1011	91410	\N
1296381	30986	\N	358621	\N
1296382	113	1012	91411	\N
1296382	112	1011	91410	\N
1296382	30986	\N	358621	\N
1296383	113	1012	91411	\N
1296383	112	1011	91410	\N
1296383	30986	\N	358621	\N
1296384	113	1012	91411	\N
1296384	112	1011	91410	\N
1296384	30986	\N	358621	\N
1296385	113	1012	91411	\N
1296385	112	1011	91410	\N
1296385	30986	\N	358621	\N
1296386	113	1012	91411	\N
1296386	112	1011	91410	\N
1296386	30986	\N	358621	\N
1296387	113	1012	91411	\N
1296387	112	1011	91410	\N
1296387	30986	\N	358621	\N
1296388	113	1012	91411	\N
1296388	112	1011	91410	\N
1296388	30986	\N	358621	\N
1296389	113	1012	91411	\N
1296389	112	1011	91410	\N
1296389	30986	\N	358621	\N
1296390	113	1012	91411	\N
1296390	112	1011	91410	\N
1296390	30986	\N	358621	\N
1296391	113	1012	91411	\N
1296391	112	1011	91410	\N
1296391	30986	\N	358621	\N
1296392	113	1012	91411	\N
1296392	112	1011	91410	\N
1296392	30986	\N	358621	\N
1296393	113	1012	91411	\N
1296393	112	1011	91410	\N
1296393	30986	\N	358621	\N
1296394	113	1012	91411	\N
1296394	112	1011	91410	\N
1296394	30986	\N	358621	\N
1296395	113	1012	91411	\N
1296395	112	1011	91410	\N
1296395	30986	\N	358621	\N
1296396	113	1012	91411	\N
1296396	112	1011	91410	\N
1296396	30986	\N	358621	\N
1296397	113	1012	91411	\N
1296397	112	1011	91410	\N
1296397	30986	\N	358621	\N
1296398	113	1012	91411	\N
1296398	112	1011	91410	\N
1296398	30986	\N	358621	\N
1296399	113	1012	91411	\N
1296399	112	1011	91410	\N
1296399	30986	\N	358621	\N
1296400	113	1012	91411	\N
1296400	112	1011	91410	\N
1296400	30986	\N	358621	\N
1296401	113	1012	91411	\N
1296401	112	1011	91410	\N
1296401	30986	\N	358621	\N
1296402	113	1012	91411	\N
1296402	112	1011	91410	\N
1296402	30986	\N	358621	\N
1296403	113	1012	91411	\N
1296403	112	1011	91410	\N
1296403	30986	\N	358621	\N
1296404	113	1012	91411	\N
1296404	112	1011	91410	\N
1296404	30986	\N	358621	\N
1296405	113	1012	91411	\N
1296405	112	1011	91410	\N
1296405	30986	\N	358621	\N
1296406	113	1012	91411	\N
1296406	112	1011	91410	\N
1296406	30986	\N	358621	\N
1296407	113	1012	91411	\N
1296407	112	1011	91410	\N
1296407	30986	\N	358621	\N
1296408	113	1012	91411	\N
1296408	112	1011	91410	\N
1296408	30986	\N	358621	\N
1296409	113	1012	91411	\N
1296409	112	1011	91410	\N
1296409	30986	\N	358621	\N
1296410	113	1012	91411	\N
1296410	112	1011	91410	\N
1296410	30986	\N	358621	\N
1296411	113	1012	91411	\N
1296411	112	1011	91410	\N
1296411	30986	\N	358621	\N
1296412	113	1012	91411	\N
1296412	112	1011	91410	\N
1296412	30986	\N	358621	\N
1296413	113	1012	91411	\N
1296413	112	1011	91410	\N
1296413	30986	\N	358621	\N
1296414	113	1012	91411	\N
1296414	112	1011	91410	\N
1296414	30986	\N	358621	\N
1296415	113	1012	91411	\N
1296415	112	1011	91410	\N
1296415	30986	\N	358621	\N
1296416	113	1012	91411	\N
1296416	112	1011	91410	\N
1296416	30986	\N	358621	\N
1296417	113	1012	91411	\N
1296417	112	1011	91410	\N
1296417	30986	\N	358621	\N
1296418	113	1012	91411	\N
1296418	112	1011	91410	\N
1296418	30986	\N	358621	\N
1296419	113	1012	91411	\N
1296419	112	1011	91410	\N
1296419	30986	\N	358621	\N
1296420	113	1012	91411	\N
1296420	112	1011	91410	\N
1296420	30986	\N	358621	\N
1296421	113	1012	91411	\N
1296421	112	1011	91410	\N
1296421	30986	\N	358621	\N
1296422	113	1012	91411	\N
1296422	112	1011	91410	\N
1296422	30986	\N	358621	\N
1296423	113	1012	91411	\N
1296423	112	1011	91410	\N
1296423	30986	\N	358621	\N
1296424	113	1012	91411	\N
1296424	112	1011	91410	\N
1296424	30986	\N	358621	\N
1296425	113	1012	91411	\N
1296425	112	1011	91410	\N
1296425	30986	\N	358621	\N
1296426	113	1012	91411	\N
1296426	112	1011	91410	\N
1296426	30986	\N	358621	\N
1296427	113	1012	91411	\N
1296427	112	1011	91410	\N
1296427	30986	\N	358621	\N
1296428	113	1012	91411	\N
1296428	112	1011	91410	\N
1296428	30986	\N	358621	\N
1296429	113	1012	91411	\N
1296429	112	1011	91410	\N
1296429	30986	\N	358621	\N
1296430	113	1012	91411	\N
1296430	112	1011	91410	\N
1296430	30986	\N	358621	\N
1296431	113	1012	91411	\N
1296431	112	1011	91410	\N
1296431	30986	\N	358621	\N
1296432	113	1012	91411	\N
1296432	112	1011	91410	\N
1296432	30986	\N	358621	\N
1296433	113	1012	91411	\N
1296433	112	1011	91410	\N
1296433	30986	\N	358621	\N
1296434	113	1012	91411	\N
1296434	112	1011	91410	\N
1296434	30986	\N	358621	\N
1296435	113	1012	91411	\N
1296435	112	1011	91410	\N
1296435	30986	\N	358621	\N
1296436	113	1012	91411	\N
1296436	112	1011	91410	\N
1296436	30986	\N	358621	\N
1296437	113	1012	91411	\N
1296437	112	1011	91410	\N
1296437	30986	\N	358621	\N
1296438	113	1012	91411	\N
1296438	112	1011	91410	\N
1296438	30986	\N	358621	\N
1296439	113	1012	91411	\N
1296439	112	1011	91410	\N
1296439	30986	\N	358621	\N
1296440	113	1012	91411	\N
1296440	112	1011	91410	\N
1296440	30986	\N	358621	\N
1296441	113	1012	91411	\N
1296441	112	1011	91410	\N
1296441	30986	\N	358621	\N
1296442	113	1012	91411	\N
1296442	112	1011	91410	\N
1296442	30986	\N	358621	\N
1296443	113	1012	91411	\N
1296443	112	1011	91410	\N
1296443	30986	\N	358621	\N
1296444	113	1012	91411	\N
1296444	112	1011	91410	\N
1296444	30986	\N	358621	\N
1296445	113	1012	91411	\N
1296445	112	1011	91410	\N
1296445	30986	\N	358621	\N
1296446	113	1012	91411	\N
1296446	112	1011	91410	\N
1296446	30986	\N	358621	\N
1296447	113	1012	91411	\N
1296447	112	1011	91410	\N
1296447	30986	\N	358621	\N
1296448	113	1012	91411	\N
1296448	112	1011	91410	\N
1296448	30986	\N	358621	\N
1296449	113	1012	91411	\N
1296449	112	1011	91410	\N
1296449	30986	\N	358621	\N
1296450	113	1012	91411	\N
1296450	112	1011	91410	\N
1296450	30986	\N	358621	\N
1296451	113	1012	91411	\N
1296451	112	1011	91410	\N
1296451	30986	\N	358621	\N
1296452	113	1012	91411	\N
1296452	112	1011	91410	\N
1296452	30986	\N	358621	\N
1296453	113	1012	91411	\N
1296453	112	1011	91410	\N
1296453	30986	\N	358621	\N
1296454	113	1012	91411	\N
1296454	112	1011	91410	\N
1296454	30986	\N	358621	\N
1296455	113	1012	91411	\N
1296455	112	1011	91410	\N
1296455	30986	\N	358621	\N
1296456	113	1012	91411	\N
1296456	112	1011	91410	\N
1296456	30986	\N	358621	\N
1296457	113	1012	91411	\N
1296457	112	1011	91410	\N
1296457	30986	\N	358621	\N
1296458	113	1012	91411	\N
1296458	112	1011	91410	\N
1296458	30986	\N	358621	\N
1296459	113	1012	91411	\N
1296459	112	1011	91410	\N
1296459	30986	\N	358621	\N
1296460	113	1012	91411	\N
1296460	112	1011	91410	\N
1296460	30986	\N	358621	\N
1296461	113	1012	91411	\N
1296461	112	1011	91410	\N
1296461	30986	\N	358621	\N
1296462	113	1012	91411	\N
1296462	112	1011	91410	\N
1296462	30986	\N	358621	\N
1296463	113	1012	91411	\N
1296463	112	1011	91410	\N
1296463	30986	\N	358621	\N
1296464	113	1012	91411	\N
1296464	112	1011	91410	\N
1296464	30986	\N	358621	\N
1296465	113	1012	91411	\N
1296465	112	1011	91410	\N
1296465	30986	\N	358621	\N
1296466	113	1012	91411	\N
1296466	112	1011	91410	\N
1296466	30986	\N	358621	\N
1296467	113	1012	91411	\N
1296467	112	1011	91410	\N
1296467	30986	\N	358621	\N
1296468	113	1012	91411	\N
1296468	112	1011	91410	\N
1296468	30986	\N	358621	\N
1296469	113	1012	91411	\N
1296469	112	1011	91410	\N
1296469	30986	\N	358621	\N
1296470	113	1012	91411	\N
1296470	112	1011	91410	\N
1296470	30986	\N	358621	\N
1296471	113	1012	91411	\N
1296471	112	1011	91410	\N
1296471	30986	\N	358621	\N
1296472	113	1012	91411	\N
1296472	112	1011	91410	\N
1296472	30986	\N	358621	\N
1296473	113	1012	91411	\N
1296473	112	1011	91410	\N
1296473	30986	\N	358621	\N
1296474	113	1012	91411	\N
1296474	112	1011	91410	\N
1296474	30986	\N	358621	\N
1296475	113	1012	91411	\N
1296475	112	1011	91410	\N
1296475	30986	\N	358621	\N
1296476	113	1012	91411	\N
1296476	112	1011	91410	\N
1296476	30986	\N	358621	\N
1296477	113	1012	91411	\N
1296477	112	1011	91410	\N
1296477	30986	\N	358621	\N
1296478	113	1012	91411	\N
1296478	112	1011	91410	\N
1296478	30986	\N	358621	\N
1296479	113	1012	91411	\N
1296479	112	1011	91410	\N
1296479	30986	\N	358621	\N
1296480	113	1012	91411	\N
1296480	112	1011	91410	\N
1296480	30986	\N	358621	\N
1296481	113	1012	91411	\N
1296481	112	1011	91410	\N
1296481	30986	\N	358621	\N
1296482	113	1012	91411	\N
1296482	112	1011	91410	\N
1296482	30986	\N	358621	\N
1296483	113	1012	91411	\N
1296483	112	1011	91410	\N
1296483	30986	\N	358621	\N
1296484	113	1012	91411	\N
1296484	112	1011	91410	\N
1296484	30986	\N	358621	\N
1296485	113	1012	91411	\N
1296485	112	1011	91410	\N
1296485	30986	\N	358621	\N
1296486	113	1012	91411	\N
1296486	112	1011	91410	\N
1296486	30986	\N	358621	\N
1296487	113	1012	91411	\N
1296487	112	1011	91410	\N
1296487	30986	\N	358621	\N
1296488	113	1012	91411	\N
1296488	112	1011	91410	\N
1296488	30986	\N	358621	\N
1296489	113	1012	91411	\N
1296489	112	1011	91410	\N
1296489	30986	\N	358621	\N
1296490	113	1012	91411	\N
1296490	112	1011	91410	\N
1296490	30986	\N	358621	\N
1296491	113	1012	91411	\N
1296491	112	1011	91410	\N
1296491	30986	\N	358621	\N
1296492	113	1012	91411	\N
1296492	112	1011	91410	\N
1296492	30986	\N	358621	\N
1296493	113	1012	91411	\N
1296493	112	1011	91410	\N
1296493	30986	\N	358621	\N
1296494	113	1012	91411	\N
1296494	112	1011	91410	\N
1296494	30986	\N	358621	\N
1296495	113	1012	91411	\N
1296495	112	1011	91410	\N
1296495	30986	\N	358621	\N
1296496	113	1012	91411	\N
1296496	112	1011	91410	\N
1296496	30986	\N	358621	\N
1296497	113	1012	91411	\N
1296497	112	1011	91410	\N
1296497	30986	\N	358621	\N
1296498	113	1012	91411	\N
1296498	112	1011	91410	\N
1296498	30986	\N	358621	\N
1296499	113	1012	91411	\N
1296499	112	1011	91410	\N
1296499	30986	\N	358621	\N
1296500	113	1012	91411	\N
1296500	112	1011	91410	\N
1296500	30986	\N	358621	\N
1296501	113	1012	91411	\N
1296501	112	1011	91410	\N
1296501	30986	\N	358621	\N
1296502	113	1012	91411	\N
1296502	112	1011	91410	\N
1296502	30986	\N	358621	\N
1296503	113	1012	91411	\N
1296503	112	1011	91410	\N
1296503	30986	\N	358621	\N
1296504	113	1012	91411	\N
1296504	112	1011	91410	\N
1296504	30986	\N	358621	\N
1296505	113	1012	91411	\N
1296505	112	1011	91410	\N
1296505	30986	\N	358621	\N
1296506	113	1012	91411	\N
1296506	112	1011	91410	\N
1296506	30986	\N	358621	\N
1296507	113	1012	91411	\N
1296507	112	1011	91410	\N
1296507	30986	\N	358621	\N
1296508	113	1012	91411	\N
1296508	112	1011	91410	\N
1296508	30986	\N	358621	\N
1296509	113	1012	91411	\N
1296509	112	1011	91410	\N
1296509	30986	\N	358621	\N
1296510	113	1012	91411	\N
1296510	112	1011	91410	\N
1296510	30986	\N	358621	\N
1296511	113	1012	91411	\N
1296511	112	1011	91410	\N
1296511	30986	\N	358621	\N
1296512	113	1012	91411	\N
1296512	112	1011	91410	\N
1296512	30986	\N	358621	\N
1296513	113	1012	91411	\N
1296513	112	1011	91410	\N
1296513	30986	\N	358621	\N
1296514	113	1012	91411	\N
1296514	112	1011	91410	\N
1296514	30986	\N	358621	\N
1296515	113	1012	91411	\N
1296515	112	1011	91410	\N
1296515	30986	\N	358621	\N
1296516	113	1012	91411	\N
1296516	112	1011	91410	\N
1296516	30986	\N	358621	\N
1296517	113	1012	91411	\N
1296517	112	1011	91410	\N
1296517	30986	\N	358621	\N
1296518	113	1012	91411	\N
1296518	112	1011	91410	\N
1296518	30986	\N	358621	\N
1296519	113	1012	91411	\N
1296519	112	1011	91410	\N
1296519	30986	\N	358621	\N
1296520	113	1012	91411	\N
1296520	112	1011	91410	\N
1296520	30986	\N	358621	\N
1296521	113	1012	91411	\N
1296521	112	1011	91410	\N
1296521	30986	\N	358621	\N
1296522	113	1012	91411	\N
1296522	112	1011	91410	\N
1296522	30986	\N	358621	\N
1296523	113	1012	91411	\N
1296523	112	1011	91410	\N
1296523	30986	\N	358621	\N
1296524	113	1012	91411	\N
1296524	112	1011	91410	\N
1296524	30986	\N	358621	\N
1296525	113	1012	91411	\N
1296525	112	1011	91410	\N
1296525	30986	\N	358621	\N
1296526	113	1012	91411	\N
1296526	112	1011	91410	\N
1296526	30986	\N	358621	\N
1296527	113	1012	91411	\N
1296527	112	1011	91410	\N
1296527	30986	\N	358621	\N
1296528	113	1012	91411	\N
1296528	112	1011	91410	\N
1296528	30986	\N	358621	\N
1296529	113	1012	91411	\N
1296529	112	1011	91410	\N
1296529	30986	\N	358621	\N
1296530	113	1012	91411	\N
1296530	112	1011	91410	\N
1296530	30986	\N	358621	\N
1296531	113	1012	91411	\N
1296531	112	1011	91410	\N
1296531	30986	\N	358621	\N
1296532	113	1012	91411	\N
1296532	112	1011	91410	\N
1296532	30986	\N	358621	\N
1296533	113	1012	91411	\N
1296533	112	1011	91410	\N
1296533	30986	\N	358621	\N
1296534	113	1012	91411	\N
1296534	112	1011	91410	\N
1296534	30986	\N	358621	\N
1296535	113	1012	91411	\N
1296535	112	1011	91410	\N
1296535	30986	\N	358621	\N
1296536	113	1012	91411	\N
1296536	112	1011	91410	\N
1296536	30986	\N	358621	\N
1296537	113	1012	91411	\N
1296537	112	1011	91410	\N
1296537	30986	\N	358621	\N
1296538	113	1012	91411	\N
1296538	112	1011	91410	\N
1296538	30986	\N	358621	\N
1296539	113	1012	91411	\N
1296539	112	1011	91410	\N
1296539	30986	\N	358621	\N
1296540	113	1012	91411	\N
1296540	112	1011	91410	\N
1296540	30986	\N	358621	\N
1296541	113	1012	91411	\N
1296541	112	1011	91410	\N
1296541	30986	\N	358621	\N
1296542	113	1012	91411	\N
1296542	112	1011	91410	\N
1296542	30986	\N	358621	\N
1296543	113	1012	91411	\N
1296543	112	1011	91410	\N
1296543	30986	\N	358621	\N
1296544	113	1012	91411	\N
1296544	112	1011	91410	\N
1296544	30986	\N	358621	\N
1296545	113	1012	91411	\N
1296545	112	1011	91410	\N
1296545	30986	\N	358621	\N
1296546	113	1012	91411	\N
1296546	112	1011	91410	\N
1296546	30986	\N	358621	\N
1296547	113	1012	91411	\N
1296547	112	1011	91410	\N
1296547	30986	\N	358621	\N
1296548	113	1012	91411	\N
1296548	112	1011	91410	\N
1296548	30986	\N	358621	\N
1296549	113	1012	91411	\N
1296549	112	1011	91410	\N
1296549	30986	\N	358621	\N
1296550	113	1012	91411	\N
1296550	112	1011	91410	\N
1296550	30986	\N	358621	\N
1296551	113	1012	91411	\N
1296551	112	1011	91410	\N
1296551	30986	\N	358621	\N
1296552	113	1012	91411	\N
1296552	112	1011	91410	\N
1296552	30986	\N	358621	\N
1296553	113	1012	91411	\N
1296553	112	1011	91410	\N
1296553	30986	\N	358621	\N
1296554	113	1012	91411	\N
1296554	112	1011	91410	\N
1296554	30986	\N	358621	\N
1296555	113	1012	91411	\N
1296555	112	1011	91410	\N
1296555	30986	\N	358621	\N
1296556	113	1012	91411	\N
1296556	112	1011	91410	\N
1296556	30986	\N	358621	\N
1296557	113	1012	91411	\N
1296557	112	1011	91410	\N
1296557	30986	\N	358621	\N
1296558	113	1012	91411	\N
1296558	112	1011	91410	\N
1296558	30986	\N	358621	\N
1296559	113	1012	91411	\N
1296559	112	1011	91410	\N
1296559	30986	\N	358621	\N
1296560	113	1012	91411	\N
1296560	112	1011	91410	\N
1296560	30986	\N	358621	\N
1296561	113	1012	91411	\N
1296561	112	1011	91410	\N
1296561	30986	\N	358621	\N
1296562	113	1012	91411	\N
1296562	112	1011	91410	\N
1296562	30986	\N	358621	\N
1296563	113	1012	91411	\N
1296563	112	1011	91410	\N
1296563	30986	\N	358621	\N
1296564	113	1012	91411	\N
1296564	112	1011	91410	\N
1296564	30986	\N	358621	\N
1296565	113	1012	91411	\N
1296565	112	1011	91410	\N
1296565	30986	\N	358621	\N
1296566	113	1012	91411	\N
1296566	112	1011	91410	\N
1296566	30986	\N	358621	\N
1296567	113	1012	91411	\N
1296567	112	1011	91410	\N
1296567	30986	\N	358621	\N
1296568	113	1012	91411	\N
1296568	112	1011	91410	\N
1296568	30986	\N	358621	\N
1296569	113	1012	91411	\N
1296569	112	1011	91410	\N
1296569	30986	\N	358621	\N
1296570	113	1012	91411	\N
1296570	112	1011	91410	\N
1296570	30986	\N	358621	\N
1296571	113	1012	91411	\N
1296571	112	1011	91410	\N
1296571	30986	\N	358621	\N
1296572	113	1012	91411	\N
1296572	112	1011	91410	\N
1296572	30986	\N	358621	\N
1296573	113	1012	91411	\N
1296573	112	1011	91410	\N
1296573	30986	\N	358621	\N
1296574	113	1012	91411	\N
1296574	112	1011	91410	\N
1296574	30986	\N	358621	\N
1296575	113	1012	91411	\N
1296575	112	1011	91410	\N
1296575	30986	\N	358621	\N
1296576	113	1012	91411	\N
1296576	112	1011	91410	\N
1296576	30986	\N	358621	\N
1296577	113	1012	91411	\N
1296577	112	1011	91410	\N
1296577	30986	\N	358621	\N
1296578	113	1012	91411	\N
1296578	112	1011	91410	\N
1296578	30986	\N	358621	\N
1296579	113	1012	91411	\N
1296579	112	1011	91410	\N
1296579	30986	\N	358621	\N
1296580	113	1012	91411	\N
1296580	112	1011	91410	\N
1296580	30986	\N	358621	\N
1296581	113	1012	91411	\N
1296581	112	1011	91410	\N
1296581	30986	\N	358621	\N
1296582	113	1012	91411	\N
1296582	112	1011	91410	\N
1296582	30986	\N	358621	\N
1296583	113	1012	91411	\N
1296583	112	1011	91410	\N
1296583	30986	\N	358621	\N
1296584	113	1012	91411	\N
1296584	112	1011	91410	\N
1296584	30986	\N	358621	\N
1296585	113	1012	91411	\N
1296585	112	1011	91410	\N
1296585	30986	\N	358621	\N
1296586	113	1012	91411	\N
1296586	112	1011	91410	\N
1296586	30986	\N	358621	\N
1296587	113	1012	91411	\N
1296587	112	1011	91410	\N
1296587	30986	\N	358621	\N
1296588	113	1012	91411	\N
1296588	112	1011	91410	\N
1296588	30986	\N	358621	\N
1296589	113	1012	91411	\N
1296589	112	1011	91410	\N
1296589	30986	\N	358621	\N
1296590	113	1012	91411	\N
1296590	112	1011	91410	\N
1296590	30986	\N	358621	\N
1296591	113	1012	91411	\N
1296591	112	1011	91410	\N
1296591	30986	\N	358621	\N
1296592	113	1012	91411	\N
1296592	112	1011	91410	\N
1296592	30986	\N	358621	\N
1296593	113	1012	91411	\N
1296593	112	1011	91410	\N
1296593	30986	\N	358621	\N
1296594	113	1012	91411	\N
1296594	112	1011	91410	\N
1296594	30986	\N	358621	\N
1296595	113	1012	91411	\N
1296595	112	1011	91410	\N
1296595	30986	\N	358621	\N
1296596	113	1012	91411	\N
1296596	112	1011	91410	\N
1296596	30986	\N	358621	\N
1296597	113	1012	91411	\N
1296597	112	1011	91410	\N
1296597	30986	\N	358621	\N
1296598	113	1012	91411	\N
1296598	112	1011	91410	\N
1296598	30986	\N	358621	\N
1296599	113	1012	91411	\N
1296599	112	1011	91410	\N
1296599	30986	\N	358621	\N
1296600	113	1012	91411	\N
1296600	112	1011	91410	\N
1296600	30986	\N	358621	\N
1296601	113	1012	91411	\N
1296601	112	1011	91410	\N
1296601	30986	\N	358621	\N
1296602	113	1012	91411	\N
1296602	112	1011	91410	\N
1296602	30986	\N	358621	\N
1296603	113	1012	91411	\N
1296603	112	1011	91410	\N
1296603	30986	\N	358621	\N
1296604	113	1012	91411	\N
1296604	112	1011	91410	\N
1296604	30986	\N	358621	\N
1296605	113	1012	91411	\N
1296605	112	1011	91410	\N
1296605	30986	\N	358621	\N
1296606	113	1012	91411	\N
1296606	112	1011	91410	\N
1296606	30986	\N	358621	\N
1296607	113	1012	91411	\N
1296607	112	1011	91410	\N
1296607	30986	\N	358621	\N
1296608	113	1012	91411	\N
1296608	112	1011	91410	\N
1296608	30986	\N	358621	\N
1296609	113	1012	91411	\N
1296609	112	1011	91410	\N
1296609	30986	\N	358621	\N
1296610	113	1012	91411	\N
1296610	112	1011	91410	\N
1296610	30986	\N	358621	\N
1296611	113	1012	91411	\N
1296611	112	1011	91410	\N
1296611	30986	\N	358621	\N
1296612	113	1012	91411	\N
1296612	112	1011	91410	\N
1296612	30986	\N	358621	\N
1296613	113	1012	91411	\N
1296613	112	1011	91410	\N
1296613	30986	\N	358621	\N
1296614	113	1012	91411	\N
1296614	112	1011	91410	\N
1296614	30986	\N	358621	\N
1296615	113	1012	91411	\N
1296615	112	1011	91410	\N
1296615	30986	\N	358621	\N
1296616	113	1012	91411	\N
1296616	112	1011	91410	\N
1296616	30986	\N	358621	\N
1296617	113	1012	91411	\N
1296617	112	1011	91410	\N
1296617	30986	\N	358621	\N
1296618	113	1012	91411	\N
1296618	112	1011	91410	\N
1296618	30986	\N	358621	\N
1296619	113	1012	91411	\N
1296619	112	1011	91410	\N
1296619	30986	\N	358621	\N
1296620	113	1012	91411	\N
1296620	112	1011	91410	\N
1296620	30986	\N	358621	\N
1296621	113	1012	91411	\N
1296621	112	1011	91410	\N
1296621	30986	\N	358621	\N
1296622	113	1012	91411	\N
1296622	112	1011	91410	\N
1296622	30986	\N	358621	\N
1296623	113	1012	91411	\N
1296623	112	1011	91410	\N
1296623	30986	\N	358621	\N
1296624	113	1012	91411	\N
1296624	112	1011	91410	\N
1296624	30986	\N	358621	\N
1296625	113	1012	91411	\N
1296625	112	1011	91410	\N
1296625	30986	\N	358621	\N
1296626	113	1012	91411	\N
1296626	112	1011	91410	\N
1296626	30986	\N	358621	\N
1296627	113	1012	91411	\N
1296627	112	1011	91410	\N
1296627	30986	\N	358621	\N
1296628	113	1012	91411	\N
1296628	112	1011	91410	\N
1296628	30986	\N	358621	\N
1296629	113	1012	91411	\N
1296629	112	1011	91410	\N
1296629	30986	\N	358621	\N
1296630	113	1012	91411	\N
1296630	112	1011	91410	\N
1296630	30986	\N	358621	\N
1296631	113	1012	91411	\N
1296631	112	1011	91410	\N
1296631	30986	\N	358621	\N
1296632	113	1012	91411	\N
1296632	112	1011	91410	\N
1296632	30986	\N	358621	\N
1296633	113	1012	91411	\N
1296633	112	1011	91410	\N
1296633	30986	\N	358621	\N
1296634	113	1012	91411	\N
1296634	112	1011	91410	\N
1296634	30986	\N	358621	\N
1296635	113	1012	91411	\N
1296635	112	1011	91410	\N
1296635	30986	\N	358621	\N
1296636	113	1012	91411	\N
1296636	112	1011	91410	\N
1296636	30986	\N	358621	\N
1296637	113	1012	91411	\N
1296637	112	1011	91410	\N
1296637	30986	\N	358621	\N
1296638	113	1012	91411	\N
1296638	112	1011	91410	\N
1296638	30986	\N	358621	\N
1296639	113	1012	91411	\N
1296639	112	1011	91410	\N
1296639	30986	\N	358621	\N
1296640	113	1012	91411	\N
1296640	112	1011	91410	\N
1296640	30986	\N	358621	\N
1296641	113	1012	91411	\N
1296641	112	1011	91410	\N
1296641	30986	\N	358621	\N
1296642	113	1012	91411	\N
1296642	112	1011	91410	\N
1296642	30986	\N	358621	\N
1296643	113	1012	91411	\N
1296643	112	1011	91410	\N
1296643	30986	\N	358621	\N
1296644	113	1012	91411	\N
1296644	112	1011	91410	\N
1296644	30986	\N	358621	\N
1296645	113	1012	91411	\N
1296645	112	1011	91410	\N
1296645	30986	\N	358621	\N
1296646	113	1012	91411	\N
1296646	112	1011	91410	\N
1296646	30986	\N	358621	\N
1296647	113	1012	91411	\N
1296647	112	1011	91410	\N
1296647	30986	\N	358621	\N
1296648	113	1012	91411	\N
1296648	112	1011	91410	\N
1296648	30986	\N	358621	\N
1296649	113	1012	91411	\N
1296649	112	1011	91410	\N
1296649	30986	\N	358621	\N
1296650	113	1012	91411	\N
1296650	112	1011	91410	\N
1296650	30986	\N	358621	\N
1296651	113	1012	91411	\N
1296651	112	1011	91410	\N
1296651	30986	\N	358621	\N
1296652	113	1012	91411	\N
1296652	112	1011	91410	\N
1296652	30986	\N	358621	\N
1296653	113	1012	91411	\N
1296653	112	1011	91410	\N
1296653	30986	\N	358621	\N
1296654	113	1012	91411	\N
1296654	112	1011	91410	\N
1296654	30986	\N	358621	\N
1296655	113	1012	91411	\N
1296655	112	1011	91410	\N
1296655	30986	\N	358621	\N
1296656	113	1012	91411	\N
1296656	112	1011	91410	\N
1296656	30986	\N	358621	\N
1296657	113	1012	91411	\N
1296657	112	1011	91410	\N
1296657	30986	\N	358621	\N
1296658	113	1012	91411	\N
1296658	112	1011	91410	\N
1296658	30986	\N	358621	\N
1296659	113	1012	91411	\N
1296659	112	1011	91410	\N
1296659	30986	\N	358621	\N
1296660	113	1012	91411	\N
1296660	112	1011	91410	\N
1296660	30986	\N	358621	\N
1296661	113	1012	91411	\N
1296661	112	1011	91410	\N
1296661	30986	\N	358621	\N
1296662	113	1012	91411	\N
1296662	112	1011	91410	\N
1296662	30986	\N	358621	\N
1296663	113	1012	91411	\N
1296663	112	1011	91410	\N
1296663	30986	\N	358621	\N
1296664	113	1012	91411	\N
1296664	112	1011	91410	\N
1296664	30986	\N	358621	\N
1296665	113	1012	91411	\N
1296665	112	1011	91410	\N
1296665	30986	\N	358621	\N
1296666	113	1012	91411	\N
1296666	112	1011	91410	\N
1296666	30986	\N	358621	\N
1296667	113	1012	91411	\N
1296667	112	1011	91410	\N
1296667	30986	\N	358621	\N
1296668	113	1012	91411	\N
1296668	112	1011	91410	\N
1296668	30986	\N	358621	\N
1296669	113	1012	91411	\N
1296669	112	1011	91410	\N
1296669	30986	\N	358621	\N
1296670	113	1012	91411	\N
1296670	112	1011	91410	\N
1296670	30986	\N	358621	\N
1296671	113	1012	91411	\N
1296671	112	1011	91410	\N
1296671	30986	\N	358621	\N
1296672	113	1012	91411	\N
1296672	112	1011	91410	\N
1296672	30986	\N	358621	\N
1296673	113	1012	91411	\N
1296673	112	1011	91410	\N
1296673	30986	\N	358621	\N
1296674	113	1012	91411	\N
1296674	112	1011	91410	\N
1296674	30986	\N	358621	\N
1296675	113	1012	91411	\N
1296675	112	1011	91410	\N
1296675	30986	\N	358621	\N
1296676	113	1012	91411	\N
1296676	112	1011	91410	\N
1296676	30986	\N	358621	\N
1296677	113	1012	91411	\N
1296677	112	1011	91410	\N
1296677	30986	\N	358621	\N
1296678	113	1012	91411	\N
1296678	112	1011	91410	\N
1296678	30986	\N	358621	\N
1296679	113	1012	91411	\N
1296679	112	1011	91410	\N
1296679	30986	\N	358621	\N
1296680	113	1012	91411	\N
1296680	112	1011	91410	\N
1296680	30986	\N	358621	\N
1296681	113	1012	91411	\N
1296681	112	1011	91410	\N
1296681	30986	\N	358621	\N
1296682	113	1012	91411	\N
1296682	112	1011	91410	\N
1296682	30986	\N	358621	\N
1296683	113	1012	91411	\N
1296683	112	1011	91410	\N
1296683	30986	\N	358621	\N
1296684	113	1012	91411	\N
1296684	112	1011	91410	\N
1296684	30986	\N	358621	\N
1296685	113	1012	91411	\N
1296685	112	1011	91410	\N
1296685	30986	\N	358621	\N
1296686	113	1012	91411	\N
1296686	112	1011	91410	\N
1296686	30986	\N	358621	\N
1296687	113	1012	91411	\N
1296687	112	1011	91410	\N
1296687	30986	\N	358621	\N
1296688	113	1012	91411	\N
1296688	112	1011	91410	\N
1296688	30986	\N	358621	\N
1296689	113	1012	91411	\N
1296689	112	1011	91410	\N
1296689	30986	\N	358621	\N
1296690	113	1012	91411	\N
1296690	112	1011	91410	\N
1296690	30986	\N	358621	\N
1296691	113	1012	91411	\N
1296691	112	1011	91410	\N
1296691	30986	\N	358621	\N
1296692	113	1012	91411	\N
1296692	112	1011	91410	\N
1296692	30986	\N	358621	\N
1296693	113	1012	91411	\N
1296693	112	1011	91410	\N
1296693	30986	\N	358621	\N
1296694	113	1012	91411	\N
1296694	112	1011	91410	\N
1296694	30986	\N	358621	\N
1296695	113	1012	91411	\N
1296695	112	1011	91410	\N
1296695	30986	\N	358621	\N
1296696	113	1012	91411	\N
1296696	112	1011	91410	\N
1296696	30986	\N	358621	\N
1296697	113	1012	91411	\N
1296697	112	1011	91410	\N
1296697	30986	\N	358621	\N
1296698	113	1012	91411	\N
1296698	112	1011	91410	\N
1296698	30986	\N	358621	\N
1296699	113	1012	91411	\N
1296699	112	1011	91410	\N
1296699	30986	\N	358621	\N
1296700	113	1012	91411	\N
1296700	112	1011	91410	\N
1296700	30986	\N	358621	\N
1296701	113	1012	91411	\N
1296701	112	1011	91410	\N
1296701	30986	\N	358621	\N
1296702	113	1012	91411	\N
1296702	112	1011	91410	\N
1296702	30986	\N	358621	\N
1296703	113	1012	91411	\N
1296703	112	1011	91410	\N
1296703	30986	\N	358621	\N
1296704	113	1012	91411	\N
1296704	112	1011	91410	\N
1296704	30986	\N	358621	\N
1296705	113	1012	91411	\N
1296705	112	1011	91410	\N
1296705	30986	\N	358621	\N
1296706	113	1012	91411	\N
1296706	112	1011	91410	\N
1296706	30986	\N	358621	\N
1296707	113	1012	91411	\N
1296707	112	1011	91410	\N
1296707	30986	\N	358621	\N
1296708	113	1012	91411	\N
1296708	112	1011	91410	\N
1296708	30986	\N	358621	\N
1296709	113	1012	91411	\N
1296709	112	1011	91410	\N
1296709	30986	\N	358621	\N
1296710	113	1012	91411	\N
1296710	112	1011	91410	\N
1296710	30986	\N	358621	\N
1296711	113	1012	91411	\N
1296711	112	1011	91410	\N
1296711	30986	\N	358621	\N
1296712	113	1012	91411	\N
1296712	112	1011	91410	\N
1296712	30986	\N	358621	\N
1296713	113	1012	91411	\N
1296713	112	1011	91410	\N
1296713	30986	\N	358621	\N
1296714	113	1012	91411	\N
1296714	112	1011	91410	\N
1296714	30986	\N	358621	\N
1296715	113	1012	91411	\N
1296715	112	1011	91410	\N
1296715	30986	\N	358621	\N
1296716	113	1012	91411	\N
1296716	112	1011	91410	\N
1296716	30986	\N	358621	\N
1296717	113	1012	91411	\N
1296717	112	1011	91410	\N
1296717	30986	\N	358621	\N
1296718	113	1012	91411	\N
1296718	112	1011	91410	\N
1296718	30986	\N	358621	\N
1296719	113	1012	91411	\N
1296719	112	1011	91410	\N
1296719	30986	\N	358621	\N
1296720	113	1012	91411	\N
1296720	112	1011	91410	\N
1296720	30986	\N	358621	\N
1296721	113	1012	91411	\N
1296721	112	1011	91410	\N
1296721	30986	\N	358621	\N
1296722	113	1012	91411	\N
1296722	112	1011	91410	\N
1296722	30986	\N	358621	\N
1296723	113	1012	91411	\N
1296723	112	1011	91410	\N
1296723	30986	\N	358621	\N
1296724	113	1012	91411	\N
1296724	112	1011	91410	\N
1296724	30986	\N	358621	\N
1296725	113	1012	91411	\N
1296725	112	1011	91410	\N
1296725	30986	\N	358621	\N
1296726	113	1012	91411	\N
1296726	112	1011	91410	\N
1296726	30986	\N	358621	\N
1296727	113	1012	91411	\N
1296727	112	1011	91410	\N
1296727	30986	\N	358621	\N
1296728	113	1012	91411	\N
1296728	112	1011	91410	\N
1296728	30986	\N	358621	\N
1296729	113	1012	91411	\N
1296729	112	1011	91410	\N
1296729	30986	\N	358621	\N
1296730	113	1012	91411	\N
1296730	112	1011	91410	\N
1296730	30986	\N	358621	\N
1296731	113	1012	91411	\N
1296731	112	1011	91410	\N
1296731	30986	\N	358621	\N
1296732	113	1012	91411	\N
1296732	112	1011	91410	\N
1296732	30986	\N	358621	\N
1296733	113	1012	91411	\N
1296733	112	1011	91410	\N
1296733	30986	\N	358621	\N
1296734	113	1012	91411	\N
1296734	112	1011	91410	\N
1296734	30986	\N	358621	\N
1296735	113	1012	91411	\N
1296735	112	1011	91410	\N
1296735	30986	\N	358621	\N
1296736	113	1012	91411	\N
1296736	112	1011	91410	\N
1296736	30986	\N	358621	\N
1296737	113	1012	91411	\N
1296737	112	1011	91410	\N
1296737	30986	\N	358621	\N
1296738	113	1012	91411	\N
1296738	112	1011	91410	\N
1296738	30986	\N	358621	\N
1296739	113	1012	91411	\N
1296739	112	1011	91410	\N
1296739	30986	\N	358621	\N
1296740	113	1012	91411	\N
1296740	112	1011	91410	\N
1296740	30986	\N	358621	\N
1296741	113	1012	91411	\N
1296741	112	1011	91410	\N
1296741	30986	\N	358621	\N
1296742	113	1012	91411	\N
1296742	112	1011	91410	\N
1296742	30986	\N	358621	\N
1296743	113	1012	91411	\N
1296743	112	1011	91410	\N
1296743	30986	\N	358621	\N
1296744	113	1012	91411	\N
1296744	112	1011	91410	\N
1296744	30986	\N	358621	\N
1296745	113	1012	91411	\N
1296745	112	1011	91410	\N
1296745	30986	\N	358621	\N
1296746	113	1012	91411	\N
1296746	112	1011	91410	\N
1296746	30986	\N	358621	\N
1296747	113	1012	91411	\N
1296747	112	1011	91410	\N
1296747	30986	\N	358621	\N
1296748	113	1012	91411	\N
1296748	112	1011	91410	\N
1296748	30986	\N	358621	\N
1296749	113	1012	91411	\N
1296749	112	1011	91410	\N
1296749	30986	\N	358621	\N
1296750	113	1012	91411	\N
1296750	112	1011	91410	\N
1296750	30986	\N	358621	\N
1296751	113	1012	91411	\N
1296751	112	1011	91410	\N
1296751	30986	\N	358621	\N
1296752	113	1012	91411	\N
1296752	112	1011	91410	\N
1296752	30986	\N	358621	\N
1296753	113	1012	91411	\N
1296753	112	1011	91410	\N
1296753	30986	\N	358621	\N
1296754	113	1012	91411	\N
1296754	112	1011	91410	\N
1296754	30986	\N	358621	\N
1296755	113	1012	91411	\N
1296755	112	1011	91410	\N
1296755	30986	\N	358621	\N
1296756	113	1012	91411	\N
1296756	112	1011	91410	\N
1296756	30986	\N	358621	\N
1296757	113	1012	91411	\N
1296757	112	1011	91410	\N
1296757	30986	\N	358621	\N
1296758	113	1012	91411	\N
1296758	112	1011	91410	\N
1296758	30986	\N	358621	\N
1296759	113	1012	91411	\N
1296759	112	1011	91410	\N
1296759	30986	\N	358621	\N
1296760	113	1012	91411	\N
1296760	112	1011	91410	\N
1296760	30986	\N	358621	\N
1296761	113	1012	91411	\N
1296761	112	1011	91410	\N
1296761	30986	\N	358621	\N
1296762	113	1012	91411	\N
1296762	112	1011	91410	\N
1296762	30986	\N	358621	\N
1296763	113	1012	91411	\N
1296763	112	1011	91410	\N
1296763	30986	\N	358621	\N
1296764	113	1012	91411	\N
1296764	112	1011	91410	\N
1296764	30986	\N	358621	\N
1296765	113	1012	91411	\N
1296765	112	1011	91410	\N
1296765	30986	\N	358621	\N
1296766	113	1012	91411	\N
1296766	112	1011	91410	\N
1296766	30986	\N	358621	\N
1296767	113	1012	91411	\N
1296767	112	1011	91410	\N
1296767	30986	\N	358621	\N
1296768	113	1012	91411	\N
1296768	112	1011	91410	\N
1296768	30986	\N	358621	\N
1296769	113	1012	91411	\N
1296769	112	1011	91410	\N
1296769	30986	\N	358621	\N
1296770	113	1012	91411	\N
1296770	112	1011	91410	\N
1296770	30986	\N	358621	\N
1296771	113	1012	91411	\N
1296771	112	1011	91410	\N
1296771	30986	\N	358621	\N
1296772	113	1012	91411	\N
1296772	112	1011	91410	\N
1296772	30986	\N	358621	\N
1296773	113	1012	91411	\N
1296773	112	1011	91410	\N
1296773	30986	\N	358621	\N
1296774	113	1012	91411	\N
1296774	112	1011	91410	\N
1296774	30986	\N	358621	\N
1296775	113	1012	91411	\N
1296775	112	1011	91410	\N
1296775	30986	\N	358621	\N
1296776	113	1012	91411	\N
1296776	112	1011	91410	\N
1296776	30986	\N	358621	\N
1296777	113	1012	91411	\N
1296777	112	1011	91410	\N
1296777	30986	\N	358621	\N
1296778	113	1012	91411	\N
1296778	112	1011	91410	\N
1296778	30986	\N	358621	\N
1296779	113	1012	91411	\N
1296779	112	1011	91410	\N
1296779	30986	\N	358621	\N
1296780	113	1012	91411	\N
1296780	112	1011	91410	\N
1296780	30986	\N	358621	\N
1296781	113	1012	91411	\N
1296781	112	1011	91410	\N
1296781	30986	\N	358621	\N
1296782	113	1012	91411	\N
1296782	112	1011	91410	\N
1296782	30986	\N	358621	\N
1296783	113	1012	91411	\N
1296783	112	1011	91410	\N
1296783	30986	\N	358621	\N
1296784	113	1012	91411	\N
1296784	112	1011	91410	\N
1296784	30986	\N	358621	\N
1296785	113	1012	91411	\N
1296785	112	1011	91410	\N
1296785	30986	\N	358621	\N
1296786	113	1012	91411	\N
1296786	112	1011	91410	\N
1296786	30986	\N	358621	\N
1296787	113	1012	91411	\N
1296787	112	1011	91410	\N
1296787	30986	\N	358621	\N
1296788	113	1012	91411	\N
1296788	112	1011	91410	\N
1296788	30986	\N	358621	\N
1296789	113	1012	91411	\N
1296789	112	1011	91410	\N
1296789	30986	\N	358621	\N
1296790	113	1012	91411	\N
1296790	112	1011	91410	\N
1296790	30986	\N	358621	\N
1296791	113	1012	91411	\N
1296791	112	1011	91410	\N
1296791	30986	\N	358621	\N
1296792	113	1012	91411	\N
1296792	112	1011	91410	\N
1296792	30986	\N	358621	\N
1296793	113	1012	91411	\N
1296793	112	1011	91410	\N
1296793	30986	\N	358621	\N
1296794	113	1012	91411	\N
1296794	112	1011	91410	\N
1296794	30986	\N	358621	\N
1296795	113	1012	91411	\N
1296795	112	1011	91410	\N
1296795	30986	\N	358621	\N
1296796	113	1012	91411	\N
1296796	112	1011	91410	\N
1296796	30986	\N	358621	\N
1296797	113	1012	91411	\N
1296797	112	1011	91410	\N
1296797	30986	\N	358621	\N
1296798	113	1012	91411	\N
1296798	112	1011	91410	\N
1296798	30986	\N	358621	\N
1296799	113	1012	91411	\N
1296799	112	1011	91410	\N
1296799	30986	\N	358621	\N
1296800	113	1012	91411	\N
1296800	112	1011	91410	\N
1296800	30986	\N	358621	\N
1296801	113	1012	91411	\N
1296801	112	1011	91410	\N
1296801	30986	\N	358621	\N
1296802	113	1012	91411	\N
1296802	112	1011	91410	\N
1296802	30986	\N	358621	\N
1296803	113	1012	91411	\N
1296803	112	1011	91410	\N
1296803	30986	\N	358621	\N
1296804	113	1012	91411	\N
1296804	112	1011	91410	\N
1296804	30986	\N	358621	\N
1296805	113	1012	91411	\N
1296805	112	1011	91410	\N
1296805	30986	\N	358621	\N
1296806	113	1012	91411	\N
1296806	112	1011	91410	\N
1296806	30986	\N	358621	\N
1296807	113	1012	91411	\N
1296807	112	1011	91410	\N
1296807	30986	\N	358621	\N
1296808	113	1012	91411	\N
1296808	112	1011	91410	\N
1296808	30986	\N	358621	\N
1296809	113	1012	91411	\N
1296809	112	1011	91410	\N
1296809	30986	\N	358621	\N
1296810	113	1012	91411	\N
1296810	112	1011	91410	\N
1296810	30986	\N	358621	\N
1296811	113	1012	91411	\N
1296811	112	1011	91410	\N
1296811	30986	\N	358621	\N
1296812	113	1012	91411	\N
1296812	112	1011	91410	\N
1296812	30986	\N	358621	\N
1296813	113	1012	91411	\N
1296813	112	1011	91410	\N
1296813	30986	\N	358621	\N
1296814	113	1012	91411	\N
1296814	112	1011	91410	\N
1296814	30986	\N	358621	\N
1296815	113	1012	91411	\N
1296815	112	1011	91410	\N
1296815	30986	\N	358621	\N
1296816	113	1012	91411	\N
1296816	112	1011	91410	\N
1296816	30986	\N	358621	\N
1296817	113	1012	91411	\N
1296817	112	1011	91410	\N
1296817	30986	\N	358621	\N
1296818	113	1012	91411	\N
1296818	112	1011	91410	\N
1296818	30986	\N	358621	\N
1296819	113	1012	91411	\N
1296819	112	1011	91410	\N
1296819	30986	\N	358621	\N
1296820	113	1012	91411	\N
1296820	112	1011	91410	\N
1296820	30986	\N	358621	\N
1296821	113	1012	91411	\N
1296821	112	1011	91410	\N
1296821	30986	\N	358621	\N
1296822	113	1012	91411	\N
1296822	112	1011	91410	\N
1296822	30986	\N	358621	\N
1296823	113	1012	91411	\N
1296823	112	1011	91410	\N
1296823	30986	\N	358621	\N
1296824	113	1012	91411	\N
1296824	112	1011	91410	\N
1296824	30986	\N	358621	\N
1296825	113	1012	91411	\N
1296825	112	1011	91410	\N
1296825	30986	\N	358621	\N
1296826	113	1012	91411	\N
1296826	112	1011	91410	\N
1296826	30986	\N	358621	\N
1296827	113	1012	91411	\N
1296827	112	1011	91410	\N
1296827	30986	\N	358621	\N
1296828	113	1012	91411	\N
1296828	112	1011	91410	\N
1296828	30986	\N	358621	\N
1296829	113	1012	91411	\N
1296829	112	1011	91410	\N
1296829	30986	\N	358621	\N
1296830	113	1012	91411	\N
1296830	112	1011	91410	\N
1296830	30986	\N	358621	\N
1296831	113	1012	91411	\N
1296831	112	1011	91410	\N
1296831	30986	\N	358621	\N
1296832	113	1012	91411	\N
1296832	112	1011	91410	\N
1296832	30986	\N	358621	\N
1296833	113	1012	91411	\N
1296833	112	1011	91410	\N
1296833	30986	\N	358621	\N
1296834	113	1012	91411	\N
1296834	112	1011	91410	\N
1296834	30986	\N	358621	\N
1296835	113	1012	91411	\N
1296835	112	1011	91410	\N
1296835	30986	\N	358621	\N
1296836	113	1012	91411	\N
1296836	112	1011	91410	\N
1296836	30986	\N	358621	\N
1296837	113	1012	91411	\N
1296837	112	1011	91410	\N
1296837	30986	\N	358621	\N
1296838	113	1012	91411	\N
1296838	112	1011	91410	\N
1296838	30986	\N	358621	\N
1296839	113	1012	91411	\N
1296839	112	1011	91410	\N
1296839	30986	\N	358621	\N
1296840	113	1012	91411	\N
1296840	112	1011	91410	\N
1296840	30986	\N	358621	\N
1296841	113	1012	91411	\N
1296841	112	1011	91410	\N
1296841	30986	\N	358621	\N
1296842	113	1012	91411	\N
1296842	112	1011	91410	\N
1296842	30986	\N	358621	\N
1296843	113	1012	91411	\N
1296843	112	1011	91410	\N
1296843	30986	\N	358621	\N
1296844	113	1012	91411	\N
1296844	112	1011	91410	\N
1296844	30986	\N	358621	\N
1296845	113	1012	91411	\N
1296845	112	1011	91410	\N
1296845	30986	\N	358621	\N
1296846	113	1012	91411	\N
1296846	112	1011	91410	\N
1296846	30986	\N	358621	\N
1296847	113	1012	91411	\N
1296847	112	1011	91410	\N
1296847	30986	\N	358621	\N
1296848	113	1012	91411	\N
1296848	112	1011	91410	\N
1296848	30986	\N	358621	\N
1296849	113	1012	91411	\N
1296849	112	1011	91410	\N
1296849	30986	\N	358621	\N
1296850	113	1012	91411	\N
1296850	112	1011	91410	\N
1296850	30986	\N	358621	\N
1296851	113	1012	91411	\N
1296851	112	1011	91410	\N
1296851	30986	\N	358621	\N
1296852	113	1012	91411	\N
1296852	112	1011	91410	\N
1296852	30986	\N	358621	\N
1296853	113	1012	91411	\N
1296853	112	1011	91410	\N
1296853	30986	\N	358621	\N
1296854	113	1012	91411	\N
1296854	112	1011	91410	\N
1296854	30986	\N	358621	\N
1296855	113	1012	91411	\N
1296855	112	1011	91410	\N
1296855	30986	\N	358621	\N
1296856	113	1012	91411	\N
1296856	112	1011	91410	\N
1296856	30986	\N	358621	\N
1296857	113	1012	91411	\N
1296857	112	1011	91410	\N
1296857	30986	\N	358621	\N
1296858	113	1012	91411	\N
1296858	112	1011	91410	\N
1296858	30986	\N	358621	\N
1296859	113	1012	91411	\N
1296859	112	1011	91410	\N
1296859	30986	\N	358621	\N
1296860	113	1012	91411	\N
1296860	112	1011	91410	\N
1296860	30986	\N	358621	\N
1296861	113	1012	91411	\N
1296861	112	1011	91410	\N
1296861	30986	\N	358621	\N
1296862	113	1012	91411	\N
1296862	112	1011	91410	\N
1296862	30986	\N	358621	\N
1296863	113	1012	91411	\N
1296863	112	1011	91410	\N
1296863	30986	\N	358621	\N
1296864	113	1012	91411	\N
1296864	112	1011	91410	\N
1296864	30986	\N	358621	\N
1296865	113	1012	91411	\N
1296865	112	1011	91410	\N
1296865	30986	\N	358621	\N
1296866	113	1012	91411	\N
1296866	112	1011	91410	\N
1296866	30986	\N	358621	\N
1296867	113	1012	91411	\N
1296867	112	1011	91410	\N
1296867	30986	\N	358621	\N
1296868	113	1012	91411	\N
1296868	112	1011	91410	\N
1296868	30986	\N	358621	\N
1296869	113	1012	91411	\N
1296869	112	1011	91410	\N
1296869	30986	\N	358621	\N
1296870	113	1012	91411	\N
1296870	112	1011	91410	\N
1296870	30986	\N	358621	\N
1296871	113	1012	91411	\N
1296871	112	1011	91410	\N
1296871	30986	\N	358621	\N
1296872	113	1012	91411	\N
1296872	112	1011	91410	\N
1296872	30986	\N	358621	\N
1296873	113	1012	91411	\N
1296873	112	1011	91410	\N
1296873	30986	\N	358621	\N
1296874	113	1012	91411	\N
1296874	112	1011	91410	\N
1296874	30986	\N	358621	\N
1296875	113	1012	91411	\N
1296875	112	1011	91410	\N
1296875	30986	\N	358621	\N
1296876	113	1012	91411	\N
1296876	112	1011	91410	\N
1296876	30986	\N	358621	\N
1296877	113	1012	91411	\N
1296877	112	1011	91410	\N
1296877	30986	\N	358621	\N
1296878	113	1012	91411	\N
1296878	112	1011	91410	\N
1296878	30986	\N	358621	\N
1296879	113	1012	91411	\N
1296879	112	1011	91410	\N
1296879	30986	\N	358621	\N
1296880	113	1012	91411	\N
1296880	112	1011	91410	\N
1296880	30986	\N	358621	\N
1296881	113	1012	91411	\N
1296881	112	1011	91410	\N
1296881	30986	\N	358621	\N
1296882	113	1012	91411	\N
1296882	112	1011	91410	\N
1296882	30986	\N	358621	\N
1296883	113	1012	91411	\N
1296883	112	1011	91410	\N
1296883	30986	\N	358621	\N
1296884	113	1012	91411	\N
1296884	112	1011	91410	\N
1296884	30986	\N	358621	\N
1296885	113	1012	91411	\N
1296885	112	1011	91410	\N
1296885	30986	\N	358621	\N
1296886	113	1012	91411	\N
1296886	112	1011	91410	\N
1296886	30986	\N	358621	\N
1296887	113	1012	91411	\N
1296887	112	1011	91410	\N
1296887	30986	\N	358621	\N
1296888	113	1012	91411	\N
1296888	112	1011	91410	\N
1296888	30986	\N	358621	\N
1296889	113	1012	91411	\N
1296889	112	1011	91410	\N
1296889	30986	\N	358621	\N
1296890	113	1012	91411	\N
1296890	112	1011	91410	\N
1296890	30986	\N	358621	\N
1296891	113	1012	91411	\N
1296891	112	1011	91410	\N
1296891	30986	\N	358621	\N
1296892	113	1012	91411	\N
1296892	112	1011	91410	\N
1296892	30986	\N	358621	\N
1296893	113	1012	91411	\N
1296893	112	1011	91410	\N
1296893	30986	\N	358621	\N
1296894	113	1012	91411	\N
1296894	112	1011	91410	\N
1296894	30986	\N	358621	\N
1296895	113	1012	91411	\N
1296895	112	1011	91410	\N
1296895	30986	\N	358621	\N
1296896	113	1012	91411	\N
1296896	112	1011	91410	\N
1296896	30986	\N	358621	\N
1296897	113	1012	91411	\N
1296897	112	1011	91410	\N
1296897	30986	\N	358621	\N
1296898	113	1012	91411	\N
1296898	112	1011	91410	\N
1296898	30986	\N	358621	\N
1296899	113	1012	91411	\N
1296899	112	1011	91410	\N
1296899	30986	\N	358621	\N
1296900	113	1012	91411	\N
1296900	112	1011	91410	\N
1296900	30986	\N	358621	\N
1296901	113	1012	91411	\N
1296901	112	1011	91410	\N
1296901	30986	\N	358621	\N
1296902	113	1012	91411	\N
1296902	112	1011	91410	\N
1296902	30986	\N	358621	\N
1296903	113	1012	91411	\N
1296903	112	1011	91410	\N
1296903	30986	\N	358621	\N
1296904	113	1012	91411	\N
1296904	112	1011	91410	\N
1296904	30986	\N	358621	\N
1296905	113	1012	91411	\N
1296905	112	1011	91410	\N
1296905	30986	\N	358621	\N
1296906	113	1012	91411	\N
1296906	112	1011	91410	\N
1296906	30986	\N	358621	\N
1296907	113	1012	91411	\N
1296907	112	1011	91410	\N
1296907	30986	\N	358621	\N
1296908	113	1012	91411	\N
1296908	112	1011	91410	\N
1296908	30986	\N	358621	\N
1296909	113	1012	91411	\N
1296909	112	1011	91410	\N
1296909	30986	\N	358621	\N
1296910	113	1012	91411	\N
1296910	112	1011	91410	\N
1296910	30986	\N	358621	\N
1296911	113	1012	91411	\N
1296911	112	1011	91410	\N
1296911	30986	\N	358621	\N
1296912	113	1012	91411	\N
1296912	112	1011	91410	\N
1296912	30986	\N	358621	\N
1296913	113	1012	91411	\N
1296913	112	1011	91410	\N
1296913	30986	\N	358621	\N
1296914	113	1012	91411	\N
1296914	112	1011	91410	\N
1296914	30986	\N	358621	\N
1296915	113	1012	91411	\N
1296915	112	1011	91410	\N
1296915	30986	\N	358621	\N
1296916	113	1012	91411	\N
1296916	112	1011	91410	\N
1296916	30986	\N	358621	\N
1296917	113	1012	91411	\N
1296917	112	1011	91410	\N
1296917	30986	\N	358621	\N
1296918	113	1012	91411	\N
1296918	112	1011	91410	\N
1296918	30986	\N	358621	\N
1296919	113	1012	91411	\N
1296919	112	1011	91410	\N
1296919	30986	\N	358621	\N
1296920	113	1012	91411	\N
1296920	112	1011	91410	\N
1296920	30986	\N	358621	\N
1296921	113	1012	91411	\N
1296921	112	1011	91410	\N
1296921	30986	\N	358621	\N
1296922	113	1012	91411	\N
1296922	112	1011	91410	\N
1296922	30986	\N	358621	\N
1296923	113	1012	91411	\N
1296923	112	1011	91410	\N
1296923	30986	\N	358621	\N
1296924	113	1012	91411	\N
1296924	112	1011	91410	\N
1296924	30986	\N	358621	\N
1296925	113	1012	91411	\N
1296925	112	1011	91410	\N
1296925	30986	\N	358621	\N
1296926	113	1012	91411	\N
1296926	112	1011	91410	\N
1296926	30986	\N	358621	\N
1296927	113	1012	91411	\N
1296927	112	1011	91410	\N
1296927	30986	\N	358621	\N
1296928	113	1012	91411	\N
1296928	112	1011	91410	\N
1296928	30986	\N	358621	\N
1296929	113	1012	91411	\N
1296929	112	1011	91410	\N
1296929	30986	\N	358621	\N
1296930	113	1012	91411	\N
1296930	112	1011	91410	\N
1296930	30986	\N	358621	\N
1296931	113	1012	91411	\N
1296931	112	1011	91410	\N
1296931	30986	\N	358621	\N
1296932	113	1012	91411	\N
1296932	112	1011	91410	\N
1296932	30986	\N	358621	\N
1296933	113	1012	91411	\N
1296933	112	1011	91410	\N
1296933	30986	\N	358621	\N
1296934	113	1012	91411	\N
1296934	112	1011	91410	\N
1296934	30986	\N	358621	\N
1296935	113	1012	91411	\N
1296935	112	1011	91410	\N
1296935	30986	\N	358621	\N
1296936	113	1012	91411	\N
1296936	112	1011	91410	\N
1296936	30986	\N	358621	\N
1296937	113	1012	91411	\N
1296937	112	1011	91410	\N
1296937	30986	\N	358621	\N
1296938	113	1012	91411	\N
1296938	112	1011	91410	\N
1296938	30986	\N	358621	\N
1296939	113	1012	91411	\N
1296939	112	1011	91410	\N
1296939	30986	\N	358621	\N
1296940	113	1012	91411	\N
1296940	112	1011	91410	\N
1296940	30986	\N	358621	\N
1296941	113	1012	91411	\N
1296941	112	1011	91410	\N
1296941	30986	\N	358621	\N
1296942	113	1012	91411	\N
1296942	112	1011	91410	\N
1296942	30986	\N	358621	\N
1296943	113	1012	91411	\N
1296943	112	1011	91410	\N
1296943	30986	\N	358621	\N
1296944	113	1012	91411	\N
1296944	112	1011	91410	\N
1296944	30986	\N	358621	\N
1296945	113	1012	91411	\N
1296945	112	1011	91410	\N
1296945	30986	\N	358621	\N
1296946	113	1012	91411	\N
1296946	112	1011	91410	\N
1296946	30986	\N	358621	\N
1296947	113	1012	91411	\N
1296947	112	1011	91410	\N
1296947	30986	\N	358621	\N
1296948	113	1012	91411	\N
1296948	112	1011	91410	\N
1296948	30986	\N	358621	\N
1296949	113	1012	91411	\N
1296949	112	1011	91410	\N
1296949	30986	\N	358621	\N
1296950	113	1012	91411	\N
1296950	112	1011	91410	\N
1296950	30986	\N	358621	\N
1296951	113	1012	91411	\N
1296951	112	1011	91410	\N
1296951	30986	\N	358621	\N
1296952	113	1012	91411	\N
1296952	112	1011	91410	\N
1296952	30986	\N	358621	\N
1296953	113	1012	91411	\N
1296953	112	1011	91410	\N
1296953	30986	\N	358621	\N
1296954	113	1012	91411	\N
1296954	112	1011	91410	\N
1296954	30986	\N	358621	\N
1296955	113	1012	91411	\N
1296955	112	1011	91410	\N
1296955	30986	\N	358621	\N
1296956	113	1012	91411	\N
1296956	112	1011	91410	\N
1296956	30986	\N	358621	\N
1296957	113	1012	91411	\N
1296957	112	1011	91410	\N
1296957	30986	\N	358621	\N
1296958	113	1012	91411	\N
1296958	112	1011	91410	\N
1296958	30986	\N	358621	\N
1296959	113	1012	91411	\N
1296959	112	1011	91410	\N
1296959	30986	\N	358621	\N
1296960	113	1012	91411	\N
1296960	112	1011	91410	\N
1296960	30986	\N	358621	\N
1296961	113	1012	91411	\N
1296961	112	1011	91410	\N
1296961	30986	\N	358621	\N
1296962	113	1012	91411	\N
1296962	112	1011	91410	\N
1296962	30986	\N	358621	\N
1296963	113	1012	91411	\N
1296963	112	1011	91410	\N
1296963	30986	\N	358621	\N
1296964	113	1012	91411	\N
1296964	112	1011	91410	\N
1296964	30986	\N	358621	\N
1296965	113	1012	91411	\N
1296965	112	1011	91410	\N
1296965	30986	\N	358621	\N
1296966	113	1012	91411	\N
1296966	112	1011	91410	\N
1296966	30986	\N	358621	\N
1296967	113	1012	91411	\N
1296967	112	1011	91410	\N
1296967	30986	\N	358621	\N
1296968	113	1012	91411	\N
1296968	112	1011	91410	\N
1296968	30986	\N	358621	\N
1297952	30986	\N	358621	\N
1297952	113	1012	54963	\N
1297953	30986	\N	358621	\N
1297953	113	1012	54963	\N
1297954	30986	\N	358621	\N
1297954	113	1012	54963	\N
1297955	30986	\N	358621	\N
1297955	113	1012	54963	\N
1297957	30986	\N	358621	\N
1297957	113	1012	54963	\N
1297958	30986	\N	358621	\N
1297958	113	1012	54963	\N
1297962	113	1012	54963	\N
1297962	30986	\N	358621	\N
1297964	30986	\N	358621	\N
1297964	113	1012	54963	\N
1299972	30986	\N	358621	\N
1299972	113	1012	54963	\N
1300148	30986	\N	358621	\N
1300148	113	1012	54963	\N
1350992	30986	\N	358621	\N
1350992	113	1012	54963	\N
1367468	30986	\N	358621	\N
1367468	113	1012	54963	\N
1367476	30986	\N	358621	\N
1367476	113	1012	54963	\N
1376014	113	1012	54963	\N
1376014	30986	\N	358621	\N
1376128	30986	\N	358621	\N
1376128	113	1012	54963	\N
1376129	30986	\N	358621	\N
1376129	113	1012	54963	\N
1376150	30986	\N	358621	\N
1376151	30986	\N	358621	\N
1376152	30986	\N	358621	\N
1376154	30986	\N	358621	\N
1376159	30986	\N	358621	\N
1376164	30986	\N	358621	\N
1376305	112	1011	33373	33373
1376305	30986	\N	358621	\N
1376305	6716	\N	99756	\N
1376306	6716	\N	99756	\N
1376306	30986	\N	358621	\N
1376316	30986	\N	358621	\N
1376316	113	1012	54963	\N
1376343	30986	\N	358621	\N
1376343	113	1012	54963	\N
1376403	113	1012	54963	\N
1376403	30986	\N	358621	\N
1376513	30986	\N	358621	\N
1376513	113	1012	54963	\N
1376964	113	1012	54963	\N
1376964	30986	\N	358621	\N
1376970	113	1012	54963	\N
1376970	30986	\N	358621	\N
1377350	30986	\N	358621	\N
1377350	113	1012	54963	\N
1377365	30986	\N	358621	\N
1377365	113	1012	54963	\N
1377442	30986	\N	358621	\N
1377442	113	1012	54963	\N
1377462	112	1011	33373	33373
1377462	6716	\N	99756	\N
1377462	114	1013	2874	\N
1377462	113	1012	54963	\N
1377464	114	1013	2874	\N
1377464	112	1011	33373	33373
1377464	6716	\N	99756	\N
1377464	113	1012	54963	\N
1377797	113	1012	54963	\N
1377797	30986	\N	358621	\N
1382265	113	1012	54963	\N
1382265	6716	\N	99756	\N
1402389	112	1011	100218	\N
1403884	30986	\N	358621	\N
1406570	30986	\N	358621	\N
1437149	112	1011	33373	33373
1695116	30986	\N	358621	\N
1704715	112	1011	114733	\N
1704715	114	1013	114734	\N
1704716	112	1011	114733	\N
1704716	113	1012	114735	\N
1704716	114	1013	114734	\N
1704717	112	1011	114733	\N
1704717	113	1012	114735	\N
1704717	114	1013	114734	\N
1704718	112	1011	114733	\N
1704718	113	1012	114735	\N
1704718	114	1013	114734	\N
1704719	112	1011	114733	\N
1704719	113	1012	114735	\N
1704719	114	1013	114734	\N
1704720	112	1011	114733	\N
1704720	113	1012	114735	\N
1704720	114	1013	114734	\N
1704721	112	1011	114733	\N
1704721	114	1013	114734	\N
1704722	112	1011	114733	\N
1704722	114	1013	114734	\N
1704723	112	1011	114733	\N
1704723	114	1013	114734	\N
1704724	112	1011	114733	\N
1704724	114	1013	114734	\N
1704725	112	1011	114736	\N
1704725	114	1013	114737	\N
1704726	112	1011	114736	\N
1704726	114	1013	114737	\N
1704727	112	1011	114736	\N
1704727	114	1013	114737	\N
1704728	112	1011	114736	\N
1704728	114	1013	114737	\N
1704729	112	1011	114736	\N
1704729	114	1013	114737	\N
1704730	112	1011	114736	\N
1704730	114	1013	114737	\N
1704731	112	1011	114736	\N
1704731	114	1013	114737	\N
1704732	112	1011	114736	\N
1704732	114	1013	114737	\N
1710370	112	1011	40079	P1
1724900	30986	\N	358621	\N
1781548	113	1012	61751	\N
1781548	112	1011	40079	P1
1781554	112	1011	40079	P1
1781554	113	1012	61751	\N
1781555	112	1011	40079	P1
1781555	113	1012	61751	\N
1928392	30986	\N	358621	\N
1929053	30986	\N	358621	\N
1929053	112	1011	33373	33373
1929055	112	1011	33373	33373
1929055	30986	\N	358621	\N
1975072	30986	\N	358621	\N
1975073	30986	\N	358621	\N
1975471	30986	\N	358621	\N
2042208	112	1011	33373	33373
2042208	113	1012	47523	\N
2042208	114	1013	8310	001(2)
2055363	15006	200011	186819	00-00000001
2055364	15006	200011	186819	00-00000001
2055411	15006	200011	186819	00-00000001
2062847	30986	\N	358621	\N
2068805	15006	200011	186819	00-00000001
2068807	15006	200011	186819	00-00000001
2130762	30986	\N	358621	\N
2130762	2720	123321	25136	\N
2199912	113	1012	8687	\N
2199912	30986	\N	358621	\N
2233363	30986	\N	358621	\N
2233369	30986	\N	358621	\N
2233370	30986	\N	358621	\N
2248751	30986	\N	358621	\N
2355311	112	1011	208514	\N
2355312	112	1011	208514	\N
2355313	112	1011	208514	\N
2355314	112	1011	208514	\N
2355315	112	1011	208514	\N
2355316	112	1011	208514	\N
2355317	112	1011	208514	\N
2355318	112	1011	208514	\N
2355319	112	1011	208514	\N
2355320	112	1011	208514	\N
2398563	112	1011	212351	\N
2398563	113	1012	212352	\N
2398564	112	1011	212351	\N
2398564	113	1012	212352	\N
2398565	112	1011	212351	\N
2398565	113	1012	212352	\N
2398566	112	1011	212351	\N
2398566	113	1012	212352	\N
2398567	112	1011	212351	\N
2398567	113	1012	212352	\N
2398568	112	1011	212351	\N
2398568	113	1012	212352	\N
2398569	112	1011	212351	\N
2398569	113	1012	212352	\N
2398570	112	1011	212351	\N
2398570	113	1012	212352	\N
2398571	112	1011	212351	\N
2398571	113	1012	212352	\N
2398572	112	1011	212351	\N
2398572	113	1012	212352	\N
2398573	112	1011	212351	\N
2398573	113	1012	212352	\N
2398574	112	1011	212351	\N
2398574	113	1012	212352	\N
2398575	112	1011	212351	\N
2398575	113	1012	212352	\N
2398576	112	1011	212351	\N
2398576	113	1012	212352	\N
2398577	112	1011	212351	\N
2398577	113	1012	212352	\N
2398578	112	1011	212351	\N
2398578	113	1012	212352	\N
2398579	112	1011	212351	\N
2398579	113	1012	212352	\N
2398580	112	1011	212351	\N
2398580	113	1012	212352	\N
2398581	112	1011	212351	\N
2398581	113	1012	212352	\N
2398582	112	1011	212351	\N
2398582	113	1012	212352	\N
2398583	112	1011	212351	\N
2398583	113	1012	212352	\N
2398584	112	1011	212351	\N
2398584	113	1012	212352	\N
2521514	30986	\N	358621	\N
2568438	30986	\N	358621	\N
2593174	30986	\N	358621	\N
2593337	30986	\N	358621	\N
2593390	30986	\N	358621	\N
2789351	30986	\N	358621	\N
2789424	30986	\N	358621	\N
2789425	30986	\N	358621	\N
2789428	30986	\N	358621	\N
2789429	30986	\N	358621	\N
2789431	30986	\N	358621	\N
2789461	30986	\N	358621	\N
2789464	30986	\N	358621	\N
2789544	30986	\N	358621	\N
2789545	30986	\N	358621	\N
2789577	30986	\N	358621	\N
2789618	30986	\N	358621	\N
2906498	30986	\N	358621	\N
2906498	112	1011	230923	\N
2906498	113	1012	230924	\N
2906498	114	1013	230925	\N
2906498	2720	123321	232447	\N
2906499	30986	\N	358621	\N
2906499	112	1011	230926	\N
2906499	113	1012	230927	\N
2906499	114	1013	230928	\N
2906499	2720	123321	232447	\N
2906500	30986	\N	358621	\N
2906500	112	1011	230926	\N
2906500	113	1012	230927	\N
2906500	114	1013	230928	\N
2906500	2720	123321	232447	\N
2906503	30986	\N	358621	\N
2906503	112	1011	230926	\N
2906503	113	1012	230927	\N
2906503	114	1013	230928	\N
2906503	2720	123321	232447	\N
2906506	30986	\N	358621	\N
2906506	112	1011	230935	\N
2906506	113	1012	230936	\N
2906506	114	1013	230937	\N
2906506	2720	123321	232447	\N
2906507	30986	\N	358621	\N
2906507	112	1011	230935	\N
2906507	113	1012	230936	\N
2906507	114	1013	230937	\N
2906507	2720	123321	232447	\N
2906508	30986	\N	358621	\N
2906508	112	1011	230935	\N
2906508	113	1012	230936	\N
2906508	114	1013	230937	\N
2906508	2720	123321	232447	\N
2906509	30986	\N	358621	\N
2906509	112	1011	230935	\N
2906509	113	1012	230936	\N
2906509	114	1013	230937	\N
2906509	2720	123321	232447	\N
2906510	30986	\N	358621	\N
2906510	112	1011	230935	\N
2906510	113	1012	230936	\N
2906510	114	1013	230937	\N
2906510	2720	123321	232447	\N
2906511	30986	\N	358621	\N
2906511	112	1011	230935	\N
2906511	113	1012	230936	\N
2906511	114	1013	230937	\N
2906511	2720	123321	232447	\N
2906515	30986	\N	358621	\N
2906515	112	1011	230935	\N
2906515	113	1012	230936	\N
2906515	114	1013	230937	\N
2906515	2720	123321	232447	\N
2906524	30986	\N	358621	\N
2906524	112	1011	230935	\N
2906524	113	1012	230936	\N
2906524	114	1013	230937	\N
2906524	2720	123321	232447	\N
2906525	30986	\N	358621	\N
2906525	112	1011	230935	\N
2906525	113	1012	230936	\N
2906525	114	1013	230937	\N
2906525	2720	123321	232447	\N
2906526	30986	\N	358621	\N
2906526	112	1011	230926	\N
2906526	113	1012	230927	\N
2906526	114	1013	230928	\N
2906526	2720	123321	232447	\N
2906528	30986	\N	358621	\N
2906528	112	1011	230935	\N
2906528	113	1012	230936	\N
2906528	114	1013	230937	\N
2906528	2720	123321	232447	\N
2906544	30986	\N	358621	\N
2906544	112	1011	230935	\N
2906544	113	1012	230936	\N
2906544	114	1013	230937	\N
2906544	2720	123321	232447	\N
2906551	30986	\N	358621	\N
2906551	112	1011	230926	\N
2906551	113	1012	230927	\N
2906551	114	1013	230928	\N
2906551	2720	123321	232447	\N
2906569	30986	\N	358621	\N
2906569	112	1011	230935	\N
2906569	113	1012	230936	\N
2906569	114	1013	230937	\N
2906569	2720	123321	232447	\N
2906591	30986	\N	358621	\N
2906591	112	1011	230926	\N
2906591	113	1012	230927	\N
2906591	114	1013	230928	\N
2906591	2720	123321	232447	\N
2906592	30986	\N	358621	\N
2906592	112	1011	230926	\N
2906592	113	1012	230927	\N
2906592	114	1013	230928	\N
2906592	2720	123321	232447	\N
2906593	30986	\N	358621	\N
2906593	112	1011	230923	\N
2906593	113	1012	230924	\N
2906593	114	1013	230925	\N
2906593	2720	123321	232447	\N
2906594	30986	\N	358621	\N
2906594	112	1011	230923	\N
2906594	113	1012	230924	\N
2906594	114	1013	230925	\N
2906594	2720	123321	232447	\N
2906595	30986	\N	358621	\N
2906595	112	1011	230926	\N
2906595	113	1012	230927	\N
2906595	114	1013	230928	\N
2906595	2720	123321	232447	\N
2906596	30986	\N	358621	\N
2906596	112	1011	230926	\N
2906596	113	1012	230927	\N
2906596	114	1013	230928	\N
2906596	2720	123321	232447	\N
2906597	30986	\N	358621	\N
2906597	112	1011	230935	\N
2906597	113	1012	230936	\N
2906597	114	1013	230937	\N
2906597	2720	123321	232447	\N
2906598	30986	\N	358621	\N
2906598	112	1011	230935	\N
2906598	113	1012	230936	\N
2906598	114	1013	230937	\N
2906598	2720	123321	232447	\N
2906599	30986	\N	358621	\N
2906599	112	1011	230935	\N
2906599	113	1012	230936	\N
2906599	114	1013	230937	\N
2906599	2720	123321	232447	\N
2906600	30986	\N	358621	\N
2906600	112	1011	230926	\N
2906600	113	1012	230927	\N
2906600	114	1013	230928	\N
2906600	2720	123321	232447	\N
2906601	30986	\N	358621	\N
2906601	112	1011	230935	\N
2906601	113	1012	230936	\N
2906601	114	1013	230937	\N
2906601	2720	123321	232447	\N
2906602	30986	\N	358621	\N
2906602	112	1011	230935	\N
2906602	113	1012	230936	\N
2906602	114	1013	230937	\N
2906602	2720	123321	232447	\N
2906603	30986	\N	358621	\N
2906603	112	1011	230935	\N
2906603	113	1012	230936	\N
2906603	114	1013	230937	\N
2906603	2720	123321	232447	\N
2906604	30986	\N	358621	\N
2906604	112	1011	230926	\N
2906604	113	1012	230927	\N
2906604	114	1013	230928	\N
2906604	2720	123321	232447	\N
2906605	30986	\N	358621	\N
2906605	112	1011	230935	\N
2906605	113	1012	230936	\N
2906605	114	1013	230937	\N
2906605	2720	123321	232447	\N
2906606	30986	\N	358621	\N
2906606	112	1011	230935	\N
2906606	113	1012	230936	\N
2906606	114	1013	230937	\N
2906606	2720	123321	232447	\N
2906607	30986	\N	358621	\N
2906607	112	1011	230926	\N
2906607	113	1012	230927	\N
2906607	114	1013	230928	\N
2906607	2720	123321	232447	\N
2906608	30986	\N	358621	\N
2906608	112	1011	230935	\N
2906608	113	1012	230936	\N
2906608	114	1013	230937	\N
2906608	2720	123321	232447	\N
2906609	30986	\N	358621	\N
2906609	112	1011	230935	\N
2906609	113	1012	230936	\N
2906609	114	1013	230937	\N
2906609	2720	123321	232447	\N
2906610	30986	\N	358621	\N
2906610	112	1011	230935	\N
2906610	113	1012	230936	\N
2906610	114	1013	230937	\N
2906610	2720	123321	232447	\N
2906611	30986	\N	358621	\N
2906611	112	1011	230926	\N
2906611	113	1012	230927	\N
2906611	114	1013	230928	\N
2906611	2720	123321	232447	\N
2906612	30986	\N	358621	\N
2906612	112	1011	230935	\N
2906612	113	1012	230936	\N
2906612	114	1013	230937	\N
2906612	2720	123321	232447	\N
2906613	30986	\N	358621	\N
2906613	112	1011	230935	\N
2906613	113	1012	230936	\N
2906613	114	1013	230937	\N
2906613	2720	123321	232447	\N
2906614	30986	\N	358621	\N
2906614	112	1011	230935	\N
2906614	113	1012	230936	\N
2906614	114	1013	230937	\N
2906614	2720	123321	232447	\N
2906615	30986	\N	358621	\N
2906615	112	1011	230935	\N
2906615	113	1012	230936	\N
2906615	114	1013	230937	\N
2906615	2720	123321	232447	\N
2906616	30986	\N	358621	\N
2906616	112	1011	230935	\N
2906616	113	1012	230936	\N
2906616	114	1013	230937	\N
2906616	2720	123321	232447	\N
2906617	30986	\N	358621	\N
2906617	112	1011	230935	\N
2906617	113	1012	230936	\N
2906617	114	1013	230937	\N
2906617	2720	123321	232447	\N
2906618	30986	\N	358621	\N
2906618	112	1011	230935	\N
2906618	113	1012	230936	\N
2906618	114	1013	230937	\N
2906618	2720	123321	232447	\N
2906716	30986	\N	358621	\N
2906716	112	1011	230923	\N
2906716	113	1012	230924	\N
2906716	114	1013	230925	\N
2906716	2720	123321	232447	\N
2906717	30986	\N	358621	\N
2906717	112	1011	230923	\N
2906717	113	1012	230924	\N
2906717	114	1013	230925	\N
2906717	2720	123321	232447	\N
2906718	30986	\N	358621	\N
2906718	112	1011	230923	\N
2906718	113	1012	230924	\N
2906718	114	1013	230925	\N
2906718	2720	123321	232447	\N
2992064	30986	\N	358621	\N
2992072	30986	\N	358621	\N
2992084	30986	\N	358621	\N
3057661	30986	\N	358621	\N
3062971	30986	\N	358621	\N
3070122	30986	\N	358621	\N
3070123	30986	\N	358621	\N
3074487	30986	\N	358621	\N
3078327	30986	\N	358621	\N
3078329	30986	\N	358621	\N
3154881	30986	\N	358621	\N
3158654	30986	\N	358621	\N
3252815	30986	\N	358621	\N
3252818	30986	\N	358621	\N
3259343	30986	\N	358621	\N
3272507	30986	\N	358621	\N
3306408	19711	1010	256366	c01e107d-a639-11ee-b9c3-0050569eddcc
3306419	19711	1010	256366	c01e107d-a639-11ee-b9c3-0050569eddcc
3306420	19711	1010	256366	c01e107d-a639-11ee-b9c3-0050569eddcc
3306421	19711	1010	256366	c01e107d-a639-11ee-b9c3-0050569eddcc
3382317	19711	1010	281591	99b03de8-2070-11ee-b95e-0050569eddcc
3382328	19711	1010	281591	99b03de8-2070-11ee-b95e-0050569eddcc
3382329	19711	1010	281591	99b03de8-2070-11ee-b95e-0050569eddcc
3382337	19711	1010	281549	76f1de90-2070-11ee-b95e-0050569eddcc
3407442	30986	\N	358621	\N
3503215	20708	1006	288990	01-888
3503215	20706	1002	289052	1000
3503225	20708	1006	288990	01-888
3503225	20706	1002	289052	1000
3503231	20708	1006	288990	01-888
3503231	20706	1002	289052	1000
3528805	30986	\N	358621	\N
3528805	1700	Drinks	17607	A
3552430	30986	\N	358621	\N
3552430	112	1011	40079	P1
3810624	30986	\N	358621	\N
3810635	30986	\N	358621	\N
3850129	1700	Drinks	17607	A
3850129	30986	\N	358621	\N
3982238	30986	\N	358621	\N
3982319	30986	\N	358621	\N
3982321	30986	\N	358621	\N
3982324	30986	\N	358621	\N
3986112	30986	\N	358621	\N
4097949	30986	\N	358621	\N
4131704	30986	\N	358621	\N
4438537	1700	Drinks	17607	A
4438537	30986	\N	358621	\N
4439705	1700	Drinks	17607	A
4439705	30986	\N	358621	\N
4439992	30986	\N	358621	\N
4439997	1700	Drinks	17607	A
4439997	30986	\N	358621	\N
4439998	1700	Drinks	17607	A
4442895	30986	\N	358621	\N
4496024	112	1011	349024	\N
4569872	30986	\N	358622	\N
4569876	30986	\N	358621	\N
4572802	30986	\N	358623	\N
4635879	30986	\N	358621	\N
4934472	112	1011	1041	1(2)
4953117	112	1011	1041	1(2)
\.


--
-- TOC entry 5024 (class 0 OID 24780)
-- Dependencies: 221
-- Data for Name: product_inventory_kind; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_inventory_kind (product_id, inventory_kind, label) FROM stdin;
572	G	Goods (tovar)
572	M	Material (material)
572	P	Product (tayyor mahsulot)
7982	P	Product (tayyor mahsulot)
7986	P	Product (tayyor mahsulot)
35138	E	Equipment (asbob-uskuna)
59907	M	Material (material)
59936	G	Goods (tovar)
59936	M	Material (material)
59936	P	Product (tayyor mahsulot)
59940	E	Equipment (asbob-uskuna)
205289	G	Goods (tovar)
211958	G	Goods (tovar)
226882	P	Product (tayyor mahsulot)
471233	E	Equipment (asbob-uskuna)
645058	M	Material (material)
652737	G	Goods (tovar)
652738	G	Goods (tovar)
652739	G	Goods (tovar)
652740	G	Goods (tovar)
652741	G	Goods (tovar)
652742	G	Goods (tovar)
652743	G	Goods (tovar)
652743	P	Product (tayyor mahsulot)
652744	G	Goods (tovar)
652744	M	Material (material)
652745	G	Goods (tovar)
652745	M	Material (material)
652746	G	Goods (tovar)
652747	G	Goods (tovar)
652748	G	Goods (tovar)
652749	G	Goods (tovar)
652750	G	Goods (tovar)
652751	G	Goods (tovar)
690623	G	Goods (tovar)
754010	E	Equipment (asbob-uskuna)
773958	G	Goods (tovar)
863264	E	Equipment (asbob-uskuna)
920874	G	Goods (tovar)
989498	P	Product (tayyor mahsulot)
994045	G	Goods (tovar)
1128578	M	Material (material)
1132100	P	Product (tayyor mahsulot)
1132102	G	Goods (tovar)
1132791	G	Goods (tovar)
1132792	G	Goods (tovar)
1187343	G	Goods (tovar)
1224141	G	Goods (tovar)
1242951	M	Material (material)
1242959	G	Goods (tovar)
1252842	M	Material (material)
1294277	G	Goods (tovar)
1294278	G	Goods (tovar)
1294279	G	Goods (tovar)
1294280	G	Goods (tovar)
1294281	G	Goods (tovar)
1294282	G	Goods (tovar)
1294283	G	Goods (tovar)
1294284	G	Goods (tovar)
1294285	G	Goods (tovar)
1294286	G	Goods (tovar)
1294287	G	Goods (tovar)
1294288	G	Goods (tovar)
1294289	G	Goods (tovar)
1294290	G	Goods (tovar)
1294291	G	Goods (tovar)
1294292	G	Goods (tovar)
1294293	G	Goods (tovar)
1294294	G	Goods (tovar)
1294295	G	Goods (tovar)
1294296	G	Goods (tovar)
1294297	G	Goods (tovar)
1294298	G	Goods (tovar)
1294299	G	Goods (tovar)
1294300	G	Goods (tovar)
1294301	G	Goods (tovar)
1294302	G	Goods (tovar)
1294303	G	Goods (tovar)
1294304	G	Goods (tovar)
1294305	G	Goods (tovar)
1294306	G	Goods (tovar)
1294307	G	Goods (tovar)
1294308	G	Goods (tovar)
1294309	G	Goods (tovar)
1294310	G	Goods (tovar)
1294311	G	Goods (tovar)
1294312	G	Goods (tovar)
1294313	G	Goods (tovar)
1294314	G	Goods (tovar)
1294315	G	Goods (tovar)
1294316	G	Goods (tovar)
1294317	G	Goods (tovar)
1294318	G	Goods (tovar)
1294319	G	Goods (tovar)
1294320	G	Goods (tovar)
1294321	G	Goods (tovar)
1294322	G	Goods (tovar)
1294323	G	Goods (tovar)
1294324	G	Goods (tovar)
1294325	G	Goods (tovar)
1294326	G	Goods (tovar)
1294327	G	Goods (tovar)
1294328	G	Goods (tovar)
1294329	G	Goods (tovar)
1294330	G	Goods (tovar)
1294331	G	Goods (tovar)
1294332	G	Goods (tovar)
1294333	G	Goods (tovar)
1294334	G	Goods (tovar)
1294335	G	Goods (tovar)
1294336	G	Goods (tovar)
1294337	G	Goods (tovar)
1294338	G	Goods (tovar)
1294339	G	Goods (tovar)
1294340	G	Goods (tovar)
1294341	G	Goods (tovar)
1294342	G	Goods (tovar)
1294343	G	Goods (tovar)
1294344	G	Goods (tovar)
1294345	G	Goods (tovar)
1294346	G	Goods (tovar)
1294347	G	Goods (tovar)
1294348	G	Goods (tovar)
1294349	G	Goods (tovar)
1294350	G	Goods (tovar)
1294351	G	Goods (tovar)
1294352	G	Goods (tovar)
1294353	G	Goods (tovar)
1294354	G	Goods (tovar)
1294355	G	Goods (tovar)
1294356	G	Goods (tovar)
1294357	G	Goods (tovar)
1294358	G	Goods (tovar)
1294359	G	Goods (tovar)
1294360	G	Goods (tovar)
1294361	G	Goods (tovar)
1294362	G	Goods (tovar)
1294363	G	Goods (tovar)
1294364	G	Goods (tovar)
1294365	G	Goods (tovar)
1294366	G	Goods (tovar)
1294367	G	Goods (tovar)
1294368	G	Goods (tovar)
1294369	G	Goods (tovar)
1294370	G	Goods (tovar)
1294371	G	Goods (tovar)
1294372	G	Goods (tovar)
1294373	G	Goods (tovar)
1294374	G	Goods (tovar)
1294375	G	Goods (tovar)
1294376	G	Goods (tovar)
1294377	G	Goods (tovar)
1294378	G	Goods (tovar)
1294379	G	Goods (tovar)
1294380	G	Goods (tovar)
1294381	G	Goods (tovar)
1294382	G	Goods (tovar)
1294383	G	Goods (tovar)
1294384	G	Goods (tovar)
1294385	G	Goods (tovar)
1294386	G	Goods (tovar)
1294387	G	Goods (tovar)
1294388	G	Goods (tovar)
1294389	G	Goods (tovar)
1294390	G	Goods (tovar)
1294391	G	Goods (tovar)
1294392	G	Goods (tovar)
1294393	G	Goods (tovar)
1294394	G	Goods (tovar)
1294395	G	Goods (tovar)
1294396	G	Goods (tovar)
1294397	G	Goods (tovar)
1294398	G	Goods (tovar)
1294399	G	Goods (tovar)
1294400	G	Goods (tovar)
1294401	G	Goods (tovar)
1294402	G	Goods (tovar)
1294403	G	Goods (tovar)
1294404	G	Goods (tovar)
1294405	G	Goods (tovar)
1294406	G	Goods (tovar)
1294407	G	Goods (tovar)
1294408	G	Goods (tovar)
1294409	G	Goods (tovar)
1294410	G	Goods (tovar)
1294411	G	Goods (tovar)
1294412	G	Goods (tovar)
1294413	G	Goods (tovar)
1294414	G	Goods (tovar)
1294415	G	Goods (tovar)
1294416	G	Goods (tovar)
1294417	G	Goods (tovar)
1294418	G	Goods (tovar)
1294419	G	Goods (tovar)
1294420	G	Goods (tovar)
1294421	G	Goods (tovar)
1294422	G	Goods (tovar)
1294423	G	Goods (tovar)
1294424	G	Goods (tovar)
1294425	G	Goods (tovar)
1294426	G	Goods (tovar)
1294427	G	Goods (tovar)
1294428	G	Goods (tovar)
1294429	G	Goods (tovar)
1294430	G	Goods (tovar)
1294431	G	Goods (tovar)
1294432	G	Goods (tovar)
1294433	G	Goods (tovar)
1294434	G	Goods (tovar)
1294435	G	Goods (tovar)
1294436	G	Goods (tovar)
1294437	G	Goods (tovar)
1294438	G	Goods (tovar)
1294439	G	Goods (tovar)
1294440	G	Goods (tovar)
1294441	G	Goods (tovar)
1294442	G	Goods (tovar)
1294443	G	Goods (tovar)
1294444	G	Goods (tovar)
1294445	G	Goods (tovar)
1294446	G	Goods (tovar)
1294447	G	Goods (tovar)
1294448	G	Goods (tovar)
1294449	G	Goods (tovar)
1294450	G	Goods (tovar)
1294451	G	Goods (tovar)
1294452	G	Goods (tovar)
1294453	G	Goods (tovar)
1294454	G	Goods (tovar)
1294455	G	Goods (tovar)
1294456	G	Goods (tovar)
1294457	G	Goods (tovar)
1294458	G	Goods (tovar)
1294459	G	Goods (tovar)
1294460	G	Goods (tovar)
1294461	G	Goods (tovar)
1294462	G	Goods (tovar)
1294463	G	Goods (tovar)
1294464	G	Goods (tovar)
1294465	G	Goods (tovar)
1294466	G	Goods (tovar)
1294467	G	Goods (tovar)
1294468	G	Goods (tovar)
1294469	G	Goods (tovar)
1294470	G	Goods (tovar)
1294471	G	Goods (tovar)
1294472	G	Goods (tovar)
1294473	G	Goods (tovar)
1294474	G	Goods (tovar)
1294475	G	Goods (tovar)
1294476	G	Goods (tovar)
1294477	G	Goods (tovar)
1294478	G	Goods (tovar)
1294479	G	Goods (tovar)
1294480	G	Goods (tovar)
1294481	G	Goods (tovar)
1294482	G	Goods (tovar)
1294483	G	Goods (tovar)
1294484	G	Goods (tovar)
1294485	G	Goods (tovar)
1294486	G	Goods (tovar)
1294487	G	Goods (tovar)
1294488	G	Goods (tovar)
1294489	G	Goods (tovar)
1294490	G	Goods (tovar)
1294491	G	Goods (tovar)
1294492	G	Goods (tovar)
1294493	G	Goods (tovar)
1294494	G	Goods (tovar)
1294495	G	Goods (tovar)
1294496	G	Goods (tovar)
1294497	G	Goods (tovar)
1294498	G	Goods (tovar)
1294499	G	Goods (tovar)
1294500	G	Goods (tovar)
1294501	G	Goods (tovar)
1294502	G	Goods (tovar)
1294503	G	Goods (tovar)
1294504	G	Goods (tovar)
1294505	G	Goods (tovar)
1294506	G	Goods (tovar)
1294507	G	Goods (tovar)
1294508	G	Goods (tovar)
1294509	G	Goods (tovar)
1294510	G	Goods (tovar)
1294511	G	Goods (tovar)
1294512	G	Goods (tovar)
1294513	G	Goods (tovar)
1294514	G	Goods (tovar)
1294515	G	Goods (tovar)
1294516	G	Goods (tovar)
1294517	G	Goods (tovar)
1294518	G	Goods (tovar)
1294519	G	Goods (tovar)
1294520	G	Goods (tovar)
1294521	G	Goods (tovar)
1294522	G	Goods (tovar)
1294523	G	Goods (tovar)
1294524	G	Goods (tovar)
1294525	G	Goods (tovar)
1294526	G	Goods (tovar)
1294527	G	Goods (tovar)
1294528	G	Goods (tovar)
1294529	G	Goods (tovar)
1294530	G	Goods (tovar)
1294531	G	Goods (tovar)
1294532	G	Goods (tovar)
1294533	G	Goods (tovar)
1294534	G	Goods (tovar)
1294535	G	Goods (tovar)
1294536	G	Goods (tovar)
1294537	G	Goods (tovar)
1294538	G	Goods (tovar)
1294539	G	Goods (tovar)
1294540	G	Goods (tovar)
1294541	G	Goods (tovar)
1294542	G	Goods (tovar)
1294543	G	Goods (tovar)
1294544	G	Goods (tovar)
1294545	G	Goods (tovar)
1294546	G	Goods (tovar)
1294547	G	Goods (tovar)
1294548	G	Goods (tovar)
1294549	G	Goods (tovar)
1294550	G	Goods (tovar)
1294551	G	Goods (tovar)
1294552	G	Goods (tovar)
1294553	G	Goods (tovar)
1294554	G	Goods (tovar)
1294555	G	Goods (tovar)
1294556	G	Goods (tovar)
1294557	G	Goods (tovar)
1294558	G	Goods (tovar)
1294559	G	Goods (tovar)
1294560	G	Goods (tovar)
1294561	G	Goods (tovar)
1294562	G	Goods (tovar)
1294563	G	Goods (tovar)
1294564	G	Goods (tovar)
1294565	G	Goods (tovar)
1294566	G	Goods (tovar)
1294567	G	Goods (tovar)
1294568	G	Goods (tovar)
1294569	G	Goods (tovar)
1294570	G	Goods (tovar)
1294571	G	Goods (tovar)
1294572	G	Goods (tovar)
1294573	G	Goods (tovar)
1294574	G	Goods (tovar)
1294575	G	Goods (tovar)
1294576	G	Goods (tovar)
1294577	G	Goods (tovar)
1294578	G	Goods (tovar)
1294579	G	Goods (tovar)
1294580	G	Goods (tovar)
1294581	G	Goods (tovar)
1294582	G	Goods (tovar)
1294583	G	Goods (tovar)
1294584	G	Goods (tovar)
1294585	G	Goods (tovar)
1294586	G	Goods (tovar)
1294587	G	Goods (tovar)
1294588	G	Goods (tovar)
1294589	G	Goods (tovar)
1294590	G	Goods (tovar)
1294591	G	Goods (tovar)
1294592	G	Goods (tovar)
1294593	G	Goods (tovar)
1294594	G	Goods (tovar)
1294595	G	Goods (tovar)
1294596	G	Goods (tovar)
1294597	G	Goods (tovar)
1294598	G	Goods (tovar)
1294599	G	Goods (tovar)
1294600	G	Goods (tovar)
1294601	G	Goods (tovar)
1294602	G	Goods (tovar)
1294603	G	Goods (tovar)
1294604	G	Goods (tovar)
1294605	G	Goods (tovar)
1294606	G	Goods (tovar)
1294607	G	Goods (tovar)
1294608	G	Goods (tovar)
1294609	G	Goods (tovar)
1294610	G	Goods (tovar)
1294611	G	Goods (tovar)
1294612	G	Goods (tovar)
1294613	G	Goods (tovar)
1294614	G	Goods (tovar)
1294615	G	Goods (tovar)
1294616	G	Goods (tovar)
1294617	G	Goods (tovar)
1294618	G	Goods (tovar)
1294619	G	Goods (tovar)
1294620	G	Goods (tovar)
1294621	G	Goods (tovar)
1294622	G	Goods (tovar)
1294623	G	Goods (tovar)
1294624	G	Goods (tovar)
1294625	G	Goods (tovar)
1294626	G	Goods (tovar)
1294627	G	Goods (tovar)
1294628	G	Goods (tovar)
1294629	G	Goods (tovar)
1294630	G	Goods (tovar)
1294631	G	Goods (tovar)
1294632	G	Goods (tovar)
1294633	G	Goods (tovar)
1294634	G	Goods (tovar)
1294635	G	Goods (tovar)
1294636	G	Goods (tovar)
1294637	G	Goods (tovar)
1294638	G	Goods (tovar)
1294639	G	Goods (tovar)
1294640	G	Goods (tovar)
1294641	G	Goods (tovar)
1294642	G	Goods (tovar)
1294643	G	Goods (tovar)
1294644	G	Goods (tovar)
1294645	G	Goods (tovar)
1294646	G	Goods (tovar)
1294647	G	Goods (tovar)
1294648	G	Goods (tovar)
1294649	G	Goods (tovar)
1294650	G	Goods (tovar)
1294651	G	Goods (tovar)
1294652	G	Goods (tovar)
1294653	G	Goods (tovar)
1294654	G	Goods (tovar)
1294655	G	Goods (tovar)
1294656	G	Goods (tovar)
1294657	G	Goods (tovar)
1294658	G	Goods (tovar)
1294659	G	Goods (tovar)
1294660	G	Goods (tovar)
1294661	G	Goods (tovar)
1294662	G	Goods (tovar)
1294663	G	Goods (tovar)
1294664	G	Goods (tovar)
1294665	G	Goods (tovar)
1294666	G	Goods (tovar)
1294667	G	Goods (tovar)
1294668	G	Goods (tovar)
1294669	G	Goods (tovar)
1294670	G	Goods (tovar)
1294671	G	Goods (tovar)
1294672	G	Goods (tovar)
1294673	G	Goods (tovar)
1294674	G	Goods (tovar)
1294675	G	Goods (tovar)
1294676	G	Goods (tovar)
1294677	G	Goods (tovar)
1294678	G	Goods (tovar)
1294679	G	Goods (tovar)
1294680	G	Goods (tovar)
1294681	G	Goods (tovar)
1294682	G	Goods (tovar)
1294683	G	Goods (tovar)
1294684	G	Goods (tovar)
1294685	G	Goods (tovar)
1294686	G	Goods (tovar)
1294687	G	Goods (tovar)
1294688	G	Goods (tovar)
1294689	G	Goods (tovar)
1294690	G	Goods (tovar)
1294691	G	Goods (tovar)
1294692	G	Goods (tovar)
1294693	G	Goods (tovar)
1294694	G	Goods (tovar)
1294695	G	Goods (tovar)
1294696	G	Goods (tovar)
1294697	G	Goods (tovar)
1294698	G	Goods (tovar)
1294699	G	Goods (tovar)
1294700	G	Goods (tovar)
1294701	G	Goods (tovar)
1294702	G	Goods (tovar)
1294703	G	Goods (tovar)
1294704	G	Goods (tovar)
1294705	G	Goods (tovar)
1294706	G	Goods (tovar)
1294707	G	Goods (tovar)
1294708	G	Goods (tovar)
1294709	G	Goods (tovar)
1294710	G	Goods (tovar)
1294711	G	Goods (tovar)
1294712	G	Goods (tovar)
1294713	G	Goods (tovar)
1294714	G	Goods (tovar)
1294715	G	Goods (tovar)
1294716	G	Goods (tovar)
1294717	G	Goods (tovar)
1294718	G	Goods (tovar)
1294719	G	Goods (tovar)
1294720	G	Goods (tovar)
1294721	G	Goods (tovar)
1294722	G	Goods (tovar)
1294723	G	Goods (tovar)
1294724	G	Goods (tovar)
1294725	G	Goods (tovar)
1294726	G	Goods (tovar)
1294727	G	Goods (tovar)
1294728	G	Goods (tovar)
1294729	G	Goods (tovar)
1294730	G	Goods (tovar)
1294731	G	Goods (tovar)
1294732	G	Goods (tovar)
1294733	G	Goods (tovar)
1294734	G	Goods (tovar)
1294735	G	Goods (tovar)
1294736	G	Goods (tovar)
1294737	G	Goods (tovar)
1294738	G	Goods (tovar)
1294739	G	Goods (tovar)
1294740	G	Goods (tovar)
1294741	G	Goods (tovar)
1294742	G	Goods (tovar)
1294743	G	Goods (tovar)
1294744	G	Goods (tovar)
1294745	G	Goods (tovar)
1294746	G	Goods (tovar)
1294747	G	Goods (tovar)
1294748	G	Goods (tovar)
1294749	G	Goods (tovar)
1294750	G	Goods (tovar)
1294751	G	Goods (tovar)
1294752	G	Goods (tovar)
1294753	G	Goods (tovar)
1294754	G	Goods (tovar)
1294755	G	Goods (tovar)
1294756	G	Goods (tovar)
1294757	G	Goods (tovar)
1294758	G	Goods (tovar)
1294759	G	Goods (tovar)
1294760	G	Goods (tovar)
1294761	G	Goods (tovar)
1294762	G	Goods (tovar)
1294763	G	Goods (tovar)
1294764	G	Goods (tovar)
1294765	G	Goods (tovar)
1294766	G	Goods (tovar)
1294767	G	Goods (tovar)
1294768	G	Goods (tovar)
1294769	G	Goods (tovar)
1294770	G	Goods (tovar)
1294771	G	Goods (tovar)
1294772	G	Goods (tovar)
1294773	G	Goods (tovar)
1294774	G	Goods (tovar)
1294775	G	Goods (tovar)
1294776	G	Goods (tovar)
1294777	G	Goods (tovar)
1294778	G	Goods (tovar)
1294779	G	Goods (tovar)
1294780	G	Goods (tovar)
1294781	G	Goods (tovar)
1294782	G	Goods (tovar)
1294783	G	Goods (tovar)
1294784	G	Goods (tovar)
1294785	G	Goods (tovar)
1294786	G	Goods (tovar)
1294787	G	Goods (tovar)
1294788	G	Goods (tovar)
1294789	G	Goods (tovar)
1294790	G	Goods (tovar)
1294791	G	Goods (tovar)
1294792	G	Goods (tovar)
1294793	G	Goods (tovar)
1294794	G	Goods (tovar)
1294795	G	Goods (tovar)
1294796	G	Goods (tovar)
1294797	G	Goods (tovar)
1294798	G	Goods (tovar)
1294799	G	Goods (tovar)
1294800	G	Goods (tovar)
1294801	G	Goods (tovar)
1294802	G	Goods (tovar)
1294803	G	Goods (tovar)
1294804	G	Goods (tovar)
1294805	G	Goods (tovar)
1294806	G	Goods (tovar)
1294807	G	Goods (tovar)
1294808	G	Goods (tovar)
1294809	G	Goods (tovar)
1294810	G	Goods (tovar)
1294811	G	Goods (tovar)
1294812	G	Goods (tovar)
1294813	G	Goods (tovar)
1294814	G	Goods (tovar)
1294815	G	Goods (tovar)
1294816	G	Goods (tovar)
1294817	G	Goods (tovar)
1294818	G	Goods (tovar)
1294819	G	Goods (tovar)
1294820	G	Goods (tovar)
1294821	G	Goods (tovar)
1294822	G	Goods (tovar)
1294823	G	Goods (tovar)
1294824	G	Goods (tovar)
1294825	G	Goods (tovar)
1294826	G	Goods (tovar)
1294827	G	Goods (tovar)
1294828	G	Goods (tovar)
1294829	G	Goods (tovar)
1294830	G	Goods (tovar)
1294831	G	Goods (tovar)
1294832	G	Goods (tovar)
1294833	G	Goods (tovar)
1294834	G	Goods (tovar)
1294835	G	Goods (tovar)
1294836	G	Goods (tovar)
1294837	G	Goods (tovar)
1294838	G	Goods (tovar)
1294839	G	Goods (tovar)
1294840	G	Goods (tovar)
1294841	G	Goods (tovar)
1294842	G	Goods (tovar)
1294843	G	Goods (tovar)
1294844	G	Goods (tovar)
1294845	G	Goods (tovar)
1294846	G	Goods (tovar)
1294847	G	Goods (tovar)
1294848	G	Goods (tovar)
1294849	G	Goods (tovar)
1294850	G	Goods (tovar)
1294851	G	Goods (tovar)
1294852	G	Goods (tovar)
1294853	G	Goods (tovar)
1294854	G	Goods (tovar)
1294855	G	Goods (tovar)
1294856	G	Goods (tovar)
1294857	G	Goods (tovar)
1294858	G	Goods (tovar)
1294859	G	Goods (tovar)
1294860	G	Goods (tovar)
1294861	G	Goods (tovar)
1294862	G	Goods (tovar)
1294863	G	Goods (tovar)
1294864	G	Goods (tovar)
1294865	G	Goods (tovar)
1294866	G	Goods (tovar)
1294867	G	Goods (tovar)
1294868	G	Goods (tovar)
1294869	G	Goods (tovar)
1294870	G	Goods (tovar)
1294871	G	Goods (tovar)
1294872	G	Goods (tovar)
1294873	G	Goods (tovar)
1294874	G	Goods (tovar)
1294875	G	Goods (tovar)
1294876	G	Goods (tovar)
1294877	G	Goods (tovar)
1294878	G	Goods (tovar)
1294879	G	Goods (tovar)
1294880	G	Goods (tovar)
1294881	G	Goods (tovar)
1294882	G	Goods (tovar)
1294883	G	Goods (tovar)
1294884	G	Goods (tovar)
1294885	G	Goods (tovar)
1294886	G	Goods (tovar)
1294887	G	Goods (tovar)
1294888	G	Goods (tovar)
1294889	G	Goods (tovar)
1294890	G	Goods (tovar)
1294891	G	Goods (tovar)
1294892	G	Goods (tovar)
1294893	G	Goods (tovar)
1294894	G	Goods (tovar)
1294895	G	Goods (tovar)
1294896	G	Goods (tovar)
1294897	G	Goods (tovar)
1294898	G	Goods (tovar)
1294899	G	Goods (tovar)
1294900	G	Goods (tovar)
1294901	G	Goods (tovar)
1294902	G	Goods (tovar)
1294903	G	Goods (tovar)
1294904	G	Goods (tovar)
1294905	G	Goods (tovar)
1294906	G	Goods (tovar)
1294907	G	Goods (tovar)
1294908	G	Goods (tovar)
1294909	G	Goods (tovar)
1294910	G	Goods (tovar)
1294911	G	Goods (tovar)
1294912	G	Goods (tovar)
1294913	G	Goods (tovar)
1294914	G	Goods (tovar)
1294915	G	Goods (tovar)
1294916	G	Goods (tovar)
1294917	G	Goods (tovar)
1294918	G	Goods (tovar)
1294919	G	Goods (tovar)
1294920	G	Goods (tovar)
1294921	G	Goods (tovar)
1294922	G	Goods (tovar)
1294923	G	Goods (tovar)
1294924	G	Goods (tovar)
1294925	G	Goods (tovar)
1294926	G	Goods (tovar)
1294927	G	Goods (tovar)
1294928	G	Goods (tovar)
1294929	G	Goods (tovar)
1294930	G	Goods (tovar)
1294931	G	Goods (tovar)
1294932	G	Goods (tovar)
1294933	G	Goods (tovar)
1294934	G	Goods (tovar)
1294935	G	Goods (tovar)
1294936	G	Goods (tovar)
1294937	G	Goods (tovar)
1294938	G	Goods (tovar)
1294939	G	Goods (tovar)
1294940	G	Goods (tovar)
1294941	G	Goods (tovar)
1294942	G	Goods (tovar)
1294943	G	Goods (tovar)
1294944	G	Goods (tovar)
1294945	G	Goods (tovar)
1294946	G	Goods (tovar)
1294947	G	Goods (tovar)
1294948	G	Goods (tovar)
1294949	G	Goods (tovar)
1294950	G	Goods (tovar)
1294951	G	Goods (tovar)
1294952	G	Goods (tovar)
1294953	G	Goods (tovar)
1294954	G	Goods (tovar)
1294955	G	Goods (tovar)
1294956	G	Goods (tovar)
1294957	G	Goods (tovar)
1294958	G	Goods (tovar)
1294959	G	Goods (tovar)
1294960	G	Goods (tovar)
1294961	G	Goods (tovar)
1294962	G	Goods (tovar)
1294963	G	Goods (tovar)
1294964	G	Goods (tovar)
1294965	G	Goods (tovar)
1294966	G	Goods (tovar)
1294967	G	Goods (tovar)
1294968	G	Goods (tovar)
1294969	G	Goods (tovar)
1294970	G	Goods (tovar)
1294971	G	Goods (tovar)
1294972	G	Goods (tovar)
1294973	G	Goods (tovar)
1294974	G	Goods (tovar)
1294975	G	Goods (tovar)
1294976	G	Goods (tovar)
1294977	G	Goods (tovar)
1294978	G	Goods (tovar)
1294979	G	Goods (tovar)
1294980	G	Goods (tovar)
1294981	G	Goods (tovar)
1294982	G	Goods (tovar)
1294983	G	Goods (tovar)
1294984	G	Goods (tovar)
1294985	G	Goods (tovar)
1294986	G	Goods (tovar)
1294987	G	Goods (tovar)
1294988	G	Goods (tovar)
1294989	G	Goods (tovar)
1294990	G	Goods (tovar)
1294991	G	Goods (tovar)
1294992	G	Goods (tovar)
1294993	G	Goods (tovar)
1294994	G	Goods (tovar)
1294995	G	Goods (tovar)
1294996	G	Goods (tovar)
1294997	G	Goods (tovar)
1294998	G	Goods (tovar)
1294999	G	Goods (tovar)
1295000	G	Goods (tovar)
1295001	G	Goods (tovar)
1295002	G	Goods (tovar)
1295003	G	Goods (tovar)
1295004	G	Goods (tovar)
1295005	G	Goods (tovar)
1295006	G	Goods (tovar)
1295007	G	Goods (tovar)
1295008	G	Goods (tovar)
1295009	G	Goods (tovar)
1295010	G	Goods (tovar)
1295011	G	Goods (tovar)
1295012	G	Goods (tovar)
1295013	G	Goods (tovar)
1295014	G	Goods (tovar)
1295015	G	Goods (tovar)
1295016	G	Goods (tovar)
1295017	G	Goods (tovar)
1295018	G	Goods (tovar)
1295019	G	Goods (tovar)
1295020	G	Goods (tovar)
1295021	G	Goods (tovar)
1295022	G	Goods (tovar)
1295023	G	Goods (tovar)
1295024	G	Goods (tovar)
1295025	G	Goods (tovar)
1295026	G	Goods (tovar)
1295027	G	Goods (tovar)
1295028	G	Goods (tovar)
1295029	G	Goods (tovar)
1295030	G	Goods (tovar)
1295031	G	Goods (tovar)
1295032	G	Goods (tovar)
1295033	G	Goods (tovar)
1295034	G	Goods (tovar)
1295035	G	Goods (tovar)
1295036	G	Goods (tovar)
1295037	G	Goods (tovar)
1295038	G	Goods (tovar)
1295039	G	Goods (tovar)
1295040	G	Goods (tovar)
1295041	G	Goods (tovar)
1295042	G	Goods (tovar)
1295043	G	Goods (tovar)
1295044	G	Goods (tovar)
1295045	G	Goods (tovar)
1295046	G	Goods (tovar)
1295047	G	Goods (tovar)
1295048	G	Goods (tovar)
1295049	G	Goods (tovar)
1295050	G	Goods (tovar)
1295051	G	Goods (tovar)
1295052	G	Goods (tovar)
1295053	G	Goods (tovar)
1295054	G	Goods (tovar)
1295055	G	Goods (tovar)
1295056	G	Goods (tovar)
1295057	G	Goods (tovar)
1295058	G	Goods (tovar)
1295059	G	Goods (tovar)
1295060	G	Goods (tovar)
1295061	G	Goods (tovar)
1295062	G	Goods (tovar)
1295063	G	Goods (tovar)
1295064	G	Goods (tovar)
1295065	G	Goods (tovar)
1295066	G	Goods (tovar)
1295067	G	Goods (tovar)
1295068	G	Goods (tovar)
1295069	G	Goods (tovar)
1295070	G	Goods (tovar)
1295071	G	Goods (tovar)
1295072	G	Goods (tovar)
1295073	G	Goods (tovar)
1295074	G	Goods (tovar)
1295075	G	Goods (tovar)
1295076	G	Goods (tovar)
1295077	G	Goods (tovar)
1295078	G	Goods (tovar)
1295079	G	Goods (tovar)
1295080	G	Goods (tovar)
1295081	G	Goods (tovar)
1295082	G	Goods (tovar)
1295083	G	Goods (tovar)
1295084	G	Goods (tovar)
1295085	G	Goods (tovar)
1295086	G	Goods (tovar)
1295087	G	Goods (tovar)
1295088	G	Goods (tovar)
1295089	G	Goods (tovar)
1295090	G	Goods (tovar)
1295091	G	Goods (tovar)
1295092	G	Goods (tovar)
1295093	G	Goods (tovar)
1295094	G	Goods (tovar)
1295095	G	Goods (tovar)
1295096	G	Goods (tovar)
1295097	G	Goods (tovar)
1295098	G	Goods (tovar)
1295099	G	Goods (tovar)
1295100	G	Goods (tovar)
1295101	G	Goods (tovar)
1295102	G	Goods (tovar)
1295103	G	Goods (tovar)
1295104	G	Goods (tovar)
1295105	G	Goods (tovar)
1295106	G	Goods (tovar)
1295107	G	Goods (tovar)
1295108	G	Goods (tovar)
1295109	G	Goods (tovar)
1295110	G	Goods (tovar)
1295111	G	Goods (tovar)
1295112	G	Goods (tovar)
1295113	G	Goods (tovar)
1295114	G	Goods (tovar)
1295115	G	Goods (tovar)
1295116	G	Goods (tovar)
1295117	G	Goods (tovar)
1295118	G	Goods (tovar)
1295119	G	Goods (tovar)
1295120	G	Goods (tovar)
1295121	G	Goods (tovar)
1295122	G	Goods (tovar)
1295123	G	Goods (tovar)
1295124	G	Goods (tovar)
1295125	G	Goods (tovar)
1295126	G	Goods (tovar)
1295127	G	Goods (tovar)
1295128	G	Goods (tovar)
1295129	G	Goods (tovar)
1295130	G	Goods (tovar)
1295131	G	Goods (tovar)
1295132	G	Goods (tovar)
1295133	G	Goods (tovar)
1295134	G	Goods (tovar)
1295135	G	Goods (tovar)
1295136	G	Goods (tovar)
1295137	G	Goods (tovar)
1295138	G	Goods (tovar)
1295139	G	Goods (tovar)
1295140	G	Goods (tovar)
1295141	G	Goods (tovar)
1295142	G	Goods (tovar)
1295143	G	Goods (tovar)
1295144	G	Goods (tovar)
1295145	G	Goods (tovar)
1295146	G	Goods (tovar)
1295147	G	Goods (tovar)
1295148	G	Goods (tovar)
1295149	G	Goods (tovar)
1295150	G	Goods (tovar)
1295151	G	Goods (tovar)
1295152	G	Goods (tovar)
1295153	G	Goods (tovar)
1295154	G	Goods (tovar)
1295155	G	Goods (tovar)
1295156	G	Goods (tovar)
1295157	G	Goods (tovar)
1295158	G	Goods (tovar)
1295159	G	Goods (tovar)
1295160	G	Goods (tovar)
1295161	G	Goods (tovar)
1295162	G	Goods (tovar)
1295163	G	Goods (tovar)
1295164	G	Goods (tovar)
1295165	G	Goods (tovar)
1295166	G	Goods (tovar)
1295167	G	Goods (tovar)
1295168	G	Goods (tovar)
1295169	G	Goods (tovar)
1295170	G	Goods (tovar)
1295171	G	Goods (tovar)
1295172	G	Goods (tovar)
1295173	G	Goods (tovar)
1295174	G	Goods (tovar)
1295175	G	Goods (tovar)
1295176	G	Goods (tovar)
1295177	G	Goods (tovar)
1295178	G	Goods (tovar)
1295179	G	Goods (tovar)
1295180	G	Goods (tovar)
1295181	G	Goods (tovar)
1295182	G	Goods (tovar)
1295183	G	Goods (tovar)
1295184	G	Goods (tovar)
1295185	G	Goods (tovar)
1295186	G	Goods (tovar)
1295187	G	Goods (tovar)
1295188	G	Goods (tovar)
1295189	G	Goods (tovar)
1295190	G	Goods (tovar)
1295191	G	Goods (tovar)
1295192	G	Goods (tovar)
1295193	G	Goods (tovar)
1295194	G	Goods (tovar)
1295195	G	Goods (tovar)
1295196	G	Goods (tovar)
1295197	G	Goods (tovar)
1295198	G	Goods (tovar)
1295199	G	Goods (tovar)
1295200	G	Goods (tovar)
1295201	G	Goods (tovar)
1295202	G	Goods (tovar)
1295203	G	Goods (tovar)
1295204	G	Goods (tovar)
1295205	G	Goods (tovar)
1295206	G	Goods (tovar)
1295207	G	Goods (tovar)
1295208	G	Goods (tovar)
1295209	G	Goods (tovar)
1295210	G	Goods (tovar)
1295211	G	Goods (tovar)
1295212	G	Goods (tovar)
1295213	G	Goods (tovar)
1295214	G	Goods (tovar)
1295215	G	Goods (tovar)
1295216	G	Goods (tovar)
1295217	G	Goods (tovar)
1295218	G	Goods (tovar)
1295219	G	Goods (tovar)
1295220	G	Goods (tovar)
1295221	G	Goods (tovar)
1295222	G	Goods (tovar)
1295223	G	Goods (tovar)
1295224	G	Goods (tovar)
1295225	G	Goods (tovar)
1295226	G	Goods (tovar)
1295227	G	Goods (tovar)
1295228	G	Goods (tovar)
1295229	G	Goods (tovar)
1295230	G	Goods (tovar)
1295231	G	Goods (tovar)
1295232	G	Goods (tovar)
1295233	G	Goods (tovar)
1295234	G	Goods (tovar)
1295235	G	Goods (tovar)
1295236	G	Goods (tovar)
1295237	G	Goods (tovar)
1295238	G	Goods (tovar)
1295239	G	Goods (tovar)
1295240	G	Goods (tovar)
1295241	G	Goods (tovar)
1295242	G	Goods (tovar)
1295243	G	Goods (tovar)
1295244	G	Goods (tovar)
1295245	G	Goods (tovar)
1295246	G	Goods (tovar)
1295247	G	Goods (tovar)
1295248	G	Goods (tovar)
1295249	G	Goods (tovar)
1295250	G	Goods (tovar)
1295251	G	Goods (tovar)
1295252	G	Goods (tovar)
1295253	G	Goods (tovar)
1295254	G	Goods (tovar)
1295255	G	Goods (tovar)
1295256	G	Goods (tovar)
1295257	G	Goods (tovar)
1295258	G	Goods (tovar)
1295259	G	Goods (tovar)
1295260	G	Goods (tovar)
1295261	G	Goods (tovar)
1295262	G	Goods (tovar)
1295263	G	Goods (tovar)
1295264	G	Goods (tovar)
1295265	G	Goods (tovar)
1295266	G	Goods (tovar)
1295267	G	Goods (tovar)
1295268	G	Goods (tovar)
1295269	G	Goods (tovar)
1295270	G	Goods (tovar)
1295271	G	Goods (tovar)
1295272	G	Goods (tovar)
1295273	G	Goods (tovar)
1295274	G	Goods (tovar)
1295275	G	Goods (tovar)
1295276	G	Goods (tovar)
1295277	G	Goods (tovar)
1295278	G	Goods (tovar)
1295279	G	Goods (tovar)
1295280	G	Goods (tovar)
1295281	G	Goods (tovar)
1295282	G	Goods (tovar)
1295283	G	Goods (tovar)
1295284	G	Goods (tovar)
1295285	G	Goods (tovar)
1295286	G	Goods (tovar)
1295287	G	Goods (tovar)
1295288	G	Goods (tovar)
1295289	G	Goods (tovar)
1295290	G	Goods (tovar)
1295291	G	Goods (tovar)
1295292	G	Goods (tovar)
1295293	G	Goods (tovar)
1295294	G	Goods (tovar)
1295295	G	Goods (tovar)
1295296	G	Goods (tovar)
1295297	G	Goods (tovar)
1295298	G	Goods (tovar)
1295299	G	Goods (tovar)
1295300	G	Goods (tovar)
1295301	G	Goods (tovar)
1295302	G	Goods (tovar)
1295303	G	Goods (tovar)
1295304	G	Goods (tovar)
1295305	G	Goods (tovar)
1295306	G	Goods (tovar)
1295307	G	Goods (tovar)
1295308	G	Goods (tovar)
1295309	G	Goods (tovar)
1295310	G	Goods (tovar)
1295311	G	Goods (tovar)
1295312	G	Goods (tovar)
1295313	G	Goods (tovar)
1295314	G	Goods (tovar)
1295315	G	Goods (tovar)
1295316	G	Goods (tovar)
1295317	G	Goods (tovar)
1295318	G	Goods (tovar)
1295319	G	Goods (tovar)
1295320	G	Goods (tovar)
1295321	G	Goods (tovar)
1295322	G	Goods (tovar)
1295323	G	Goods (tovar)
1295324	G	Goods (tovar)
1295325	G	Goods (tovar)
1295326	G	Goods (tovar)
1295327	G	Goods (tovar)
1295328	G	Goods (tovar)
1295329	G	Goods (tovar)
1295330	G	Goods (tovar)
1295331	G	Goods (tovar)
1295332	G	Goods (tovar)
1295333	G	Goods (tovar)
1295334	G	Goods (tovar)
1295335	G	Goods (tovar)
1295336	G	Goods (tovar)
1295337	G	Goods (tovar)
1295338	G	Goods (tovar)
1295339	G	Goods (tovar)
1295340	G	Goods (tovar)
1295341	G	Goods (tovar)
1295342	G	Goods (tovar)
1295343	G	Goods (tovar)
1295344	G	Goods (tovar)
1295345	G	Goods (tovar)
1295346	G	Goods (tovar)
1295347	G	Goods (tovar)
1295348	G	Goods (tovar)
1295349	G	Goods (tovar)
1295350	G	Goods (tovar)
1295351	G	Goods (tovar)
1295352	G	Goods (tovar)
1295353	G	Goods (tovar)
1295354	G	Goods (tovar)
1295355	G	Goods (tovar)
1295356	G	Goods (tovar)
1295357	G	Goods (tovar)
1295358	G	Goods (tovar)
1295359	G	Goods (tovar)
1295360	G	Goods (tovar)
1295361	G	Goods (tovar)
1295362	G	Goods (tovar)
1295363	G	Goods (tovar)
1295364	G	Goods (tovar)
1295365	G	Goods (tovar)
1295366	G	Goods (tovar)
1295367	G	Goods (tovar)
1295368	G	Goods (tovar)
1295369	G	Goods (tovar)
1295370	G	Goods (tovar)
1295371	G	Goods (tovar)
1295372	G	Goods (tovar)
1295373	G	Goods (tovar)
1295374	G	Goods (tovar)
1295375	G	Goods (tovar)
1295376	G	Goods (tovar)
1295377	G	Goods (tovar)
1295378	G	Goods (tovar)
1295379	G	Goods (tovar)
1295380	G	Goods (tovar)
1295381	G	Goods (tovar)
1295382	G	Goods (tovar)
1295383	G	Goods (tovar)
1295384	G	Goods (tovar)
1295385	G	Goods (tovar)
1295386	G	Goods (tovar)
1295387	G	Goods (tovar)
1295388	G	Goods (tovar)
1295389	G	Goods (tovar)
1295390	G	Goods (tovar)
1295391	G	Goods (tovar)
1295392	G	Goods (tovar)
1295393	G	Goods (tovar)
1295394	G	Goods (tovar)
1295395	G	Goods (tovar)
1295396	G	Goods (tovar)
1295397	G	Goods (tovar)
1295398	G	Goods (tovar)
1295399	G	Goods (tovar)
1295400	G	Goods (tovar)
1295401	G	Goods (tovar)
1295402	G	Goods (tovar)
1295403	G	Goods (tovar)
1295404	G	Goods (tovar)
1295405	G	Goods (tovar)
1295406	G	Goods (tovar)
1295407	G	Goods (tovar)
1295408	G	Goods (tovar)
1295409	G	Goods (tovar)
1295410	G	Goods (tovar)
1295411	G	Goods (tovar)
1295412	G	Goods (tovar)
1295413	G	Goods (tovar)
1295414	G	Goods (tovar)
1295415	G	Goods (tovar)
1295416	G	Goods (tovar)
1295417	G	Goods (tovar)
1295418	G	Goods (tovar)
1295419	G	Goods (tovar)
1295420	G	Goods (tovar)
1295421	G	Goods (tovar)
1295422	G	Goods (tovar)
1295423	G	Goods (tovar)
1295424	G	Goods (tovar)
1295425	G	Goods (tovar)
1295426	G	Goods (tovar)
1295427	G	Goods (tovar)
1295428	G	Goods (tovar)
1295429	G	Goods (tovar)
1295430	G	Goods (tovar)
1295431	G	Goods (tovar)
1295432	G	Goods (tovar)
1295433	G	Goods (tovar)
1295434	G	Goods (tovar)
1295435	G	Goods (tovar)
1295436	G	Goods (tovar)
1295437	G	Goods (tovar)
1295438	G	Goods (tovar)
1295439	G	Goods (tovar)
1295440	G	Goods (tovar)
1295441	G	Goods (tovar)
1295442	G	Goods (tovar)
1295443	G	Goods (tovar)
1295444	G	Goods (tovar)
1295445	G	Goods (tovar)
1295446	G	Goods (tovar)
1295447	G	Goods (tovar)
1295448	G	Goods (tovar)
1295449	G	Goods (tovar)
1295450	G	Goods (tovar)
1295451	G	Goods (tovar)
1295452	G	Goods (tovar)
1295453	G	Goods (tovar)
1295454	G	Goods (tovar)
1295455	G	Goods (tovar)
1295456	G	Goods (tovar)
1295457	G	Goods (tovar)
1295458	G	Goods (tovar)
1295459	G	Goods (tovar)
1295460	G	Goods (tovar)
1295461	G	Goods (tovar)
1295462	G	Goods (tovar)
1295463	G	Goods (tovar)
1295464	G	Goods (tovar)
1295465	G	Goods (tovar)
1295466	G	Goods (tovar)
1295467	G	Goods (tovar)
1295468	G	Goods (tovar)
1295469	G	Goods (tovar)
1295470	G	Goods (tovar)
1295471	G	Goods (tovar)
1295472	G	Goods (tovar)
1295473	G	Goods (tovar)
1295474	G	Goods (tovar)
1295475	G	Goods (tovar)
1295476	G	Goods (tovar)
1295477	G	Goods (tovar)
1295478	G	Goods (tovar)
1295479	G	Goods (tovar)
1295480	G	Goods (tovar)
1295481	G	Goods (tovar)
1295482	G	Goods (tovar)
1295483	G	Goods (tovar)
1295484	G	Goods (tovar)
1295485	G	Goods (tovar)
1295486	G	Goods (tovar)
1295487	G	Goods (tovar)
1295488	G	Goods (tovar)
1295489	G	Goods (tovar)
1295490	G	Goods (tovar)
1295491	G	Goods (tovar)
1295492	G	Goods (tovar)
1295493	G	Goods (tovar)
1295494	G	Goods (tovar)
1295495	G	Goods (tovar)
1295496	G	Goods (tovar)
1295497	G	Goods (tovar)
1295498	G	Goods (tovar)
1295499	G	Goods (tovar)
1295500	G	Goods (tovar)
1295501	G	Goods (tovar)
1295502	G	Goods (tovar)
1295503	G	Goods (tovar)
1295504	G	Goods (tovar)
1295505	G	Goods (tovar)
1295506	G	Goods (tovar)
1295507	G	Goods (tovar)
1295508	G	Goods (tovar)
1295509	G	Goods (tovar)
1295510	G	Goods (tovar)
1295511	G	Goods (tovar)
1295512	G	Goods (tovar)
1295513	G	Goods (tovar)
1295514	G	Goods (tovar)
1295515	G	Goods (tovar)
1295516	G	Goods (tovar)
1295517	G	Goods (tovar)
1295518	G	Goods (tovar)
1295519	G	Goods (tovar)
1295520	G	Goods (tovar)
1295521	G	Goods (tovar)
1295522	G	Goods (tovar)
1295523	G	Goods (tovar)
1295524	G	Goods (tovar)
1295525	G	Goods (tovar)
1295526	G	Goods (tovar)
1295527	G	Goods (tovar)
1295528	G	Goods (tovar)
1295529	G	Goods (tovar)
1295530	G	Goods (tovar)
1295531	G	Goods (tovar)
1295532	G	Goods (tovar)
1295533	G	Goods (tovar)
1295534	G	Goods (tovar)
1295535	G	Goods (tovar)
1295536	G	Goods (tovar)
1295537	G	Goods (tovar)
1295538	G	Goods (tovar)
1295539	G	Goods (tovar)
1295540	G	Goods (tovar)
1295541	G	Goods (tovar)
1295542	G	Goods (tovar)
1295543	G	Goods (tovar)
1295544	G	Goods (tovar)
1295545	G	Goods (tovar)
1295546	G	Goods (tovar)
1295547	G	Goods (tovar)
1295548	G	Goods (tovar)
1295549	G	Goods (tovar)
1295550	G	Goods (tovar)
1295551	G	Goods (tovar)
1295552	G	Goods (tovar)
1295553	G	Goods (tovar)
1295554	G	Goods (tovar)
1295555	G	Goods (tovar)
1295556	G	Goods (tovar)
1295557	G	Goods (tovar)
1295558	G	Goods (tovar)
1295559	G	Goods (tovar)
1295560	G	Goods (tovar)
1295561	G	Goods (tovar)
1295562	G	Goods (tovar)
1295563	G	Goods (tovar)
1295564	G	Goods (tovar)
1295565	G	Goods (tovar)
1295566	G	Goods (tovar)
1295567	G	Goods (tovar)
1295568	G	Goods (tovar)
1295569	G	Goods (tovar)
1295570	G	Goods (tovar)
1295571	G	Goods (tovar)
1295572	G	Goods (tovar)
1295573	G	Goods (tovar)
1295574	G	Goods (tovar)
1295575	G	Goods (tovar)
1295576	G	Goods (tovar)
1295577	G	Goods (tovar)
1295578	G	Goods (tovar)
1295579	G	Goods (tovar)
1295580	G	Goods (tovar)
1295581	G	Goods (tovar)
1295582	G	Goods (tovar)
1295583	G	Goods (tovar)
1295584	G	Goods (tovar)
1295585	G	Goods (tovar)
1295586	G	Goods (tovar)
1295587	G	Goods (tovar)
1295588	G	Goods (tovar)
1295589	G	Goods (tovar)
1295590	G	Goods (tovar)
1295591	G	Goods (tovar)
1295592	G	Goods (tovar)
1295593	G	Goods (tovar)
1295594	G	Goods (tovar)
1295595	G	Goods (tovar)
1295596	G	Goods (tovar)
1295597	G	Goods (tovar)
1295598	G	Goods (tovar)
1295599	G	Goods (tovar)
1295600	G	Goods (tovar)
1295601	G	Goods (tovar)
1295602	G	Goods (tovar)
1295603	G	Goods (tovar)
1295604	G	Goods (tovar)
1295605	G	Goods (tovar)
1295606	G	Goods (tovar)
1295607	G	Goods (tovar)
1295608	G	Goods (tovar)
1295609	G	Goods (tovar)
1295610	G	Goods (tovar)
1295611	G	Goods (tovar)
1295612	G	Goods (tovar)
1295613	G	Goods (tovar)
1295614	G	Goods (tovar)
1295615	G	Goods (tovar)
1295616	G	Goods (tovar)
1295617	G	Goods (tovar)
1295618	G	Goods (tovar)
1295619	G	Goods (tovar)
1295620	G	Goods (tovar)
1295621	G	Goods (tovar)
1295622	G	Goods (tovar)
1295623	G	Goods (tovar)
1295624	G	Goods (tovar)
1295625	G	Goods (tovar)
1295626	G	Goods (tovar)
1295627	G	Goods (tovar)
1295628	G	Goods (tovar)
1295629	G	Goods (tovar)
1295630	G	Goods (tovar)
1295631	G	Goods (tovar)
1295632	G	Goods (tovar)
1295633	G	Goods (tovar)
1295634	G	Goods (tovar)
1295635	G	Goods (tovar)
1295636	G	Goods (tovar)
1295637	G	Goods (tovar)
1295638	G	Goods (tovar)
1295639	G	Goods (tovar)
1295640	G	Goods (tovar)
1295641	G	Goods (tovar)
1295642	G	Goods (tovar)
1295643	G	Goods (tovar)
1295644	G	Goods (tovar)
1295645	G	Goods (tovar)
1295646	G	Goods (tovar)
1295647	G	Goods (tovar)
1295648	G	Goods (tovar)
1295649	G	Goods (tovar)
1295650	G	Goods (tovar)
1295651	G	Goods (tovar)
1295652	G	Goods (tovar)
1295653	G	Goods (tovar)
1295654	G	Goods (tovar)
1295655	G	Goods (tovar)
1295656	G	Goods (tovar)
1295657	G	Goods (tovar)
1295658	G	Goods (tovar)
1295659	G	Goods (tovar)
1295660	G	Goods (tovar)
1295661	G	Goods (tovar)
1295662	G	Goods (tovar)
1295663	G	Goods (tovar)
1295664	G	Goods (tovar)
1295665	G	Goods (tovar)
1295666	G	Goods (tovar)
1295667	G	Goods (tovar)
1295668	G	Goods (tovar)
1295669	G	Goods (tovar)
1295670	G	Goods (tovar)
1295671	G	Goods (tovar)
1295672	G	Goods (tovar)
1295673	G	Goods (tovar)
1295674	G	Goods (tovar)
1295675	G	Goods (tovar)
1295676	G	Goods (tovar)
1295677	G	Goods (tovar)
1295678	G	Goods (tovar)
1295679	G	Goods (tovar)
1295680	G	Goods (tovar)
1295681	G	Goods (tovar)
1295682	G	Goods (tovar)
1295683	G	Goods (tovar)
1295684	G	Goods (tovar)
1295685	G	Goods (tovar)
1295686	G	Goods (tovar)
1295687	G	Goods (tovar)
1295688	G	Goods (tovar)
1295689	G	Goods (tovar)
1295690	G	Goods (tovar)
1295691	G	Goods (tovar)
1295692	G	Goods (tovar)
1295693	G	Goods (tovar)
1295694	G	Goods (tovar)
1295695	G	Goods (tovar)
1295696	G	Goods (tovar)
1295697	G	Goods (tovar)
1295698	G	Goods (tovar)
1295699	G	Goods (tovar)
1295700	G	Goods (tovar)
1295701	G	Goods (tovar)
1295702	G	Goods (tovar)
1295703	G	Goods (tovar)
1295704	G	Goods (tovar)
1295705	G	Goods (tovar)
1295706	G	Goods (tovar)
1295707	G	Goods (tovar)
1295708	G	Goods (tovar)
1295709	G	Goods (tovar)
1295710	G	Goods (tovar)
1295711	G	Goods (tovar)
1295712	G	Goods (tovar)
1295713	G	Goods (tovar)
1295714	G	Goods (tovar)
1295715	G	Goods (tovar)
1295716	G	Goods (tovar)
1295717	G	Goods (tovar)
1295718	G	Goods (tovar)
1295719	G	Goods (tovar)
1295720	G	Goods (tovar)
1295721	G	Goods (tovar)
1295722	G	Goods (tovar)
1295723	G	Goods (tovar)
1295724	G	Goods (tovar)
1295725	G	Goods (tovar)
1295726	G	Goods (tovar)
1295727	G	Goods (tovar)
1295728	G	Goods (tovar)
1295729	G	Goods (tovar)
1295730	G	Goods (tovar)
1295731	G	Goods (tovar)
1295732	G	Goods (tovar)
1295733	G	Goods (tovar)
1295734	G	Goods (tovar)
1295735	G	Goods (tovar)
1295736	G	Goods (tovar)
1295737	G	Goods (tovar)
1295738	G	Goods (tovar)
1295739	G	Goods (tovar)
1295740	G	Goods (tovar)
1295741	G	Goods (tovar)
1295742	G	Goods (tovar)
1295743	G	Goods (tovar)
1295744	G	Goods (tovar)
1295745	G	Goods (tovar)
1295746	G	Goods (tovar)
1295747	G	Goods (tovar)
1295748	G	Goods (tovar)
1295749	G	Goods (tovar)
1295750	G	Goods (tovar)
1295751	G	Goods (tovar)
1295752	G	Goods (tovar)
1295753	G	Goods (tovar)
1295754	G	Goods (tovar)
1295755	G	Goods (tovar)
1295756	G	Goods (tovar)
1295757	G	Goods (tovar)
1295758	G	Goods (tovar)
1295759	G	Goods (tovar)
1295760	G	Goods (tovar)
1295761	G	Goods (tovar)
1295762	G	Goods (tovar)
1295763	G	Goods (tovar)
1295764	G	Goods (tovar)
1295765	G	Goods (tovar)
1295766	G	Goods (tovar)
1295767	G	Goods (tovar)
1295768	G	Goods (tovar)
1295769	G	Goods (tovar)
1295770	G	Goods (tovar)
1295771	G	Goods (tovar)
1295772	G	Goods (tovar)
1295773	G	Goods (tovar)
1295774	G	Goods (tovar)
1295775	G	Goods (tovar)
1295776	G	Goods (tovar)
1295777	G	Goods (tovar)
1295778	G	Goods (tovar)
1295779	G	Goods (tovar)
1295780	G	Goods (tovar)
1295781	G	Goods (tovar)
1295782	G	Goods (tovar)
1295783	G	Goods (tovar)
1295784	G	Goods (tovar)
1295785	G	Goods (tovar)
1295786	G	Goods (tovar)
1295787	G	Goods (tovar)
1295788	G	Goods (tovar)
1295789	G	Goods (tovar)
1295790	G	Goods (tovar)
1295791	G	Goods (tovar)
1295792	G	Goods (tovar)
1295793	G	Goods (tovar)
1295794	G	Goods (tovar)
1295795	G	Goods (tovar)
1295796	G	Goods (tovar)
1295797	G	Goods (tovar)
1295798	G	Goods (tovar)
1295799	G	Goods (tovar)
1295800	G	Goods (tovar)
1295801	G	Goods (tovar)
1295802	G	Goods (tovar)
1295803	G	Goods (tovar)
1295804	G	Goods (tovar)
1295805	G	Goods (tovar)
1295806	G	Goods (tovar)
1295807	G	Goods (tovar)
1295808	G	Goods (tovar)
1295809	G	Goods (tovar)
1295810	G	Goods (tovar)
1295811	G	Goods (tovar)
1295812	G	Goods (tovar)
1295813	G	Goods (tovar)
1295814	G	Goods (tovar)
1295815	G	Goods (tovar)
1295816	G	Goods (tovar)
1295817	G	Goods (tovar)
1295818	G	Goods (tovar)
1295819	G	Goods (tovar)
1295820	G	Goods (tovar)
1295821	G	Goods (tovar)
1295822	G	Goods (tovar)
1295823	G	Goods (tovar)
1295824	G	Goods (tovar)
1295825	G	Goods (tovar)
1295826	G	Goods (tovar)
1295827	G	Goods (tovar)
1295828	G	Goods (tovar)
1295829	G	Goods (tovar)
1295830	G	Goods (tovar)
1295831	G	Goods (tovar)
1295832	G	Goods (tovar)
1295833	G	Goods (tovar)
1295834	G	Goods (tovar)
1295835	G	Goods (tovar)
1295836	G	Goods (tovar)
1295837	G	Goods (tovar)
1295838	G	Goods (tovar)
1295839	G	Goods (tovar)
1295840	G	Goods (tovar)
1295841	G	Goods (tovar)
1295842	G	Goods (tovar)
1295843	G	Goods (tovar)
1295844	G	Goods (tovar)
1295845	G	Goods (tovar)
1295846	G	Goods (tovar)
1295847	G	Goods (tovar)
1295848	G	Goods (tovar)
1295849	G	Goods (tovar)
1295850	G	Goods (tovar)
1295851	G	Goods (tovar)
1295852	G	Goods (tovar)
1295853	G	Goods (tovar)
1295854	G	Goods (tovar)
1295855	G	Goods (tovar)
1295856	G	Goods (tovar)
1295857	G	Goods (tovar)
1295858	G	Goods (tovar)
1295859	G	Goods (tovar)
1295860	G	Goods (tovar)
1295861	G	Goods (tovar)
1295862	G	Goods (tovar)
1295863	G	Goods (tovar)
1295864	G	Goods (tovar)
1295865	G	Goods (tovar)
1295866	G	Goods (tovar)
1295867	G	Goods (tovar)
1295868	G	Goods (tovar)
1295869	G	Goods (tovar)
1295870	G	Goods (tovar)
1295871	G	Goods (tovar)
1295872	G	Goods (tovar)
1295873	G	Goods (tovar)
1295874	G	Goods (tovar)
1295875	G	Goods (tovar)
1295876	G	Goods (tovar)
1295877	G	Goods (tovar)
1295878	G	Goods (tovar)
1295879	G	Goods (tovar)
1295880	G	Goods (tovar)
1295881	G	Goods (tovar)
1295882	G	Goods (tovar)
1295883	G	Goods (tovar)
1295884	G	Goods (tovar)
1295885	G	Goods (tovar)
1295886	G	Goods (tovar)
1295887	G	Goods (tovar)
1295888	G	Goods (tovar)
1295889	G	Goods (tovar)
1295890	G	Goods (tovar)
1295891	G	Goods (tovar)
1295892	G	Goods (tovar)
1295893	G	Goods (tovar)
1295894	G	Goods (tovar)
1295895	G	Goods (tovar)
1295896	G	Goods (tovar)
1295897	G	Goods (tovar)
1295898	G	Goods (tovar)
1295899	G	Goods (tovar)
1295900	G	Goods (tovar)
1295901	G	Goods (tovar)
1295902	G	Goods (tovar)
1295903	G	Goods (tovar)
1295904	G	Goods (tovar)
1295905	G	Goods (tovar)
1295906	G	Goods (tovar)
1295907	G	Goods (tovar)
1295908	G	Goods (tovar)
1295909	G	Goods (tovar)
1295910	G	Goods (tovar)
1295911	G	Goods (tovar)
1295912	G	Goods (tovar)
1295913	G	Goods (tovar)
1295914	G	Goods (tovar)
1295915	G	Goods (tovar)
1295916	G	Goods (tovar)
1295917	G	Goods (tovar)
1295918	G	Goods (tovar)
1295919	G	Goods (tovar)
1295920	G	Goods (tovar)
1295921	G	Goods (tovar)
1295922	G	Goods (tovar)
1295923	G	Goods (tovar)
1295924	G	Goods (tovar)
1295925	G	Goods (tovar)
1295926	G	Goods (tovar)
1295927	G	Goods (tovar)
1295928	G	Goods (tovar)
1295929	G	Goods (tovar)
1295930	G	Goods (tovar)
1295931	G	Goods (tovar)
1295932	G	Goods (tovar)
1295933	G	Goods (tovar)
1295934	G	Goods (tovar)
1295935	G	Goods (tovar)
1295936	G	Goods (tovar)
1295937	G	Goods (tovar)
1295938	G	Goods (tovar)
1295939	G	Goods (tovar)
1295940	G	Goods (tovar)
1295941	G	Goods (tovar)
1295942	G	Goods (tovar)
1295943	G	Goods (tovar)
1295944	G	Goods (tovar)
1295945	G	Goods (tovar)
1295946	G	Goods (tovar)
1295947	G	Goods (tovar)
1295948	G	Goods (tovar)
1295949	G	Goods (tovar)
1295950	G	Goods (tovar)
1295951	G	Goods (tovar)
1295952	G	Goods (tovar)
1295953	G	Goods (tovar)
1295954	G	Goods (tovar)
1295955	G	Goods (tovar)
1295956	G	Goods (tovar)
1295957	G	Goods (tovar)
1295958	G	Goods (tovar)
1295959	G	Goods (tovar)
1295960	G	Goods (tovar)
1295961	G	Goods (tovar)
1295962	G	Goods (tovar)
1295963	G	Goods (tovar)
1295964	G	Goods (tovar)
1295965	G	Goods (tovar)
1295966	G	Goods (tovar)
1295967	G	Goods (tovar)
1295968	G	Goods (tovar)
1295969	G	Goods (tovar)
1295970	G	Goods (tovar)
1295971	G	Goods (tovar)
1295972	G	Goods (tovar)
1295973	G	Goods (tovar)
1295974	G	Goods (tovar)
1295975	G	Goods (tovar)
1295976	G	Goods (tovar)
1295977	G	Goods (tovar)
1295978	G	Goods (tovar)
1295979	G	Goods (tovar)
1295980	G	Goods (tovar)
1295981	G	Goods (tovar)
1295982	G	Goods (tovar)
1295983	G	Goods (tovar)
1295984	G	Goods (tovar)
1295985	G	Goods (tovar)
1295986	G	Goods (tovar)
1295987	G	Goods (tovar)
1295988	G	Goods (tovar)
1295989	G	Goods (tovar)
1295990	G	Goods (tovar)
1295991	G	Goods (tovar)
1295992	G	Goods (tovar)
1295993	G	Goods (tovar)
1295994	G	Goods (tovar)
1295995	G	Goods (tovar)
1295996	G	Goods (tovar)
1295997	G	Goods (tovar)
1295998	G	Goods (tovar)
1295999	G	Goods (tovar)
1296000	G	Goods (tovar)
1296001	G	Goods (tovar)
1296002	G	Goods (tovar)
1296003	G	Goods (tovar)
1296004	G	Goods (tovar)
1296005	G	Goods (tovar)
1296006	G	Goods (tovar)
1296007	G	Goods (tovar)
1296008	G	Goods (tovar)
1296009	G	Goods (tovar)
1296010	G	Goods (tovar)
1296011	G	Goods (tovar)
1296012	G	Goods (tovar)
1296013	G	Goods (tovar)
1296014	G	Goods (tovar)
1296015	G	Goods (tovar)
1296016	G	Goods (tovar)
1296017	G	Goods (tovar)
1296018	G	Goods (tovar)
1296019	G	Goods (tovar)
1296020	G	Goods (tovar)
1296021	G	Goods (tovar)
1296022	G	Goods (tovar)
1296023	G	Goods (tovar)
1296024	G	Goods (tovar)
1296025	G	Goods (tovar)
1296026	G	Goods (tovar)
1296027	G	Goods (tovar)
1296028	G	Goods (tovar)
1296029	G	Goods (tovar)
1296030	G	Goods (tovar)
1296031	G	Goods (tovar)
1296032	G	Goods (tovar)
1296033	G	Goods (tovar)
1296034	G	Goods (tovar)
1296035	G	Goods (tovar)
1296036	G	Goods (tovar)
1296037	G	Goods (tovar)
1296038	G	Goods (tovar)
1296039	G	Goods (tovar)
1296040	G	Goods (tovar)
1296041	G	Goods (tovar)
1296042	G	Goods (tovar)
1296043	G	Goods (tovar)
1296044	G	Goods (tovar)
1296045	G	Goods (tovar)
1296046	G	Goods (tovar)
1296047	G	Goods (tovar)
1296048	G	Goods (tovar)
1296049	G	Goods (tovar)
1296050	G	Goods (tovar)
1296051	G	Goods (tovar)
1296052	G	Goods (tovar)
1296053	G	Goods (tovar)
1296054	G	Goods (tovar)
1296055	G	Goods (tovar)
1296056	G	Goods (tovar)
1296057	G	Goods (tovar)
1296058	G	Goods (tovar)
1296059	G	Goods (tovar)
1296060	G	Goods (tovar)
1296061	G	Goods (tovar)
1296062	G	Goods (tovar)
1296063	G	Goods (tovar)
1296064	G	Goods (tovar)
1296065	G	Goods (tovar)
1296066	G	Goods (tovar)
1296067	G	Goods (tovar)
1296068	G	Goods (tovar)
1296069	G	Goods (tovar)
1296070	G	Goods (tovar)
1296071	G	Goods (tovar)
1296072	G	Goods (tovar)
1296073	G	Goods (tovar)
1296074	G	Goods (tovar)
1296075	G	Goods (tovar)
1296076	G	Goods (tovar)
1296077	G	Goods (tovar)
1296078	G	Goods (tovar)
1296079	G	Goods (tovar)
1296080	G	Goods (tovar)
1296081	G	Goods (tovar)
1296082	G	Goods (tovar)
1296083	G	Goods (tovar)
1296084	G	Goods (tovar)
1296085	G	Goods (tovar)
1296086	G	Goods (tovar)
1296087	G	Goods (tovar)
1296088	G	Goods (tovar)
1296089	G	Goods (tovar)
1296090	G	Goods (tovar)
1296091	G	Goods (tovar)
1296092	G	Goods (tovar)
1296093	G	Goods (tovar)
1296094	G	Goods (tovar)
1296095	G	Goods (tovar)
1296096	G	Goods (tovar)
1296097	G	Goods (tovar)
1296098	G	Goods (tovar)
1296099	G	Goods (tovar)
1296100	G	Goods (tovar)
1296101	G	Goods (tovar)
1296102	G	Goods (tovar)
1296103	G	Goods (tovar)
1296104	G	Goods (tovar)
1296105	G	Goods (tovar)
1296106	G	Goods (tovar)
1296107	G	Goods (tovar)
1296108	G	Goods (tovar)
1296109	G	Goods (tovar)
1296110	G	Goods (tovar)
1296111	G	Goods (tovar)
1296112	G	Goods (tovar)
1296113	G	Goods (tovar)
1296114	G	Goods (tovar)
1296115	G	Goods (tovar)
1296116	G	Goods (tovar)
1296117	G	Goods (tovar)
1296118	G	Goods (tovar)
1296119	G	Goods (tovar)
1296120	G	Goods (tovar)
1296121	G	Goods (tovar)
1296122	G	Goods (tovar)
1296123	G	Goods (tovar)
1296124	G	Goods (tovar)
1296125	G	Goods (tovar)
1296126	G	Goods (tovar)
1296127	G	Goods (tovar)
1296128	G	Goods (tovar)
1296129	G	Goods (tovar)
1296130	G	Goods (tovar)
1296131	G	Goods (tovar)
1296132	G	Goods (tovar)
1296133	G	Goods (tovar)
1296134	G	Goods (tovar)
1296135	G	Goods (tovar)
1296136	G	Goods (tovar)
1296137	G	Goods (tovar)
1296138	G	Goods (tovar)
1296139	G	Goods (tovar)
1296140	G	Goods (tovar)
1296141	G	Goods (tovar)
1296142	G	Goods (tovar)
1296143	G	Goods (tovar)
1296144	G	Goods (tovar)
1296145	G	Goods (tovar)
1296146	G	Goods (tovar)
1296147	G	Goods (tovar)
1296148	G	Goods (tovar)
1296149	G	Goods (tovar)
1296150	G	Goods (tovar)
1296151	G	Goods (tovar)
1296152	G	Goods (tovar)
1296153	G	Goods (tovar)
1296154	G	Goods (tovar)
1296155	G	Goods (tovar)
1296156	G	Goods (tovar)
1296157	G	Goods (tovar)
1296158	G	Goods (tovar)
1296159	G	Goods (tovar)
1296160	G	Goods (tovar)
1296161	G	Goods (tovar)
1296162	G	Goods (tovar)
1296163	G	Goods (tovar)
1296164	G	Goods (tovar)
1296165	G	Goods (tovar)
1296166	G	Goods (tovar)
1296167	G	Goods (tovar)
1296168	G	Goods (tovar)
1296169	G	Goods (tovar)
1296170	G	Goods (tovar)
1296171	G	Goods (tovar)
1296172	G	Goods (tovar)
1296173	G	Goods (tovar)
1296174	G	Goods (tovar)
1296175	G	Goods (tovar)
1296176	G	Goods (tovar)
1296177	G	Goods (tovar)
1296178	G	Goods (tovar)
1296179	G	Goods (tovar)
1296180	G	Goods (tovar)
1296181	G	Goods (tovar)
1296182	G	Goods (tovar)
1296183	G	Goods (tovar)
1296184	G	Goods (tovar)
1296185	G	Goods (tovar)
1296186	G	Goods (tovar)
1296187	G	Goods (tovar)
1296188	G	Goods (tovar)
1296189	G	Goods (tovar)
1296190	G	Goods (tovar)
1296191	G	Goods (tovar)
1296192	G	Goods (tovar)
1296193	G	Goods (tovar)
1296194	G	Goods (tovar)
1296195	G	Goods (tovar)
1296196	G	Goods (tovar)
1296197	G	Goods (tovar)
1296198	G	Goods (tovar)
1296199	G	Goods (tovar)
1296200	G	Goods (tovar)
1296201	G	Goods (tovar)
1296202	G	Goods (tovar)
1296203	G	Goods (tovar)
1296204	G	Goods (tovar)
1296205	G	Goods (tovar)
1296206	G	Goods (tovar)
1296207	G	Goods (tovar)
1296208	G	Goods (tovar)
1296209	G	Goods (tovar)
1296210	G	Goods (tovar)
1296211	G	Goods (tovar)
1296212	G	Goods (tovar)
1296213	G	Goods (tovar)
1296214	G	Goods (tovar)
1296215	G	Goods (tovar)
1296216	G	Goods (tovar)
1296217	G	Goods (tovar)
1296218	G	Goods (tovar)
1296219	G	Goods (tovar)
1296220	G	Goods (tovar)
1296221	G	Goods (tovar)
1296222	G	Goods (tovar)
1296223	G	Goods (tovar)
1296224	G	Goods (tovar)
1296225	G	Goods (tovar)
1296226	G	Goods (tovar)
1296227	G	Goods (tovar)
1296228	G	Goods (tovar)
1296229	G	Goods (tovar)
1296230	G	Goods (tovar)
1296231	G	Goods (tovar)
1296232	G	Goods (tovar)
1296233	G	Goods (tovar)
1296234	G	Goods (tovar)
1296235	G	Goods (tovar)
1296236	G	Goods (tovar)
1296237	G	Goods (tovar)
1296238	G	Goods (tovar)
1296239	G	Goods (tovar)
1296240	G	Goods (tovar)
1296241	G	Goods (tovar)
1296242	G	Goods (tovar)
1296243	G	Goods (tovar)
1296244	G	Goods (tovar)
1296245	G	Goods (tovar)
1296246	G	Goods (tovar)
1296247	G	Goods (tovar)
1296248	G	Goods (tovar)
1296249	G	Goods (tovar)
1296250	G	Goods (tovar)
1296251	G	Goods (tovar)
1296252	G	Goods (tovar)
1296253	G	Goods (tovar)
1296254	G	Goods (tovar)
1296255	G	Goods (tovar)
1296256	G	Goods (tovar)
1296257	G	Goods (tovar)
1296258	G	Goods (tovar)
1296259	G	Goods (tovar)
1296260	G	Goods (tovar)
1296261	G	Goods (tovar)
1296262	G	Goods (tovar)
1296263	G	Goods (tovar)
1296264	G	Goods (tovar)
1296265	G	Goods (tovar)
1296266	G	Goods (tovar)
1296267	G	Goods (tovar)
1296268	G	Goods (tovar)
1296269	G	Goods (tovar)
1296270	G	Goods (tovar)
1296271	G	Goods (tovar)
1296272	G	Goods (tovar)
1296273	G	Goods (tovar)
1296274	G	Goods (tovar)
1296275	G	Goods (tovar)
1296276	G	Goods (tovar)
1296277	G	Goods (tovar)
1296278	G	Goods (tovar)
1296279	G	Goods (tovar)
1296280	G	Goods (tovar)
1296281	G	Goods (tovar)
1296282	G	Goods (tovar)
1296283	G	Goods (tovar)
1296284	G	Goods (tovar)
1296285	G	Goods (tovar)
1296286	G	Goods (tovar)
1296287	G	Goods (tovar)
1296288	G	Goods (tovar)
1296289	G	Goods (tovar)
1296290	G	Goods (tovar)
1296291	G	Goods (tovar)
1296292	G	Goods (tovar)
1296293	G	Goods (tovar)
1296294	G	Goods (tovar)
1296295	G	Goods (tovar)
1296296	G	Goods (tovar)
1296297	G	Goods (tovar)
1296298	G	Goods (tovar)
1296299	G	Goods (tovar)
1296300	G	Goods (tovar)
1296301	G	Goods (tovar)
1296302	G	Goods (tovar)
1296303	G	Goods (tovar)
1296304	G	Goods (tovar)
1296305	G	Goods (tovar)
1296306	G	Goods (tovar)
1296307	G	Goods (tovar)
1296308	G	Goods (tovar)
1296309	G	Goods (tovar)
1296310	G	Goods (tovar)
1296311	G	Goods (tovar)
1296312	G	Goods (tovar)
1296313	G	Goods (tovar)
1296314	G	Goods (tovar)
1296315	G	Goods (tovar)
1296316	G	Goods (tovar)
1296317	G	Goods (tovar)
1296318	G	Goods (tovar)
1296319	G	Goods (tovar)
1296320	G	Goods (tovar)
1296321	G	Goods (tovar)
1296322	G	Goods (tovar)
1296323	G	Goods (tovar)
1296324	G	Goods (tovar)
1296325	G	Goods (tovar)
1296326	G	Goods (tovar)
1296327	G	Goods (tovar)
1296328	G	Goods (tovar)
1296329	G	Goods (tovar)
1296330	G	Goods (tovar)
1296331	G	Goods (tovar)
1296332	G	Goods (tovar)
1296333	G	Goods (tovar)
1296334	G	Goods (tovar)
1296335	G	Goods (tovar)
1296336	G	Goods (tovar)
1296337	G	Goods (tovar)
1296338	G	Goods (tovar)
1296339	G	Goods (tovar)
1296340	G	Goods (tovar)
1296341	G	Goods (tovar)
1296342	G	Goods (tovar)
1296343	G	Goods (tovar)
1296344	G	Goods (tovar)
1296345	G	Goods (tovar)
1296346	G	Goods (tovar)
1296347	G	Goods (tovar)
1296348	G	Goods (tovar)
1296349	G	Goods (tovar)
1296350	G	Goods (tovar)
1296351	G	Goods (tovar)
1296352	G	Goods (tovar)
1296353	G	Goods (tovar)
1296354	G	Goods (tovar)
1296355	G	Goods (tovar)
1296356	G	Goods (tovar)
1296357	G	Goods (tovar)
1296358	G	Goods (tovar)
1296359	G	Goods (tovar)
1296360	G	Goods (tovar)
1296361	G	Goods (tovar)
1296362	G	Goods (tovar)
1296363	G	Goods (tovar)
1296364	G	Goods (tovar)
1296365	G	Goods (tovar)
1296366	G	Goods (tovar)
1296367	G	Goods (tovar)
1296368	G	Goods (tovar)
1296369	G	Goods (tovar)
1296370	G	Goods (tovar)
1296371	G	Goods (tovar)
1296372	G	Goods (tovar)
1296373	G	Goods (tovar)
1296374	G	Goods (tovar)
1296375	G	Goods (tovar)
1296376	G	Goods (tovar)
1296377	G	Goods (tovar)
1296378	G	Goods (tovar)
1296379	G	Goods (tovar)
1296380	G	Goods (tovar)
1296381	G	Goods (tovar)
1296382	G	Goods (tovar)
1296383	G	Goods (tovar)
1296384	G	Goods (tovar)
1296385	G	Goods (tovar)
1296386	G	Goods (tovar)
1296387	G	Goods (tovar)
1296388	G	Goods (tovar)
1296389	G	Goods (tovar)
1296390	G	Goods (tovar)
1296391	G	Goods (tovar)
1296392	G	Goods (tovar)
1296393	G	Goods (tovar)
1296394	G	Goods (tovar)
1296395	G	Goods (tovar)
1296396	G	Goods (tovar)
1296397	G	Goods (tovar)
1296398	G	Goods (tovar)
1296399	G	Goods (tovar)
1296400	G	Goods (tovar)
1296401	G	Goods (tovar)
1296402	G	Goods (tovar)
1296403	G	Goods (tovar)
1296404	G	Goods (tovar)
1296405	G	Goods (tovar)
1296406	G	Goods (tovar)
1296407	G	Goods (tovar)
1296408	G	Goods (tovar)
1296409	G	Goods (tovar)
1296410	G	Goods (tovar)
1296411	G	Goods (tovar)
1296412	G	Goods (tovar)
1296413	G	Goods (tovar)
1296414	G	Goods (tovar)
1296415	G	Goods (tovar)
1296416	G	Goods (tovar)
1296417	G	Goods (tovar)
1296418	G	Goods (tovar)
1296419	G	Goods (tovar)
1296420	G	Goods (tovar)
1296421	G	Goods (tovar)
1296422	G	Goods (tovar)
1296423	G	Goods (tovar)
1296424	G	Goods (tovar)
1296425	G	Goods (tovar)
1296426	G	Goods (tovar)
1296427	G	Goods (tovar)
1296428	G	Goods (tovar)
1296429	G	Goods (tovar)
1296430	G	Goods (tovar)
1296431	G	Goods (tovar)
1296432	G	Goods (tovar)
1296433	G	Goods (tovar)
1296434	G	Goods (tovar)
1296435	G	Goods (tovar)
1296436	G	Goods (tovar)
1296437	G	Goods (tovar)
1296438	G	Goods (tovar)
1296439	G	Goods (tovar)
1296440	G	Goods (tovar)
1296441	G	Goods (tovar)
1296442	G	Goods (tovar)
1296443	G	Goods (tovar)
1296444	G	Goods (tovar)
1296445	G	Goods (tovar)
1296446	G	Goods (tovar)
1296447	G	Goods (tovar)
1296448	G	Goods (tovar)
1296449	G	Goods (tovar)
1296450	G	Goods (tovar)
1296451	G	Goods (tovar)
1296452	G	Goods (tovar)
1296453	G	Goods (tovar)
1296454	G	Goods (tovar)
1296455	G	Goods (tovar)
1296456	G	Goods (tovar)
1296457	G	Goods (tovar)
1296458	G	Goods (tovar)
1296459	G	Goods (tovar)
1296460	G	Goods (tovar)
1296461	G	Goods (tovar)
1296462	G	Goods (tovar)
1296463	G	Goods (tovar)
1296464	G	Goods (tovar)
1296465	G	Goods (tovar)
1296466	G	Goods (tovar)
1296467	G	Goods (tovar)
1296468	G	Goods (tovar)
1296469	G	Goods (tovar)
1296470	G	Goods (tovar)
1296471	G	Goods (tovar)
1296472	G	Goods (tovar)
1296473	G	Goods (tovar)
1296474	G	Goods (tovar)
1296475	G	Goods (tovar)
1296476	G	Goods (tovar)
1296477	G	Goods (tovar)
1296478	G	Goods (tovar)
1296479	G	Goods (tovar)
1296480	G	Goods (tovar)
1296481	G	Goods (tovar)
1296482	G	Goods (tovar)
1296483	G	Goods (tovar)
1296484	G	Goods (tovar)
1296485	G	Goods (tovar)
1296486	G	Goods (tovar)
1296487	G	Goods (tovar)
1296488	G	Goods (tovar)
1296489	G	Goods (tovar)
1296490	G	Goods (tovar)
1296491	G	Goods (tovar)
1296492	G	Goods (tovar)
1296493	G	Goods (tovar)
1296494	G	Goods (tovar)
1296495	G	Goods (tovar)
1296496	G	Goods (tovar)
1296497	G	Goods (tovar)
1296498	G	Goods (tovar)
1296499	G	Goods (tovar)
1296500	G	Goods (tovar)
1296501	G	Goods (tovar)
1296502	G	Goods (tovar)
1296503	G	Goods (tovar)
1296504	G	Goods (tovar)
1296505	G	Goods (tovar)
1296506	G	Goods (tovar)
1296507	G	Goods (tovar)
1296508	G	Goods (tovar)
1296509	G	Goods (tovar)
1296510	G	Goods (tovar)
1296511	G	Goods (tovar)
1296512	G	Goods (tovar)
1296513	G	Goods (tovar)
1296514	G	Goods (tovar)
1296515	G	Goods (tovar)
1296516	G	Goods (tovar)
1296517	G	Goods (tovar)
1296518	G	Goods (tovar)
1296519	G	Goods (tovar)
1296520	G	Goods (tovar)
1296521	G	Goods (tovar)
1296522	G	Goods (tovar)
1296523	G	Goods (tovar)
1296524	G	Goods (tovar)
1296525	G	Goods (tovar)
1296526	G	Goods (tovar)
1296527	G	Goods (tovar)
1296528	G	Goods (tovar)
1296529	G	Goods (tovar)
1296530	G	Goods (tovar)
1296531	G	Goods (tovar)
1296532	G	Goods (tovar)
1296533	G	Goods (tovar)
1296534	G	Goods (tovar)
1296535	G	Goods (tovar)
1296536	G	Goods (tovar)
1296537	G	Goods (tovar)
1296538	G	Goods (tovar)
1296539	G	Goods (tovar)
1296540	G	Goods (tovar)
1296541	G	Goods (tovar)
1296542	G	Goods (tovar)
1296543	G	Goods (tovar)
1296544	G	Goods (tovar)
1296545	G	Goods (tovar)
1296546	G	Goods (tovar)
1296547	G	Goods (tovar)
1296548	G	Goods (tovar)
1296549	G	Goods (tovar)
1296550	G	Goods (tovar)
1296551	G	Goods (tovar)
1296552	G	Goods (tovar)
1296553	G	Goods (tovar)
1296554	G	Goods (tovar)
1296555	G	Goods (tovar)
1296556	G	Goods (tovar)
1296557	G	Goods (tovar)
1296558	G	Goods (tovar)
1296559	G	Goods (tovar)
1296560	G	Goods (tovar)
1296561	G	Goods (tovar)
1296562	G	Goods (tovar)
1296563	G	Goods (tovar)
1296564	G	Goods (tovar)
1296565	G	Goods (tovar)
1296566	G	Goods (tovar)
1296567	G	Goods (tovar)
1296568	G	Goods (tovar)
1296569	G	Goods (tovar)
1296570	G	Goods (tovar)
1296571	G	Goods (tovar)
1296572	G	Goods (tovar)
1296573	G	Goods (tovar)
1296574	G	Goods (tovar)
1296575	G	Goods (tovar)
1296576	G	Goods (tovar)
1296577	G	Goods (tovar)
1296578	G	Goods (tovar)
1296579	G	Goods (tovar)
1296580	G	Goods (tovar)
1296581	G	Goods (tovar)
1296582	G	Goods (tovar)
1296583	G	Goods (tovar)
1296584	G	Goods (tovar)
1296585	G	Goods (tovar)
1296586	G	Goods (tovar)
1296587	G	Goods (tovar)
1296588	G	Goods (tovar)
1296589	G	Goods (tovar)
1296590	G	Goods (tovar)
1296591	G	Goods (tovar)
1296592	G	Goods (tovar)
1296593	G	Goods (tovar)
1296594	G	Goods (tovar)
1296595	G	Goods (tovar)
1296596	G	Goods (tovar)
1296597	G	Goods (tovar)
1296598	G	Goods (tovar)
1296599	G	Goods (tovar)
1296600	G	Goods (tovar)
1296601	G	Goods (tovar)
1296602	G	Goods (tovar)
1296603	G	Goods (tovar)
1296604	G	Goods (tovar)
1296605	G	Goods (tovar)
1296606	G	Goods (tovar)
1296607	G	Goods (tovar)
1296608	G	Goods (tovar)
1296609	G	Goods (tovar)
1296610	G	Goods (tovar)
1296611	G	Goods (tovar)
1296612	G	Goods (tovar)
1296613	G	Goods (tovar)
1296614	G	Goods (tovar)
1296615	G	Goods (tovar)
1296616	G	Goods (tovar)
1296617	G	Goods (tovar)
1296618	G	Goods (tovar)
1296619	G	Goods (tovar)
1296620	G	Goods (tovar)
1296621	G	Goods (tovar)
1296622	G	Goods (tovar)
1296623	G	Goods (tovar)
1296624	G	Goods (tovar)
1296625	G	Goods (tovar)
1296626	G	Goods (tovar)
1296627	G	Goods (tovar)
1296628	G	Goods (tovar)
1296629	G	Goods (tovar)
1296630	G	Goods (tovar)
1296631	G	Goods (tovar)
1296632	G	Goods (tovar)
1296633	G	Goods (tovar)
1296634	G	Goods (tovar)
1296635	G	Goods (tovar)
1296636	G	Goods (tovar)
1296637	G	Goods (tovar)
1296638	G	Goods (tovar)
1296639	G	Goods (tovar)
1296640	G	Goods (tovar)
1296641	G	Goods (tovar)
1296642	G	Goods (tovar)
1296643	G	Goods (tovar)
1296644	G	Goods (tovar)
1296645	G	Goods (tovar)
1296646	G	Goods (tovar)
1296647	G	Goods (tovar)
1296648	G	Goods (tovar)
1296649	G	Goods (tovar)
1296650	G	Goods (tovar)
1296651	G	Goods (tovar)
1296652	G	Goods (tovar)
1296653	G	Goods (tovar)
1296654	G	Goods (tovar)
1296655	G	Goods (tovar)
1296656	G	Goods (tovar)
1296657	G	Goods (tovar)
1296658	G	Goods (tovar)
1296659	G	Goods (tovar)
1296660	G	Goods (tovar)
1296661	G	Goods (tovar)
1296662	G	Goods (tovar)
1296663	G	Goods (tovar)
1296664	G	Goods (tovar)
1296665	G	Goods (tovar)
1296666	G	Goods (tovar)
1296667	G	Goods (tovar)
1296668	G	Goods (tovar)
1296669	G	Goods (tovar)
1296670	G	Goods (tovar)
1296671	G	Goods (tovar)
1296672	G	Goods (tovar)
1296673	G	Goods (tovar)
1296674	G	Goods (tovar)
1296675	G	Goods (tovar)
1296676	G	Goods (tovar)
1296677	G	Goods (tovar)
1296678	G	Goods (tovar)
1296679	G	Goods (tovar)
1296680	G	Goods (tovar)
1296681	G	Goods (tovar)
1296682	G	Goods (tovar)
1296683	G	Goods (tovar)
1296684	G	Goods (tovar)
1296685	G	Goods (tovar)
1296686	G	Goods (tovar)
1296687	G	Goods (tovar)
1296688	G	Goods (tovar)
1296689	G	Goods (tovar)
1296690	G	Goods (tovar)
1296691	G	Goods (tovar)
1296692	G	Goods (tovar)
1296693	G	Goods (tovar)
1296694	G	Goods (tovar)
1296695	G	Goods (tovar)
1296696	G	Goods (tovar)
1296697	G	Goods (tovar)
1296698	G	Goods (tovar)
1296699	G	Goods (tovar)
1296700	G	Goods (tovar)
1296701	G	Goods (tovar)
1296702	G	Goods (tovar)
1296703	G	Goods (tovar)
1296704	G	Goods (tovar)
1296705	G	Goods (tovar)
1296706	G	Goods (tovar)
1296707	G	Goods (tovar)
1296708	G	Goods (tovar)
1296709	G	Goods (tovar)
1296710	G	Goods (tovar)
1296711	G	Goods (tovar)
1296712	G	Goods (tovar)
1296713	G	Goods (tovar)
1296714	G	Goods (tovar)
1296715	G	Goods (tovar)
1296716	G	Goods (tovar)
1296717	G	Goods (tovar)
1296718	G	Goods (tovar)
1296719	G	Goods (tovar)
1296720	G	Goods (tovar)
1296721	G	Goods (tovar)
1296722	G	Goods (tovar)
1296723	G	Goods (tovar)
1296724	G	Goods (tovar)
1296725	G	Goods (tovar)
1296726	G	Goods (tovar)
1296727	G	Goods (tovar)
1296728	G	Goods (tovar)
1296729	G	Goods (tovar)
1296730	G	Goods (tovar)
1296731	G	Goods (tovar)
1296732	G	Goods (tovar)
1296733	G	Goods (tovar)
1296734	G	Goods (tovar)
1296735	G	Goods (tovar)
1296736	G	Goods (tovar)
1296737	G	Goods (tovar)
1296738	G	Goods (tovar)
1296739	G	Goods (tovar)
1296740	G	Goods (tovar)
1296741	G	Goods (tovar)
1296742	G	Goods (tovar)
1296743	G	Goods (tovar)
1296744	G	Goods (tovar)
1296745	G	Goods (tovar)
1296746	G	Goods (tovar)
1296747	G	Goods (tovar)
1296748	G	Goods (tovar)
1296749	G	Goods (tovar)
1296750	G	Goods (tovar)
1296751	G	Goods (tovar)
1296752	G	Goods (tovar)
1296753	G	Goods (tovar)
1296754	G	Goods (tovar)
1296755	G	Goods (tovar)
1296756	G	Goods (tovar)
1296757	G	Goods (tovar)
1296758	G	Goods (tovar)
1296759	G	Goods (tovar)
1296760	G	Goods (tovar)
1296761	G	Goods (tovar)
1296762	G	Goods (tovar)
1296763	G	Goods (tovar)
1296764	G	Goods (tovar)
1296765	G	Goods (tovar)
1296766	G	Goods (tovar)
1296767	G	Goods (tovar)
1296768	G	Goods (tovar)
1296769	G	Goods (tovar)
1296770	G	Goods (tovar)
1296771	G	Goods (tovar)
1296772	G	Goods (tovar)
1296773	G	Goods (tovar)
1296774	G	Goods (tovar)
1296775	G	Goods (tovar)
1296776	G	Goods (tovar)
1296777	G	Goods (tovar)
1296778	G	Goods (tovar)
1296779	G	Goods (tovar)
1296780	G	Goods (tovar)
1296781	G	Goods (tovar)
1296782	G	Goods (tovar)
1296783	G	Goods (tovar)
1296784	G	Goods (tovar)
1296785	G	Goods (tovar)
1296786	G	Goods (tovar)
1296787	G	Goods (tovar)
1296788	G	Goods (tovar)
1296789	G	Goods (tovar)
1296790	G	Goods (tovar)
1296791	G	Goods (tovar)
1296792	G	Goods (tovar)
1296793	G	Goods (tovar)
1296794	G	Goods (tovar)
1296795	G	Goods (tovar)
1296796	G	Goods (tovar)
1296797	G	Goods (tovar)
1296798	G	Goods (tovar)
1296799	G	Goods (tovar)
1296800	G	Goods (tovar)
1296801	G	Goods (tovar)
1296802	G	Goods (tovar)
1296803	G	Goods (tovar)
1296804	G	Goods (tovar)
1296805	G	Goods (tovar)
1296806	G	Goods (tovar)
1296807	G	Goods (tovar)
1296808	G	Goods (tovar)
1296809	G	Goods (tovar)
1296810	G	Goods (tovar)
1296811	G	Goods (tovar)
1296812	G	Goods (tovar)
1296813	G	Goods (tovar)
1296814	G	Goods (tovar)
1296815	G	Goods (tovar)
1296816	G	Goods (tovar)
1296817	G	Goods (tovar)
1296818	G	Goods (tovar)
1296819	G	Goods (tovar)
1296820	G	Goods (tovar)
1296821	G	Goods (tovar)
1296822	G	Goods (tovar)
1296823	G	Goods (tovar)
1296824	G	Goods (tovar)
1296825	G	Goods (tovar)
1296826	G	Goods (tovar)
1296827	G	Goods (tovar)
1296828	G	Goods (tovar)
1296829	G	Goods (tovar)
1296830	G	Goods (tovar)
1296831	G	Goods (tovar)
1296832	G	Goods (tovar)
1296833	G	Goods (tovar)
1296834	G	Goods (tovar)
1296835	G	Goods (tovar)
1296836	G	Goods (tovar)
1296837	G	Goods (tovar)
1296838	G	Goods (tovar)
1296839	G	Goods (tovar)
1296840	G	Goods (tovar)
1296841	G	Goods (tovar)
1296842	G	Goods (tovar)
1296843	G	Goods (tovar)
1296844	G	Goods (tovar)
1296845	G	Goods (tovar)
1296846	G	Goods (tovar)
1296847	G	Goods (tovar)
1296848	G	Goods (tovar)
1296849	G	Goods (tovar)
1296850	G	Goods (tovar)
1296851	G	Goods (tovar)
1296852	G	Goods (tovar)
1296853	G	Goods (tovar)
1296854	G	Goods (tovar)
1296855	G	Goods (tovar)
1296856	G	Goods (tovar)
1296857	G	Goods (tovar)
1296858	G	Goods (tovar)
1296859	G	Goods (tovar)
1296860	G	Goods (tovar)
1296861	G	Goods (tovar)
1296862	G	Goods (tovar)
1296863	G	Goods (tovar)
1296864	G	Goods (tovar)
1296865	G	Goods (tovar)
1296866	G	Goods (tovar)
1296867	G	Goods (tovar)
1296868	G	Goods (tovar)
1296869	G	Goods (tovar)
1296870	G	Goods (tovar)
1296871	G	Goods (tovar)
1296872	G	Goods (tovar)
1296873	G	Goods (tovar)
1296874	G	Goods (tovar)
1296875	G	Goods (tovar)
1296876	G	Goods (tovar)
1296877	G	Goods (tovar)
1296878	G	Goods (tovar)
1296879	G	Goods (tovar)
1296880	G	Goods (tovar)
1296881	G	Goods (tovar)
1296882	G	Goods (tovar)
1296883	G	Goods (tovar)
1296884	G	Goods (tovar)
1296885	G	Goods (tovar)
1296886	G	Goods (tovar)
1296887	G	Goods (tovar)
1296888	G	Goods (tovar)
1296889	G	Goods (tovar)
1296890	G	Goods (tovar)
1296891	G	Goods (tovar)
1296892	G	Goods (tovar)
1296893	G	Goods (tovar)
1296894	G	Goods (tovar)
1296895	G	Goods (tovar)
1296896	G	Goods (tovar)
1296897	G	Goods (tovar)
1296898	G	Goods (tovar)
1296899	G	Goods (tovar)
1296900	G	Goods (tovar)
1296901	G	Goods (tovar)
1296902	G	Goods (tovar)
1296903	G	Goods (tovar)
1296904	G	Goods (tovar)
1296905	G	Goods (tovar)
1296906	G	Goods (tovar)
1296907	G	Goods (tovar)
1296908	G	Goods (tovar)
1296909	G	Goods (tovar)
1296910	G	Goods (tovar)
1296911	G	Goods (tovar)
1296912	G	Goods (tovar)
1296913	G	Goods (tovar)
1296914	G	Goods (tovar)
1296915	G	Goods (tovar)
1296916	G	Goods (tovar)
1296917	G	Goods (tovar)
1296918	G	Goods (tovar)
1296919	G	Goods (tovar)
1296920	G	Goods (tovar)
1296921	G	Goods (tovar)
1296922	G	Goods (tovar)
1296923	G	Goods (tovar)
1296924	G	Goods (tovar)
1296925	G	Goods (tovar)
1296926	G	Goods (tovar)
1296927	G	Goods (tovar)
1296928	G	Goods (tovar)
1296929	G	Goods (tovar)
1296930	G	Goods (tovar)
1296931	G	Goods (tovar)
1296932	G	Goods (tovar)
1296933	G	Goods (tovar)
1296934	G	Goods (tovar)
1296935	G	Goods (tovar)
1296936	G	Goods (tovar)
1296937	G	Goods (tovar)
1296938	G	Goods (tovar)
1296939	G	Goods (tovar)
1296940	G	Goods (tovar)
1296941	G	Goods (tovar)
1296942	G	Goods (tovar)
1296943	G	Goods (tovar)
1296944	G	Goods (tovar)
1296945	G	Goods (tovar)
1296946	G	Goods (tovar)
1296947	G	Goods (tovar)
1296948	G	Goods (tovar)
1296949	G	Goods (tovar)
1296950	G	Goods (tovar)
1296951	G	Goods (tovar)
1296952	G	Goods (tovar)
1296953	G	Goods (tovar)
1296954	G	Goods (tovar)
1296955	G	Goods (tovar)
1296956	G	Goods (tovar)
1296957	G	Goods (tovar)
1296958	G	Goods (tovar)
1296959	G	Goods (tovar)
1296960	G	Goods (tovar)
1296961	G	Goods (tovar)
1296962	G	Goods (tovar)
1296963	G	Goods (tovar)
1296964	G	Goods (tovar)
1296965	G	Goods (tovar)
1296966	G	Goods (tovar)
1296967	G	Goods (tovar)
1296968	G	Goods (tovar)
1297952	G	Goods (tovar)
1297953	G	Goods (tovar)
1297954	G	Goods (tovar)
1297955	G	Goods (tovar)
1297957	G	Goods (tovar)
1297958	G	Goods (tovar)
1297962	G	Goods (tovar)
1297964	G	Goods (tovar)
1299972	G	Goods (tovar)
1300148	G	Goods (tovar)
1350992	G	Goods (tovar)
1367468	G	Goods (tovar)
1367476	G	Goods (tovar)
1376014	G	Goods (tovar)
1376128	G	Goods (tovar)
1376129	G	Goods (tovar)
1376150	M	Material (material)
1376151	M	Material (material)
1376152	M	Material (material)
1376154	M	Material (material)
1376159	M	Material (material)
1376164	M	Material (material)
1376305	G	Goods (tovar)
1376306	G	Goods (tovar)
1376316	G	Goods (tovar)
1376343	G	Goods (tovar)
1376403	G	Goods (tovar)
1376513	G	Goods (tovar)
1376964	G	Goods (tovar)
1376970	G	Goods (tovar)
1377350	G	Goods (tovar)
1377365	G	Goods (tovar)
1377442	G	Goods (tovar)
1377462	G	Goods (tovar)
1377464	G	Goods (tovar)
1377797	G	Goods (tovar)
1382265	E	Equipment (asbob-uskuna)
1396520	G	Goods (tovar)
1402389	G	Goods (tovar)
1403884	G	Goods (tovar)
1405627	G	Goods (tovar)
1406570	G	Goods (tovar)
1437149	G	Goods (tovar)
1442349	G	Goods (tovar)
1443599	G	Goods (tovar)
1443907	G	Goods (tovar)
1501824	G	Goods (tovar)
1508857	G	Goods (tovar)
1508859	G	Goods (tovar)
1509444	G	Goods (tovar)
1515576	M	Material (material)
1515577	M	Material (material)
1515578	P	Product (tayyor mahsulot)
1526907	G	Goods (tovar)
1528296	G	Goods (tovar)
1528297	G	Goods (tovar)
1528298	G	Goods (tovar)
1528299	G	Goods (tovar)
1528300	G	Goods (tovar)
1567680	G	Goods (tovar)
1575658	G	Goods (tovar)
1596603	G	Goods (tovar)
1615835	G	Goods (tovar)
1695116	G	Goods (tovar)
1704715	G	Goods (tovar)
1704716	G	Goods (tovar)
1704717	G	Goods (tovar)
1704718	G	Goods (tovar)
1704719	G	Goods (tovar)
1704720	G	Goods (tovar)
1704721	G	Goods (tovar)
1704722	G	Goods (tovar)
1704723	G	Goods (tovar)
1704724	G	Goods (tovar)
1704725	G	Goods (tovar)
1704726	G	Goods (tovar)
1704727	G	Goods (tovar)
1704728	G	Goods (tovar)
1704729	G	Goods (tovar)
1704730	G	Goods (tovar)
1704731	G	Goods (tovar)
1704732	G	Goods (tovar)
1705246	G	Goods (tovar)
1706208	G	Goods (tovar)
1710370	G	Goods (tovar)
1713393	G	Goods (tovar)
1713393	M	Material (material)
1723354	G	Goods (tovar)
1724900	G	Goods (tovar)
1728743	G	Goods (tovar)
1729001	E	Equipment (asbob-uskuna)
1731251	G	Goods (tovar)
1731258	G	Goods (tovar)
1737108	M	Material (material)
1752622	G	Goods (tovar)
1767441	G	Goods (tovar)
1778903	G	Goods (tovar)
1781371	E	Equipment (asbob-uskuna)
1781500	G	Goods (tovar)
1781508	G	Goods (tovar)
1781511	G	Goods (tovar)
1781519	G	Goods (tovar)
1781520	G	Goods (tovar)
1781524	G	Goods (tovar)
1781548	G	Goods (tovar)
1781554	G	Goods (tovar)
1781555	G	Goods (tovar)
1869564	G	Goods (tovar)
1928392	G	Goods (tovar)
1929053	G	Goods (tovar)
1929055	G	Goods (tovar)
1936213	G	Goods (tovar)
1936214	G	Goods (tovar)
1970147	P	Product (tayyor mahsulot)
1970148	P	Product (tayyor mahsulot)
1970252	P	Product (tayyor mahsulot)
1970253	P	Product (tayyor mahsulot)
1970254	P	Product (tayyor mahsulot)
1970255	P	Product (tayyor mahsulot)
1970256	P	Product (tayyor mahsulot)
1970257	P	Product (tayyor mahsulot)
1970258	P	Product (tayyor mahsulot)
1970259	P	Product (tayyor mahsulot)
1970260	P	Product (tayyor mahsulot)
1970261	P	Product (tayyor mahsulot)
1970262	P	Product (tayyor mahsulot)
1975072	G	Goods (tovar)
1975073	G	Goods (tovar)
1975471	G	Goods (tovar)
2042208	G	Goods (tovar)
2046238	G	Goods (tovar)
2055363	G	Goods (tovar)
2055364	G	Goods (tovar)
2055411	G	Goods (tovar)
2059126	G	Goods (tovar)
2059126	M	Material (material)
2059126	P	Product (tayyor mahsulot)
2059126	S	Service (xizmat)
2062847	G	Goods (tovar)
2068805	G	Goods (tovar)
2129392	G	Goods (tovar)
2129394	G	Goods (tovar)
2129451	G	Goods (tovar)
2129452	G	Goods (tovar)
2129453	G	Goods (tovar)
2129454	G	Goods (tovar)
2130762	G	Goods (tovar)
2199912	G	Goods (tovar)
2211294	G	Goods (tovar)
2233363	G	Goods (tovar)
2233369	G	Goods (tovar)
2233370	G	Goods (tovar)
2248751	G	Goods (tovar)
2271570	E	Equipment (asbob-uskuna)
2271571	E	Equipment (asbob-uskuna)
2293534	G	Goods (tovar)
2355311	G	Goods (tovar)
2355312	G	Goods (tovar)
2355313	G	Goods (tovar)
2355314	G	Goods (tovar)
2355315	G	Goods (tovar)
2355316	G	Goods (tovar)
2355317	G	Goods (tovar)
2355318	G	Goods (tovar)
2355319	G	Goods (tovar)
2355320	G	Goods (tovar)
2398563	G	Goods (tovar)
2398564	G	Goods (tovar)
2398565	G	Goods (tovar)
2398566	G	Goods (tovar)
2398567	G	Goods (tovar)
2398568	G	Goods (tovar)
2398569	G	Goods (tovar)
2398570	G	Goods (tovar)
2398571	G	Goods (tovar)
2398572	G	Goods (tovar)
2398573	G	Goods (tovar)
2398574	G	Goods (tovar)
2398575	G	Goods (tovar)
2398576	G	Goods (tovar)
2398577	G	Goods (tovar)
2398578	G	Goods (tovar)
2398579	G	Goods (tovar)
2398580	G	Goods (tovar)
2398581	G	Goods (tovar)
2398582	G	Goods (tovar)
2398583	G	Goods (tovar)
2398584	G	Goods (tovar)
2403425	G	Goods (tovar)
2452964	G	Goods (tovar)
2453600	G	Goods (tovar)
2453728	G	Goods (tovar)
2453747	G	Goods (tovar)
2521514	G	Goods (tovar)
2527553	G	Goods (tovar)
2527562	G	Goods (tovar)
2568438	G	Goods (tovar)
2568438	M	Material (material)
2593174	G	Goods (tovar)
2593337	G	Goods (tovar)
2593390	G	Goods (tovar)
2789351	M	Material (material)
2789424	M	Material (material)
2789425	M	Material (material)
2789428	M	Material (material)
2789429	M	Material (material)
2789431	M	Material (material)
2789461	M	Material (material)
2789464	M	Material (material)
2789544	M	Material (material)
2789545	M	Material (material)
2789577	M	Material (material)
2789618	M	Material (material)
2890481	G	Goods (tovar)
2890481	P	Product (tayyor mahsulot)
2894391	G	Goods (tovar)
2894392	G	Goods (tovar)
2894396	G	Goods (tovar)
2906498	G	Goods (tovar)
2906499	P	Product (tayyor mahsulot)
2906500	G	Goods (tovar)
2906503	G	Goods (tovar)
2906506	G	Goods (tovar)
2906507	G	Goods (tovar)
2906508	G	Goods (tovar)
2906509	G	Goods (tovar)
2906510	G	Goods (tovar)
2906511	G	Goods (tovar)
2906515	G	Goods (tovar)
2906524	G	Goods (tovar)
2906525	G	Goods (tovar)
2906526	G	Goods (tovar)
2906528	G	Goods (tovar)
2906544	G	Goods (tovar)
2906551	G	Goods (tovar)
2906569	G	Goods (tovar)
2906591	G	Goods (tovar)
2906592	G	Goods (tovar)
2906593	G	Goods (tovar)
2906594	G	Goods (tovar)
2906595	G	Goods (tovar)
2906596	G	Goods (tovar)
2906597	G	Goods (tovar)
2906598	G	Goods (tovar)
2906599	G	Goods (tovar)
2906600	G	Goods (tovar)
2906601	G	Goods (tovar)
2906602	G	Goods (tovar)
2906603	G	Goods (tovar)
2906604	G	Goods (tovar)
2906605	G	Goods (tovar)
2906606	G	Goods (tovar)
2906607	G	Goods (tovar)
2906608	G	Goods (tovar)
2906609	G	Goods (tovar)
2906610	G	Goods (tovar)
2906611	G	Goods (tovar)
2906612	G	Goods (tovar)
2906613	G	Goods (tovar)
2906614	G	Goods (tovar)
2906615	G	Goods (tovar)
2906616	G	Goods (tovar)
2906617	G	Goods (tovar)
2906618	G	Goods (tovar)
2906716	G	Goods (tovar)
2906717	G	Goods (tovar)
2906718	G	Goods (tovar)
2992064	M	Material (material)
2992072	M	Material (material)
2992084	M	Material (material)
3057661	G	Goods (tovar)
3062971	G	Goods (tovar)
3062971	P	Product (tayyor mahsulot)
3069998	M	Material (material)
3070021	M	Material (material)
3070024	M	Material (material)
3070036	G	Goods (tovar)
3070122	G	Goods (tovar)
3070123	G	Goods (tovar)
3074487	G	Goods (tovar)
3078327	G	Goods (tovar)
3078329	G	Goods (tovar)
3154881	G	Goods (tovar)
3154881	M	Material (material)
3154881	P	Product (tayyor mahsulot)
3158654	G	Goods (tovar)
3177513	G	Goods (tovar)
3177513	P	Product (tayyor mahsulot)
3252815	G	Goods (tovar)
3252818	G	Goods (tovar)
3259343	G	Goods (tovar)
3272507	G	Goods (tovar)
3273557	G	Goods (tovar)
3306408	P	Product (tayyor mahsulot)
3306419	P	Product (tayyor mahsulot)
3306420	P	Product (tayyor mahsulot)
3306421	P	Product (tayyor mahsulot)
3382317	P	Product (tayyor mahsulot)
3382328	P	Product (tayyor mahsulot)
3382329	P	Product (tayyor mahsulot)
3382337	G	Goods (tovar)
3407442	G	Goods (tovar)
3503215	G	Goods (tovar)
3503225	G	Goods (tovar)
3503231	G	Goods (tovar)
3528805	P	Product (tayyor mahsulot)
3552430	G	Goods (tovar)
3670219	G	Goods (tovar)
3694398	G	Goods (tovar)
3700558	G	Goods (tovar)
3810624	G	Goods (tovar)
3810635	G	Goods (tovar)
3850129	P	Product (tayyor mahsulot)
3976862	G	Goods (tovar)
3982238	M	Material (material)
3982319	M	Material (material)
3982321	G	Goods (tovar)
3982321	P	Product (tayyor mahsulot)
3982324	G	Goods (tovar)
3982324	M	Material (material)
3982324	P	Product (tayyor mahsulot)
3986112	M	Material (material)
4097949	G	Goods (tovar)
4131704	G	Goods (tovar)
4322347	G	Goods (tovar)
4322350	G	Goods (tovar)
4438537	P	Product (tayyor mahsulot)
4438975	G	Goods (tovar)
4439705	E	Equipment (asbob-uskuna)
4439992	P	Product (tayyor mahsulot)
4439997	E	Equipment (asbob-uskuna)
4439998	P	Product (tayyor mahsulot)
4441190	G	Goods (tovar)
4442895	G	Goods (tovar)
4496024	G	Goods (tovar)
4519922	G	Goods (tovar)
4529596	G	Goods (tovar)
4569872	G	Goods (tovar)
4569876	G	Goods (tovar)
4572802	G	Goods (tovar)
4608988	G	Goods (tovar)
4635879	G	Goods (tovar)
4648387	G	Goods (tovar)
4670859	G	Goods (tovar)
4709633	G	Goods (tovar)
4709634	G	Goods (tovar)
4709635	G	Goods (tovar)
4709636	G	Goods (tovar)
4709637	G	Goods (tovar)
4709638	G	Goods (tovar)
4709639	G	Goods (tovar)
4709640	G	Goods (tovar)
4709641	G	Goods (tovar)
4709642	G	Goods (tovar)
4709643	G	Goods (tovar)
4709644	G	Goods (tovar)
4709645	G	Goods (tovar)
4709646	G	Goods (tovar)
4709647	G	Goods (tovar)
4709648	G	Goods (tovar)
4709649	G	Goods (tovar)
4709650	G	Goods (tovar)
4709651	G	Goods (tovar)
4709652	G	Goods (tovar)
4709653	G	Goods (tovar)
4709654	G	Goods (tovar)
4709655	G	Goods (tovar)
4709656	G	Goods (tovar)
4709657	G	Goods (tovar)
4709658	G	Goods (tovar)
4709659	G	Goods (tovar)
4709660	G	Goods (tovar)
4709661	G	Goods (tovar)
4709662	G	Goods (tovar)
4709663	G	Goods (tovar)
4709664	G	Goods (tovar)
4731878	G	Goods (tovar)
4753929	G	Goods (tovar)
4794131	G	Goods (tovar)
4841010	P	Product (tayyor mahsulot)
4916483	G	Goods (tovar)
4916484	G	Goods (tovar)
4927870	G	Goods (tovar)
4934472	G	Goods (tovar)
4952841	G	Goods (tovar)
4953117	G	Goods (tovar)
4993427	G	Goods (tovar)
4993428	G	Goods (tovar)
4999071	G	Goods (tovar)
4999073	G	Goods (tovar)
\.


--
-- TOC entry 5025 (class 0 OID 24785)
-- Dependencies: 222
-- Data for Name: product_sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_sector (product_id, sector_code) FROM stdin;
7982	654321
7986	654321
35138	1
205289	001
226882	654321
471233	03
652737	dod
652738	dod
652739	dod
652740	dod
652741	dod
652742	dod
652744	dod
652745	dod
652746	dod
652747	dod
652748	dod
652749	dod
652750	dod
652751	dod
863264	dod
989498	001545
994045	dod
1132791	dod
1132792	dod
1224141	dod
1242959	123
1437149	01 Hochland
1442349	Набеглави
1501824	Набеглави
1508857	Набеглави
1508859	Набеглави
1526907	01 Hochland
1710370	312
1713393	312
1767441	312
1778903	01 Hochland
1781371	312
1781371	43
1928392	dod
1929053	dod
1929055	dod
1970147	850
1970148	850
1970252	850
1970253	850
1970254	850
1970255	850
1970256	850
1970257	850
1970258	850
1970259	850
1970260	850
1970261	850
1970262	850
1975072	dod
1975073	dod
1975471	dod
2046238	123
2055363	123
2055364	123
2055411	123
2062847	dod
2068805	123
2068807	001122
2130762	707
2211294	1303
2233363	0003
2248751	010203
2568438	00000000000000000001
2593174	001
2593337	001
2593390	001
3062971	124
3074487	124
3306408	B000001
3306419	B000001
3306420	B000001
3306421	B000001
3382317	B000001
3382328	B000001
3382329	B000001
3382337	B000001
3407442	dod
3528805	654321
3700558	B000001
3850129	654321
4097949	124
4131704	124
4438537	654321
4438975	Товары
4439705	dod
4439992	654321
4439997	654321
4439998	001122
4441190	001122
4457414	001122
4457691	001122
4519922	001122
4529596	001122
4569872	11
4569876	11
4572802	11
4608988	B000001
4635879	11
4927870	124
4934472	654321
4952841	dod
4953117	dod
4993428	124
\.


--
-- TOC entry 5022 (class 0 OID 24770)
-- Dependencies: 219
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, code, name, short_name, weight_netto, weight_brutto, litr, box_type_code, box_quant, producer_code, measure_code, order_no, article_code, barcodes, gtin, ikpu, tnved, marking_group_code) FROM stdin;
572	8050961	(Лента) JACOBS 3в1 "Латте" 13г*10	(Лента) JACOBS 3в1 "Латте" 13г*10	0.13	0.13	\N	box	24	\N	\N	3	\N	30681	\N	\N	\N	\N
7982	100	Coca-cola 0.5l	Coca-cola 0.5l	0.5	0.65	0.5	block	12	\N	kilogram2	\N	100	12121212	\N	\N	\N	\N
7986	101	BA Test Timur	BA Test Timur	0.5	0.65	0.5	\N	\N	\N	10001001	\N	100	ads	\N	\N	\N	\N
35138	MR-8011	Delice 2kg Dark ice	Delice 2kg Dark	2	1	\N	box	2	l3453452	109	1	12345	56260261616	\N	\N	\N	\N
59907	\N	Нераф масло	Нераф масло	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
59936	\N	non	non	\N	\N	\N	\N	\N	\N	109	\N	\N	1019560208015	\N	\N	\N	\N
59940	0012	ююююююю	Рекламное оборудование (abbos)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
205289	10	Coca	Coca-cola l	0.5	0.65	0.5	block	12	\N	kilogram2	\N	100	10001001	\N	\N	\N	\N
211958	MR-8002	Роллтон	Роллтон	\N	15	\N	block	1	\N	\N	1	\N	123456	\N	\N	\N	\N
226882	102	BA Test Timur 123	BA Test Timur 123	0.5	0.65	0.5	\N	\N	\N	10001001	\N	100	\N	\N	\N	\N	\N
471233	20058	Кондицианеры	Кондицианеры	2	2	\N	box	1	\N	109	3	\N	89456125	\N	\N	\N	\N
645058	\N	shakar	shakar	\N	\N	\N	\N	\N	649982	\N	\N	\N	\N	\N	\N	\N	\N
652737	00207001001004004	New  Sprite 1.5L 555	New  Sprite 1.5L 555	0.5	1	1.5	block	0.033	\N	kilo6	2	\N	8899	11111111111111	IKPI_CODE-001	\N	\N
652738	s2	New  Sprite 1L	New  Sprite 1L	1	1	1	block	8	\N	kilo3	2	\N	5449000050939|5449000050940	\N	1236547896325470	\N	\N
652739	sprite_can	New  Sprite 0.5L	New  Sprite 0.5L	0.5	0.5	0.5	block	12	\N	kilo3	3	\N	\N	\N	\N	\N	\N
652740	f2	New  Fanta 1L	New  Fanta 1L	1	1	1	block	8	\N	109	4	\N	5449000050941|5449000050942	\N	\N	\N	\N
652741	f,3	New  Fanta 1.5L	New  Fanta 1.5L	1.5	1.5	1.5	block	6	\N	109	5	\N	\N	\N	\N	\N	\N
652742	fanta_can	New  Fanta 0.5L	New  Fanta 0.5L	0.5	0.5	0.5	block	12	\N	109	6	\N	\N	\N	\N	\N	\N
652743	cc3	New Coca-Cola 1.5L	New Coca-Cola 1.5L	1.5	1.5	1.5	block	6	\N	109	1	\N	\N	\N	02202002005010003	\N	\N
652744	cc2	New  Coca-Cola 1L	New  Coca-Cola 1L	1	1.1	1	block	8	\N	109	8	\N	\N	\N	\N	\N	\N
652745	cola_can	New  Coca-Cola 0.5L	New  Coca-Cola 0.5L	0.5	0.5	0.5	block	12	\N	109	9	\N	\N	\N	\N	\N	\N
652746	tt9	Tip Top Ягодный Микс	Tip Top Ягодный Микс	1	1	1	box	12	\N	109	10001	\N	\N	\N	\N	\N	\N
652747	tt8	Tip Top Яблоко	Tip Top Яблоко	1	1	1	box	12	\N	109	10002	\N	\N	\N	\N	\N	\N
652748	tt7	Tip Top Томат	Tip Top Томат	1	1	1	box	12	\N	109	1	\N	\N	\N	\N	\N	\N
652749	tt6	Tip Top Персик	Tip Top Персик	1	1	1	box	12	\N	109	10004	\N	\N	\N	\N	\N	\N
652750	tt5	Tip Top Мултифрукт	Tip Top Мултифрукт	\N	\N	\N	box	12	\N	109	10005	\N	\N	\N	\N	\N	\N
652751	tt4	Tip Top Гранат	Tip Top Гранат	1	1	1	box	12	\N	kilogram2	10006	\N	\N	\N	\N	\N	\N
690623	123456830	NEW Детская смесь Малыш овсяной 350гр*9,	NEW Детская смесь Малыш овсяной 350гр*9,	0.35	\N	\N	box	9	N1	109	\N	\N	\N	\N	\N	\N	\N
754010	12222	Рекламное оборудование	Рекламное оборудование	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
773958	69	runner's guide	001-Мой товар	\N	\N	10	box	10	\N	\N	69	\N	12300000123|eeerrreee|eeerrreerr|eerrree	12345678912345	02203001001084020	\N	\N
863264	432ew	Stellaj	Stellaj	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
920874	tryrtk	BMW X7	BMW X7	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
989498	95076734-B	95076734-B	95076734-B	\N	\N	\N	block	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
994045	95076734-GM	95076734-GM	95076734-GM	\N	\N	\N	box	25	\N	\N	\N	\N	\N	\N	\N	\N	\N
1128578	\N	ТУЗ	ТУЗ	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
1132100	hfgkmgh	bmw m5	bmw m5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1132102	ytruj	bmw i4	bmw i4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1132791	dffghdhj	IPhone 14 Pro 256GB Black	IPhone 14 Pro 256GB Black	\N	\N	\N	\N	\N	\N	396	\N	\N	\N	\N	\N	\N	\N
1132792	fdsf	Samsung A135 64GB Black (A13)	Samsung A135 64GB Black (A13)	\N	\N	\N	\N	\N	\N	396	\N	\N	\N	\N	\N	\N	\N
1187343	\N	оыоваы	ываы	\N	\N	\N	box	2	\N	109	1	\N	\N	\N	\N	\N	\N
1224141	5edrty	ACTION	ACTION	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1242951	КР-0002	КАРОПКА KD-290	КАРОПКА KD-290	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
1242959	1242959	Тест номенклатура 1	Тест номенклатура 1	\N	\N	\N	\N	\N	\N	250	\N	\N	\N	\N	\N	\N	\N
1252842	ЗП-0024	Сырье каропка  универсал	Сырье каропка  универсал	\N	\N	\N	\N	25	\N	kilogram2	\N	\N	22254555252	\N	\N	\N	\N
1294277	4785988	L-лизина эсцинат амп 1мг/мл 5мл №10	L-лизина эсцинат амп 1мг/мл 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294278	4785989	L-тироксин 100 №50 Берлин Хеми	L-тироксин 100 №50 Берлин Хеми	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294279	4785990	L-тироксин 100 №50 Фармак	L-тироксин 100 №50 Фармак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294280	4785991	L-тироксин 50 №50 Берлин Хеми !!	L-тироксин 50 №50 Берлин Хеми !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294281	4785992	L-Цет таб.5мг№10	L-Цет таб.5мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294282	4785993	L-Эргон р-р д/инф 4,2% 100мл	L-Эргон р-р д/инф 4,2% 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294283	4785994	Абазит 250мг капс №6	Абазит 250мг капс №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294284	4785995	Абинекс таб.0.5мг№8 Каберголин	Абинекс таб.0.5мг№8 Каберголин	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294285	4785996	Авифер р-р д/ин. 20мг/мл 5мл №5	Авифер р-р д/ин. 20мг/мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294286	4785997	Автория таб. 25мг №30	Автория таб. 25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294287	4785998	Адаптол кап. 300 мг. №20	Адаптол кап. 300 мг. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294288	4785999	Адаптол таб. 500 мг. №20	Адаптол таб. 500 мг. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294289	4786000	Адвантан крем  0,1% 15г	Адвантан крем  0,1% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294290	4786001	Адвантан мазь 0,1% 15г	Адвантан мазь 0,1% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294291	4786002	Аделфан SD таб. №100	Аделфан SD таб. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294399	4786110	Амлесса 4мг/5мг №30	Амлесса 4мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294292	4786003	Аденит Форте лиоф. пор. д/ин. 2мл №3 с раств.	Аденит Форте лиоф. пор. д/ин. 2мл №3 с раств.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294293	4786004	Адеп 30мг таб №30	Адеп 30мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294294	4786005	Аджигра таб.100мг№4 Силденафил	Аджигра таб.100мг№4 Силденафил	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294295	4786006	Аджисепт паст апельсин №24	Аджисепт паст апельсин №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294296	4786007	Аджисепт паст вишня № 24	Аджисепт паст вишня № 24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294297	4786008	Аджисепт паст вкусом банан №24	Аджисепт паст вкусом банан №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294298	4786009	Аджисепт паст клубника №24	Аджисепт паст клубника №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294299	4786010	Аджисепт паст Лимон №24	Аджисепт паст Лимон №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294300	4786011	Аджисепт паст мёд лимона №24	Аджисепт паст мёд лимона №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294301	4786012	Аджисепт пастилки  классич №24	Аджисепт пастилки  классич №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294302	4786013	Аджисепт пастилки апельсин №24	Аджисепт пастилки апельсин №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294303	4786014	Аджисепт пастилки ментол и эвкалипт №24	Аджисепт пастилки ментол и эвкалипт №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294304	4786015	Аджисепт пастилки мёд и лимон №24	Аджисепт пастилки мёд и лимон №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294305	4786016	Аджисепт со вкусом малина паст №24	Аджисепт со вкусом малина паст №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294306	4786017	Аджифер 5мл №5 AGIO	Аджифер 5мл №5 AGIO	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294307	4786018	Адипин таб. 10мг №30	Адипин таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294308	4786019	Адипин таб. 5мг №30	Адипин таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294309	4786020	Адреналин 1мг/1мл амп, №5	Адреналин 1мг/1мл амп, №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294310	4786021	Азилаб сусп 15мл 100мг/5мл ЖМП	Азилаб сусп 15мл 100мг/5мл ЖМП	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294311	4786022	Азимак капс 250мг №6	Азимак капс 250мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294312	4786023	Азимак капс. 500мг №3	Азимак капс. 500мг №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294313	4786024	Азимак-MR капс. 250 №6	Азимак-MR капс. 250 №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294314	4786025	Азимак-MR капс. 500 №3	Азимак-MR капс. 500 №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294315	4786026	Азимакс 200мг 5мл 15мл сусп	Азимакс 200мг 5мл 15мл сусп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294316	4786027	Азимакс 200мг 5мл 30мл сусп	Азимакс 200мг 5мл 30мл сусп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294317	4786028	Азитоз 500мг таб №3	Азитоз 500мг таб №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294318	4786029	Азитромицин 200мг/5мл сусп 30мл	Азитромицин 200мг/5мл сусп 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294319	4786030	Азитромицин 250мг таб №6	Азитромицин 250мг таб №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294320	4786031	Азитромицин 500мг таб №3	Азитромицин 500мг таб №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294321	4786032	Азитромицин 500мг таб №3 Индия (Азедцин)	Азитромицин 500мг таб №3 Индия (Азедцин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294322	4786033	Айкорол гл. капли 4%  10мл №1	Айкорол гл. капли 4%  10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294323	4786034	Айфлокс 0,3% 5мл гл капли	Айфлокс 0,3% 5мл гл капли	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294324	4786035	Айфлокс ДХ глазной 10мл №1	Айфлокс ДХ глазной 10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294325	4786036	Акацин 0,1  мг/2мл №1	Акацин 0,1  мг/2мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294326	4786037	Аква Марис Беби спрей наз. для детей 150мл	Аква Марис Беби спрей наз. для детей 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294327	4786038	Аква Марис Беби спрей наз. для детей 50мл	Аква Марис Беби спрей наз. для детей 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294328	4786039	Аква Марис классик спрей наз. доз 30мл	Аква Марис классик спрей наз. доз 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294329	4786040	Аква Марис Норм спрей назальный 50мл	Аква Марис Норм спрей назальный 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294330	4786041	Аква Марис Экстрасильный спрей назальный 150мл	Аква Марис Экстрасильный спрей назальный 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294331	4786042	Аквадетрим капли 10мл !!	Аквадетрим капли 10мл !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294332	4786043	Аквадетрим МР капли 10мл	Аквадетрим МР капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294333	4786044	Аквалор Беби (мягкий душ) 150мл	Аквалор Беби (мягкий душ) 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294334	4786045	Акнефаст р-р 10мг/мл+8мг/мл 20мл	Акнефаст р-р 10мг/мл+8мг/мл 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294335	4786046	Акридерм ГК крем 15г	Акридерм ГК крем 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294336	4786047	Акридерм крем 0,05% 15г	Акридерм крем 0,05% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294337	4786048	Акридерм СК мазь 15г	Акридерм СК мазь 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294338	4786049	Акридоферон р-р для 125мг/мл 2мл №5	Акридоферон р-р для 125мг/мл 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294339	4786050	Аксен-Форте таб.550мг№10	Аксен-Форте таб.550мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294340	4786051	Актив мен капс.500мг№60	Актив мен капс.500мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294341	4786052	Активированный Кальций 330мл	Активированный Кальций 330мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294342	4786053	Активированный Кальций с магний 330мл	Активированный Кальций с магний 330мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294343	4786054	Активированный Кальций со вкусом Банан 330мл	Активированный Кальций со вкусом Банан 330мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294344	4786055	Активированный Кальций со вкусом Клубника 330мл	Активированный Кальций со вкусом Клубника 330мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294345	4786056	Актиос таб №80	Актиос таб №80	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294346	4786057	Актовегин 10мл амп №5	Актовегин 10мл амп №5	\N	\N	\N	\N	\N	\N	109	\N	\N	98498498	\N	\N	\N	\N
1294347	4786058	Актовегин амп. 2мл №5	Актовегин амп. 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294348	4786059	Актовегин амп.5мл№5	Актовегин амп.5мл№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294349	4786060	Ала-диабет капс №30!!!	Ала-диабет капс №30!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294350	4786061	Албадол 400пор приг сусп №10	Албадол 400пор приг сусп №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294351	4786062	Албезол 200 таб №6 Нобел	Албезол 200 таб №6 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294352	4786063	Албезол 400 таб №3 Нобел	Албезол 400 таб №3 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294353	4786064	Албезол 400 таб №6 №6 Нобел	Албезол 400 таб №6 №6 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294354	4786065	Алдобел 100мг таб №28	Алдобел 100мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294355	4786066	Алдобел 25мг таб №28	Алдобел 25мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294356	4786067	Алдобел 50мг таб №28	Алдобел 50мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294357	4786068	Алендра таб 70мг №4	Алендра таб 70мг №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294358	4786069	Алер-G таб. 10мг № 20	Алер-G таб. 10мг № 20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294359	4786070	Аллапинин таб.0.025мг№30 Радикс	Аллапинин таб.0.025мг№30 Радикс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294360	4786071	Аллервэй Экспресс таб. 5мг №10	Аллервэй Экспресс таб. 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294361	4786072	Аллохол таб. №10	Аллохол таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294362	4786073	Аллохол таб. №50	Аллохол таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294363	4786074	Аллтромбосепин капс. 100мг №100	Аллтромбосепин капс. 100мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294364	4786075	АллФерон амп. 250мг/2мл №5	АллФерон амп. 250мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294365	4786076	Алмиба р-р 1г/5мл №5	Алмиба р-р 1г/5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294366	4786077	Алмиба р-р 400мг 120мл фл.	Алмиба р-р 400мг 120мл фл.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294367	4786078	Алотендин, 10 мг/5 мг, таб. №30	Алотендин, 10 мг/5 мг, таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294368	4786079	Алоэ экстракт 1мл №10	Алоэ экстракт 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294369	4786080	Алсата-10 №10	Алсата-10 №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294370	4786081	Алтейка сироп 100мл	Алтейка сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294371	4786082	Алтея сироп 125г	Алтея сироп 125г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294372	4786083	Алтикам лиоф.иньекций 20мг флакон №3	Алтикам лиоф.иньекций 20мг флакон №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294373	4786084	Алфагин сироп 120мл	Алфагин сироп 120мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294374	4786085	Альбендазол жев. таб. 400 мг №10	Альбендазол жев. таб. 400 мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294375	4786086	Альцетро таб. 5мг №20	Альцетро таб. 5мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294376	4786087	Амарил 2мг таб. №30	Амарил 2мг таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294377	4786088	Амарил 3мг таб. №30	Амарил 3мг таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294378	4786089	Амарил 4мг таб. №30	Амарил 4мг таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294379	4786090	Амбробене р-р  15мг 2мл №5	Амбробене р-р  15мг 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294380	4786091	Амбробене таб. 30мг №10 МР	Амбробене таб. 30мг №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294381	4786092	Амброксол  таб 0,03г №20 Озон ООО !!	Амброксол  таб 0,03г №20 Озон ООО !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294382	4786093	Амброксол 30мг таб №20	Амброксол 30мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294383	4786094	Амброксол SP 30мг таб №20	Амброксол SP 30мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294384	4786095	Амброксол р-р DF 15мг/2мл №5	Амброксол р-р DF 15мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294385	4786096	Амброксол р-р МР 15мг/2мл №5 МР	Амброксол р-р МР 15мг/2мл №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294386	4786097	Амброксол сироп 100мл (Амбробен) МР	Амброксол сироп 100мл (Амбробен) МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294387	4786098	Амброксол-Аджио сироп 30мг/5мл100мл№1	Амброксол-Аджио сироп 30мг/5мл100мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294388	4786099	Амброксол-ЖФФ сироп 15мг/5мл 100мл	Амброксол-ЖФФ сироп 15мг/5мл 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294389	4786100	Амизон таб. 0,125г №10	Амизон таб. 0,125г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294390	4786101	Амизон таб. 0,25г №20	Амизон таб. 0,25г №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294391	4786102	Амикацин пор. д/ин 500мг №1 Русс	Амикацин пор. д/ин 500мг №1 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294392	4786103	Амилаб р-р для инъекций 500 мг/2мл	Амилаб р-р для инъекций 500 мг/2мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294393	4786104	Аминакапронавая к-та 5% 100мл	Аминакапронавая к-та 5% 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294394	4786105	Аминалон таб. 250мг №50	Аминалон таб. 250мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294395	4786106	Амиодорон таб 0,2г №30 Русс	Амиодорон таб 0,2г №30 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294396	4786107	Амитриптилин таб. 10мг №50	Амитриптилин таб. 10мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294397	4786108	Амитриптилин таб. 25мг №50	Амитриптилин таб. 25мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294398	4786109	Амлесса 4мг/10мг №30	Амлесса 4мг/10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294400	4786111	Амлесса 8мг/10мг №30	Амлесса 8мг/10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294401	4786112	Амлесса 8мг/5мг №30	Амлесса 8мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294402	4786113	Амлодин, 10 мг, таб. №30	Амлодин, 10 мг, таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294403	4786114	Амлодин, 5 мг, таб. №30	Амлодин, 5 мг, таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294404	4786115	Амлодипин таб. 10мг №30 Русс	Амлодипин таб. 10мг №30 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294405	4786116	Амлодипин таб. 5мг №30 Русс	Амлодипин таб. 5мг №30 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294406	4786117	Амлокс таб. 5мг №30	Амлокс таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294407	4786118	Амлонон таб. 5мг №30	Амлонон таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294408	4786119	Амлорус таб. 2,5мг №30 Русс	Амлорус таб. 2,5мг №30 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294409	4786120	Аммиак р-р 10% 10мл	Аммиак р-р 10% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294410	4786121	Амоксациклин 125мг/5мл сусп 100мл	Амоксациклин 125мг/5мл сусп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294411	4786122	Амоксациклин 125мг/5мл сусп 40мл МР	Амоксациклин 125мг/5мл сусп 40мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294412	4786123	Амоксациллин 250мг таб №10	Амоксациллин 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294413	4786124	Амоксациллин 250мг таб №10 М Р	Амоксациллин 250мг таб №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294414	4786125	Амоксациллин 500мг таб  №10	Амоксациллин 500мг таб  №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294415	4786126	Амоксациллин 500мг таб №10	Амоксациллин 500мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294416	4786127	Амоксациллин 500мг таб №10 М Р	Амоксациллин 500мг таб №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294417	4786128	Амоксациллин 500мг таб №20 Русс	Амоксациллин 500мг таб №20 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294418	4786129	Амоксациллин капс.250мг №10	Амоксациллин капс.250мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294419	4786130	Амоксациллин капс.500мг №10	Амоксациллин капс.500мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294420	4786131	Амоксиклав  156.25мг/5л.  (Камоксиклав)	Амоксиклав  156.25мг/5л.  (Камоксиклав)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294421	4786132	Амоксиклав 2х1000 №14	Амоксиклав 2х1000 №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294422	4786133	Амоксиклав 2х400/57мг/5мл. 70мл.	Амоксиклав 2х400/57мг/5мл. 70мл.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294423	4786134	Амоксиклав р-р 1,2г №5	Амоксиклав р-р 1,2г №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294424	4786135	Амоксил таб  №20	Амоксил таб  №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294425	4786136	Ампицилин 125мг/5мл сусп 100мл	Ампицилин 125мг/5мл сусп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294426	4786137	Ампицилин 250мг таб №10	Ампицилин 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294427	4786138	Ампициллин  500г таб №10	Ампициллин  500г таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294428	4786139	Ампициллин  500г таб №10 МР	Ампициллин  500г таб №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294429	4786140	Ампициллин 250мг капс №10	Ампициллин 250мг капс №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294430	4786141	Ампициллин нат соль 0,1г	Ампициллин нат соль 0,1г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294431	4786142	Ампициллин нат соль 0,1г Русс !!	Ампициллин нат соль 0,1г Русс !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294432	4786143	Ампициллин нат соль 0,5г	Ампициллин нат соль 0,5г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294433	4786144	Ампициллин нат соль 0,5г !!!	Ампициллин нат соль 0,5г !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294434	4786145	Ампициллин нат соль 0,5г МР	Ампициллин нат соль 0,5г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294435	4786146	Ампициллин пор. 0,5г фл	Ампициллин пор. 0,5г фл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294436	4786147	Ампициллин сульбактам 1,5г №1	Ампициллин сульбактам 1,5г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294437	4786148	Ампициллин-Белмед 250мг таб №10	Ампициллин-Белмед 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294438	4786149	Амприлан 10 мг №30	Амприлан 10 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294439	4786150	Амприлан 2,5мг №30	Амприлан 2,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294440	4786151	Амприлан 5мг №30	Амприлан 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294441	4786152	Амприлан HD 5МГ/25мг №30	Амприлан HD 5МГ/25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294442	4786153	Амприлан HL 2,5мг/12,5мг №30	Амприлан HL 2,5мг/12,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294443	4786154	Амра Форте таб. 4мг/1,25мг №30	Амра Форте таб. 4мг/1,25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294444	4786155	Амрадипин таб. 4мг/10мг №30	Амрадипин таб. 4мг/10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294445	4786156	Амрадипин таб. 8мг/10мг №30	Амрадипин таб. 8мг/10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294446	4786157	Амрадипин таб. 8мг/5мг №30	Амрадипин таб. 8мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294447	4786158	Анальгин  50% 2х10  !!	Анальгин  50% 2х10  !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294448	4786159	Анальгин 50% 2мл №5	Анальгин 50% 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294449	4786160	Анальгин амп.50%.2мл№10	Анальгин амп.50%.2мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294450	4786161	Анальдим  супп рект 100мг/10мг №10 Аналгин+Димедрол	Анальдим  супп рект 100мг/10мг №10 Аналгин+Димедрол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294451	4786162	Анальдим  супп рект 250мг/20мг №10 Аналгин+Димедрол	Анальдим  супп рект 250мг/20мг №10 Аналгин+Димедрол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294452	4786163	Анаприлин таб. 40мг №50	Анаприлин таб. 40мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294453	4786164	Анаферон взр таб. №20	Анаферон взр таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294454	4786165	Анаферон детский таб. №20	Анаферон детский таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294455	4786166	Ангал  ментол паст.  №24	Ангал  ментол паст.  №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294456	4786167	Ангигард р-р д/ин. 100мг/5мл №5	Ангигард р-р д/ин. 100мг/5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294457	4786168	Ангиннет Спрей 10мл	Ангиннет Спрей 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294458	4786169	Андипал  таб №10	Андипал  таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294459	4786170	Анестазол с/в №10	Анестазол с/в №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294460	4786171	Анестазол с/в №10 МР	Анестазол с/в №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294461	4786172	Анестезол супп.рект. №10	Анестезол супп.рект. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294462	4786173	Анзибел паст солодки №30	Анзибел паст солодки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294463	4786174	Анзибел таб №30 Апелсин Витамин С	Анзибел таб №30 Апелсин Витамин С	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294464	4786175	Анзибел таб №30 Классик	Анзибел таб №30 Классик	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294465	4786176	Анзибел таб №30 Лимон	Анзибел таб №30 Лимон	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294466	4786177	Анзибел таб №30 со вкусом Имбиря	Анзибел таб №30 со вкусом Имбиря	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294467	4786178	Анзибел таб.№30 для  Цинк Zn	Анзибел таб.№30 для  Цинк Zn	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294468	4786179	Анзибел таб.№30 Ментол	Анзибел таб.№30 Ментол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294469	4786180	Анзибел таб.№30 Мёд+Лимон	Анзибел таб.№30 Мёд+Лимон	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294470	4786181	Анзибел таб.№30 Солодка	Анзибел таб.№30 Солодка	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294471	4786182	Антигельминт таб №110 Беби	Антигельминт таб №110 Беби	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294472	4786183	Антигеморане мазь 15гр	Антигеморане мазь 15гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294473	4786184	Антигеморане свечи 2гр №10	Антигеморане свечи 2гр №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294474	4786185	Антигриппин таб №10	Антигриппин таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294475	4786186	Антигриппин таб. №20	Антигриппин таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294476	4786187	Антимигрен-Здоровье  таб 100мг №1	Антимигрен-Здоровье  таб 100мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294477	4786188	Антипедикулёзный Комплект  60мл №1	Антипедикулёзный Комплект  60мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294478	4786189	Антипедикулёзный Комплект 110мл №1	Антипедикулёзный Комплект 110мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294479	4786190	Антипедикулёзный Оддий 110мл №1	Антипедикулёзный Оддий 110мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294480	4786191	Антипедикулёзный Оддий 60мл №1	Антипедикулёзный Оддий 60мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294481	4786192	Антисептик  для рук 50мл	Антисептик  для рук 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294482	4786193	Антифлат таб. №50	Антифлат таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294483	4786194	Антраль таб. 0,1г №30	Антраль таб. 0,1г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294484	4786195	Антраль таб. 0,2г №30	Антраль таб. 0,2г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294485	4786196	Анузол-Фармаприм супп.рек. №10	Анузол-Фармаприм супп.рек. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294486	4786197	Апдил тотал таб. №10	Апдил тотал таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294487	4786198	Апдропс гл.кап.3мл№1	Апдропс гл.кап.3мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294488	4786199	Апилак  таб 10мг №10	Апилак  таб 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294489	4786200	Апкосул капс.№100	Апкосул капс.№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294490	4786201	Аптиприм сироп 240мг 5мл МР	Аптиприм сироп 240мг 5мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294491	4786202	Апфекто гл кап 0,3% 1,7мл №1	Апфекто гл кап 0,3% 1,7мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294492	4786203	Арбидол 100мг кап №10 (Арбетол) Малика Фарм	Арбидол 100мг кап №10 (Арбетол) Малика Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294493	4786204	Арбидол 100мг капс №20	Арбидол 100мг капс №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294494	4786205	Арбидол таб. 50мг №20 Для детей	Арбидол таб. 50мг №20 Для детей	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294495	4786206	Аргинап таб.№30	Аргинап таб.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294496	4786207	Арлеверт таб. 20мг/40мг №50	Арлеверт таб. 20мг/40мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294497	4786208	Артоксан 20мг с/в №5	Артоксан 20мг с/в №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294498	4786209	Артоксан гелъ 1% 45г	Артоксан гелъ 1% 45г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294499	4786210	Артоксан лиоф.пор 20мг №3	Артоксан лиоф.пор 20мг №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294500	4786211	Артоксан таб  20мг №10	Артоксан таб  20мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294501	4786212	Артрокол гель 2.5% 45г №1	Артрокол гель 2.5% 45г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294502	4786213	Артрокол р-р д/и амп.100мг/2мл №5	Артрокол р-р д/и амп.100мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294503	4786214	Артрокол супп. рект. 100 мг №10	Артрокол супп. рект. 100 мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294504	4786215	Асиброкс р-р для иньек 3мл №10	Асиброкс р-р для иньек 3мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294505	4786216	Асиброкс шипучи таб 200мг №20	Асиброкс шипучи таб 200мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294506	4786217	Асиброкс шипучи таб 600мг №12	Асиброкс шипучи таб 600мг №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294507	4786218	Асидопро капсула №10	Асидопро капсула №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294508	4786219	Аскарбинка Вита Гум №300 (Мармеладка)	Аскарбинка Вита Гум №300 (Мармеладка)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294509	4786220	Аскарбиновая к-та 5% 2мл №10	Аскарбиновая к-та 5% 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294510	4786221	Аскарбиновая к-та 5% 2мл №5 !!!	Аскарбиновая к-та 5% 2мл №5 !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294511	4786222	Аскожел капли 20мл	Аскожел капли 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294512	4786223	Аскорбинка 3,0г №250  Кант Смайлик	Аскорбинка 3,0г №250  Кант Смайлик	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294513	4786224	Аскорбиновая  Кант к-та 25мг №10	Аскорбиновая  Кант к-та 25мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294514	4786225	Аскорил сироп 100мл	Аскорил сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294515	4786226	Аскорутин таб №10	Аскорутин таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294516	4786227	Аскорутин таб. №50	Аскорутин таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294517	4786228	Аскорцинк-SP таб №20	Аскорцинк-SP таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294518	4786229	Аскофер сироп 100мл	Аскофер сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294519	4786230	Астанол таб 5мг №10	Астанол таб 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294520	4786231	Асформин 1000мг таб №100	Асформин 1000мг таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294521	4786232	Асформин таб. 850мг №100	Асформин таб. 850мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294522	4786233	Атаракс 25мг таб. п/пл/об. №25	Атаракс 25мг таб. п/пл/об. №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294523	4786234	Атенолол таб. 100мг №30 Русс	Атенолол таб. 100мг №30 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294524	4786235	Атенолол таб. 50мг. №30 Русс	Атенолол таб. 50мг. №30 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294525	4786236	Атокса лиоф пор д/ин 20мг+р-ль №1	Атокса лиоф пор д/ин 20мг+р-ль №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294526	4786237	Аторвакор таб 10 мг №30	Аторвакор таб 10 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294527	4786238	Аторвакор таб 20 мг №30	Аторвакор таб 20 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294528	4786239	Аторвакор таб 40 мг №30	Аторвакор таб 40 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294529	4786240	Аторис 10мг №30	Аторис 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294530	4786241	Аторис 20мг №30	Аторис 20мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294531	4786242	Аторис 30мг №30	Аторис 30мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294532	4786243	Аторис 40мг №30	Аторис 40мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294533	4786244	Аторис 60мг №30	Аторис 60мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294534	4786245	Атосар таб. 50мг №30	Атосар таб. 50мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294535	4786246	Атосар таб.25мг№30	Атосар таб.25мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294536	4786247	Атропина  сульфат амп 0,1% 1мл №10	Атропина  сульфат амп 0,1% 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294537	4786248	Атропина сульфат гл. кап. 10мг/мл 5мл	Атропина сульфат гл. кап. 10мг/мл 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294538	4786249	АТФ  1%  1мл №10	АТФ  1%  1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294539	4786250	Ауробин 20мг Мазь Наружного!!!	Ауробин 20мг Мазь Наружного!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294540	4786251	Афала таб. №100	Афала таб. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294541	4786252	Афил 10мг таб №4	Афил 10мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294542	4786253	Афил 20мг таб №12	Афил 20мг таб №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294543	4786254	Афил 5мг таб №28	Афил 5мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294544	4786255	Афлубин капли 20мл	Афлубин капли 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294545	4786256	Афобазол таб. 10мг №60!!	Афобазол таб. 10мг №60!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294546	4786257	Ацекард таб. 75мг №30	Ацекард таб. 75мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294547	4786258	Ацекард таб.100мг№30 Ацетил. к-та	Ацекард таб.100мг№30 Ацетил. к-та	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294548	4786259	Ацекард таб.50мг№30 Ацетил. к-та	Ацекард таб.50мг№30 Ацетил. к-та	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294549	4786260	Ацесоль р-р 200мл МР	Ацесоль р-р 200мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294550	4786261	Ацетилсалициловая к-та-УБФ таб. 500мг №10	Ацетилсалициловая к-та-УБФ таб. 500мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294551	4786262	Ацефенак киддо 100мл	Ацефенак киддо 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294552	4786263	Ацефил-Каф сироп 120мл№1	Ацефил-Каф сироп 120мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294553	4786264	Ацикловир 200мг таб №20	Ацикловир 200мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294554	4786265	Ацикловир 200мг таб №20	Ацикловир 200мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294555	4786266	Ацикловир 200мг таб №20 МР	Ацикловир 200мг таб №20 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294556	4786267	Ацикловир мазь 5% 10г	Ацикловир мазь 5% 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294557	4786268	Ацикловир мазь 5% 10г МР	Ацикловир мазь 5% 10г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294558	4786269	Ацикловир таб. 400мг №10	Ацикловир таб. 400мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294559	4786270	Ацикловир-Акос  таб 200мг №20	Ацикловир-Акос  таб 200мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294560	4786271	Ацит 200мг/5мл 15мл	Ацит 200мг/5мл 15мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294561	4786272	АЦЦ 200мг пакет №20!!!	АЦЦ 200мг пакет №20!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294562	4786273	АЦЦ Инжект 300мг/3мл 3мл №10!!	АЦЦ Инжект 300мг/3мл 3мл №10!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294563	4786274	АЦЦ Лонг таб. 600мг №10	АЦЦ Лонг таб. 600мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294564	4786275	Ацц порошок 200мг 5г лимон №10 (Эфектон)	Ацц порошок 200мг 5г лимон №10 (Эфектон)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294674	4786385	Бонджигар капс. №60	Бонджигар капс. №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294565	4786276	Аччик тош Banafa Deodorant 70мл	Аччик тош Banafa Deodorant 70мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294566	4786277	Аэролет сироп 100мл №1	Аэролет сироп 100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294567	4786278	Аэртал таб. 100мг №60	Аэртал таб. 100мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294568	4786279	Б-витром р-р для в/м введ. 2мл №5	Б-витром р-р для в/м введ. 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294569	4786280	Бадяга гель 911 100мл	Бадяга гель 911 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294570	4786281	Базер р-р 100мл (L-Аргинин+Левокарнитин) Seem	Базер р-р 100мл (L-Аргинин+Левокарнитин) Seem	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294571	4786282	Бакстимс 100мл	Бакстимс 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294572	4786283	Бактавит гл.капли 0,5мг/мл 10мл	Бактавит гл.капли 0,5мг/мл 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294573	4786284	Бактамед пор д/приг,р-ра д/и 1500мг №1	Бактамед пор д/приг,р-ра д/и 1500мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294574	4786285	Бактериофаг сальмонелл. поливал. 20мл №4	Бактериофаг сальмонелл. поливал. 20мл №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294575	4786286	Бактериофаг стафилококковый 10мл №5 жидкость Aziya Immunopre	Бактериофаг стафилококковый 10мл №5 жидкость Aziya Immunopre	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294576	4786287	Бактокс сусп. 125мг/5мл	Бактокс сусп. 125мг/5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294577	4786288	Бактолор саше 1,4г №6	Бактолор саше 1,4г №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294578	4786289	Бактоник №10 саше	Бактоник №10 саше	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294579	4786290	Бальзам "Золотая Звезда" карандаш 1.3г	Бальзам "Золотая Звезда" карандаш 1.3г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294580	4786291	Бальзам "Золотая Звезда" мазь 4г!!	Бальзам "Золотая Звезда" мазь 4г!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294581	4786292	Бандаж фиксирующий эластичный 79-88размер	Бандаж фиксирующий эластичный 79-88размер	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294582	4786293	Баралгин 5мл р-р для и/ф №5	Баралгин 5мл р-р для и/ф №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294583	4786294	Баралгин таб №100 (Биралгин)	Баралгин таб №100 (Биралгин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294584	4786295	Барбовал капли 25мл	Барбовал капли 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294585	4786296	Бебисан сироп 100мл 08,2023	Бебисан сироп 100мл 08,2023	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294586	4786297	Беклоп-КН крем 15г	Беклоп-КН крем 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294587	4786298	Беландж 2,5мг таб №30	Беландж 2,5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294588	4786299	Беландж таб. 5мг №30	Беландж таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294589	4786300	Белара таб.2мг№21	Белара таб.2мг№21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294590	4786301	Беневрон Б раствор 3мл №5	Беневрон Б раствор 3мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294591	4786302	Беневрон БФ табл. №20	Беневрон БФ табл. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294592	4786303	Бензилбензоата мазь 20% 25 г Русс!!!	Бензилбензоата мазь 20% 25 г Русс!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294593	4786304	Бензилпенициллин н/с 1 000 000Ед	Бензилпенициллин н/с 1 000 000Ед	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294594	4786305	Бензилпенициллин н/с 1 000 000Ед  МР	Бензилпенициллин н/с 1 000 000Ед  МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294595	4786306	Бензилпенициллин н/с 1 000 000Ед Чина	Бензилпенициллин н/с 1 000 000Ед Чина	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294596	4786307	Бензонал таб. 100мг №50	Бензонал таб. 100мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294597	4786308	Бепантен крем 5% 30г!!	Бепантен крем 5% 30г!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294598	4786309	Бепантен мазь 5% 30г	Бепантен мазь 5% 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294599	4786310	Берлиприл 10мг №30	Берлиприл 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294600	4786311	Берлиприл 5 мг №30	Берлиприл 5 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294601	4786312	Берлитион 300 Ед 12 мл №5	Берлитион 300 Ед 12 мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294602	4786313	Берлитион 600 ЕД 5 амп. 24 мл	Берлитион 600 ЕД 5 амп. 24 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294603	4786314	Берлитион капс 600 №30	Берлитион капс 600 №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294604	4786315	Беродуал Н аэр. д/ингал (200доз) 10мл	Беродуал Н аэр. д/ингал (200доз) 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294605	4786316	Бетадин мазь 20гр	Бетадин мазь 20гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294606	4786317	Бетадин р-р 120мл	Бетадин р-р 120мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294607	4786318	Бетайодин р-р(Бетадин) 30мл№1 Повидон-Йод _НОВИНКА	Бетайодин р-р(Бетадин) 30мл№1 Повидон-Йод _НОВИНКА	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294608	4786319	Бетасерк 16мг №30	Бетасерк 16мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294609	4786320	Бетасерк 24мг №20	Бетасерк 24мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294610	4786321	Бетасерк таб. 8мг №30	Бетасерк таб. 8мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294611	4786322	Бетаспан Депо сусп. д/ин. 1мл №5	Бетаспан Депо сусп. д/ин. 1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294612	4786323	Бефрон сусп 100мг/5мл  100мл	Бефрон сусп 100мг/5мл  100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294613	4786324	Бивокса гл капли 0,5% 5мл №1	Бивокса гл капли 0,5% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294614	4786325	Бидоп таб.10мг№28	Бидоп таб.10мг№28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294615	4786326	Бидоп таб.2.5мг№28	Бидоп таб.2.5мг№28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294616	4786327	Бинт марл 5*10 Оддий	Бинт марл 5*10 Оддий	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294617	4786328	Бинт марл 5*10 Стерилний	Бинт марл 5*10 Стерилний	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294618	4786329	Бинт марлевый мед н/с 5х8,5	Бинт марлевый мед н/с 5х8,5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294619	4786330	Бинт марлевый мед н/с 7х8,5	Бинт марлевый мед н/с 7х8,5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294620	4786331	Бинт марли 7х14 Оддий	Бинт марли 7х14 Оддий	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294621	4786332	Бинт оддий нестерильн. 7м 14см  SARBONTEKS	Бинт оддий нестерильн. 7м 14см  SARBONTEKS	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294622	4786333	Бинт стерилний 7*14 Тошкент	Бинт стерилний 7*14 Тошкент	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294623	4786334	Бинт тканный мед.нестерильн. 7м 14см SARBONTEKS	Бинт тканный мед.нестерильн. 7м 14см SARBONTEKS	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294624	4786335	Бинт тканный мед.стерильн. 7м 14см SARBONTEKS	Бинт тканный мед.стерильн. 7м 14см SARBONTEKS	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294625	4786336	Бинт эластич. R140mm-2m№1 NORMAL	Бинт эластич. R140mm-2m№1 NORMAL	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294626	4786337	Бинт эластич. R140mm-3m№1 NORMAL	Бинт эластич. R140mm-3m№1 NORMAL	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294627	4786338	Бинт эластичный GT 100мм 1м №1	Бинт эластичный GT 100мм 1м №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294628	4786339	Бинт эластичный GT 120мм 1м №1	Бинт эластичный GT 120мм 1м №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294629	4786340	Бинт эластичный GT 120мм 2м №1	Бинт эластичный GT 120мм 2м №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294630	4786341	Бинт эластичный GT 140мм 1м №1	Бинт эластичный GT 140мм 1м №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294631	4786342	БиоДент 100мл №1	БиоДент 100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294632	4786343	БиоДент 50мл спрей №1	БиоДент 50мл спрей №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294633	4786344	Биолактовит Нео 800мг капсула №20	Биолактовит Нео 800мг капсула №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294634	4786345	Биомид + Цинк капсулы 400мг №10	Биомид + Цинк капсулы 400мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294635	4786346	Биомол капс.№30	Биомол капс.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294636	4786347	Биостеп гиг. сред. удален захапа 50г "Biostep"	Биостеп гиг. сред. удален захапа 50г "Biostep"	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294637	4786348	Биофаг иньек 10мл №5	Биофаг иньек 10мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294638	4786349	Биоферон сироп 250мл	Биоферон сироп 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294639	4786350	Бисакадил 10мг с/в №10 М Р	Бисакадил 10мг с/в №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294640	4786351	Бисакодил  супп.10мг№10	Бисакодил  супп.10мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294641	4786352	Бисепролол 10мг таб №30	Бисепролол 10мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294642	4786353	Бисепролол 2,5мг таб №30	Бисепролол 2,5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294643	4786354	Бисепролол 5мг таб №30	Бисепролол 5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294644	4786355	Бисепролол таб. 10мг №30	Бисепролол таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294645	4786356	Бисептол (Брифесептол) таб. №20	Бисептол (Брифесептол) таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294646	4786357	Бисептол 480/80мг16 мг/мл 5мл амп №10	Бисептол 480/80мг16 мг/мл 5мл амп №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294647	4786358	Бисептол сусп 80мл	Бисептол сусп 80мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294648	4786359	Бисептол таб. 120мг №20	Бисептол таб. 120мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294649	4786360	Бисептол таб. 960мг №10	Бисептол таб. 960мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294650	4786361	Бисопрол таб. 10мг №30	Бисопрол таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294651	4786362	Бисопролол таб. 5мг №30	Бисопролол таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294652	4786363	Биссептол- МR 480мг №20	Биссептол- МR 480мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294653	4786364	Бифидимбактерин сух 5доза фл №10	Бифидимбактерин сух 5доза фл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294654	4786365	Бифидус Саше №10	Бифидус Саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294655	4786366	Бифилахх Baby  саше №10	Бифилахх Baby  саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294656	4786367	Бифилахх Релиф  саше №6 (Ронофлор Релиф)	Бифилахх Релиф  саше №6 (Ронофлор Релиф)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294657	4786368	Бифолак Актив  Саше №10	Бифолак Актив  Саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294658	4786369	Бифолак актив капс №10	Бифолак актив капс №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294659	4786370	Бифолак Магниум  капс №30	Бифолак Магниум  капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294660	4786371	Бифолак НЕО саше 0,8г №10	Бифолак НЕО саше 0,8г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294661	4786372	Бифолак Цинкум  Саше №10	Бифолак Цинкум  Саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294662	4786373	Бифф Baby саше №10	Бифф Baby саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294663	4786374	Бифф Иммуно саше №10	Бифф Иммуно саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294664	4786375	Бицилин 3 пор фл	Бицилин 3 пор фл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294665	4786376	Бицилин 5 пор фл !!!	Бицилин 5 пор фл !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294666	4786377	Боботик 30мл МР	Боботик 30мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294667	4786378	Боботик капли 30ил !!!	Боботик капли 30ил !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294668	4786379	Бодрин капс №30	Бодрин капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294669	4786380	Болнол Диет сусп 60мл	Болнол Диет сусп 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294670	4786381	Болнол ДФ 75мг инек  3мл №10	Болнол ДФ 75мг инек  3мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294671	4786382	Болнол Плюс сусп. 60мл	Болнол Плюс сусп. 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294672	4786383	Болнол таб. №100!!	Болнол таб. №100!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294673	4786384	Бон Д3 (Кальций + Витамин Д3) капс. №20	Бон Д3 (Кальций + Витамин Д3) капс. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294675	4786386	Бонджигар сироп 90мл	Бонджигар сироп 90мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294676	4786387	Боннисан 120мл№1 Леч.расстройств пищев.Детей	Боннисан 120мл№1 Леч.расстройств пищев.Детей	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294677	4786388	Борная к-та с яич.порош.10г№1	Борная к-та с яич.порош.10г№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294678	4786389	Боро плюс крем 25г Химани	Боро плюс крем 25г Химани	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294679	4786390	Бравадин таб. 5мг №56	Бравадин таб. 5мг №56	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294680	4786391	Бравадин таб. 7,5мг №56	Бравадин таб. 7,5мг №56	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294681	4786392	Бравекс сусп 100мг/5мл №1	Бравекс сусп 100мг/5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294682	4786393	Бралин р-р 100мг/мл 30мл №1	Бралин р-р 100мг/мл 30мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294683	4786394	Бренакс р-р д/ин. 1000мг/4мл 4мл №5 амп.	Бренакс р-р д/ин. 1000мг/4мл 4мл №5 амп.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294684	4786395	Бренакс р-р д/ин. 500мг/4мл 4мл №5	Бренакс р-р д/ин. 500мг/4мл 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294685	4786396	Бризези таб. 10мг №30	Бризези таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294686	4786397	Бризези таб. 4мг №30	Бризези таб. 4мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294687	4786398	Бримоптик кап.глазн. 2мг/мл 5мг/мл 10мл	Бримоптик кап.глазн. 2мг/мл 5мг/мл 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294688	4786399	Броадсеф-С пор.д/ин.№1	Броадсеф-С пор.д/ин.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294689	4786400	Бромгексин 8 драже №25	Бромгексин 8 драже №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294690	4786401	Бромгексин таб. 8мг №10 Русс!!!	Бромгексин таб. 8мг №10 Русс!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294691	4786402	Бромгексин таб. 8мг №50 Русс!!!	Бромгексин таб. 8мг №50 Русс!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294692	4786403	Бронхо - мунал 7мг. кап. №10	Бронхо - мунал 7мг. кап. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294693	4786404	Бронхосип сироп от кашля д/детей 100мл фл	Бронхосип сироп от кашля д/детей 100мл фл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294694	4786405	Бруфен гранулы 600мг №30	Бруфен гранулы 600мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294695	4786406	Бруфен Рапид капс. 200мг №10	Бруфен Рапид капс. 200мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294696	4786407	Бруфен Рапид капс. 400мг №10	Бруфен Рапид капс. 400мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294697	4786408	Бруфен сироп 100мг 5мл	Бруфен сироп 100мг 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294698	4786409	Будектон капсулы 200мкг №60	Будектон капсулы 200мкг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294699	4786410	Бумажной Салфетка №2	Бумажной Салфетка №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294700	4786411	Буманол порошок 2мл №1	Буманол порошок 2мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294701	4786412	Бупивакаин р-р 5мг/10мл №5	Бупивакаин р-р 5мг/10мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294702	4786413	Бустим DS сусп 228мг 60мл	Бустим DS сусп 228мг 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294703	4786414	Бустим пор. д/ин. 1,2г №1	Бустим пор. д/ин. 1,2г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294704	4786415	Бустим-625 таб 500мг+125мг №14	Бустим-625 таб 500мг+125мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294705	4786416	Бутектон капсуль 400мкг №60	Бутектон капсуль 400мкг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294706	4786417	Вагилакс капс ваг №9	Вагилакс капс ваг №9	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294707	4786418	Вазелин  медицинский  - 20гр Дента	Вазелин  медицинский  - 20гр Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294708	4786419	Вазелин VASELINA	Вазелин VASELINA	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294709	4786420	Вазелин Хемани Алое 100г Оргинал &	Вазелин Хемани Алое 100г Оргинал &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294710	4786421	Вазелин Хемани Бодом 100г Оргинал &	Вазелин Хемани Бодом 100г Оргинал &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294711	4786422	Вазокет таб.600мг№30	Вазокет таб.600мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294712	4786423	Вазопро р-р д/и 100мг/мл 5мл №10	Вазопро р-р д/и 100мг/мл 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294713	4786424	Валавир таб. 500мг №10	Валавир таб. 500мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294714	4786425	Валерианы эк-т таб. п/о 0,02г №50	Валерианы эк-т таб. п/о 0,02г №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294715	4786426	Валерианы экс-т таб. 20мг №10	Валерианы экс-т таб. 20мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294716	4786427	Валерианы экс-т таб. 20мг №25	Валерианы экс-т таб. 20мг №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294717	4786428	Валз таб 160мг №28 (Вальсакор)	Валз таб 160мг №28 (Вальсакор)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294718	4786429	Валз таб 80мг №28 (Вальсакор)	Валз таб 80мг №28 (Вальсакор)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294719	4786430	Валидол таб. 0,06 №10	Валидол таб. 0,06 №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294720	4786431	Валодип таб. 10мг/160мг №30	Валодип таб. 10мг/160мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294721	4786432	Валодип таб. 5мг/160мг №30	Валодип таб. 5мг/160мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294722	4786433	Валодип таб. 5мг/80мг №30	Валодип таб. 5мг/80мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294723	4786434	Вальсакор 160мг №28 КРКА	Вальсакор 160мг №28 КРКА	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294724	4786435	Вальсакор 80мг №28 КРКА	Вальсакор 80мг №28 КРКА	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294725	4786436	Вальсакор Н160 160мг/12,5мг №28 КРКА	Вальсакор Н160 160мг/12,5мг №28 КРКА	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294726	4786437	Вальсакор Н80 80мг/12,5мг №28	Вальсакор Н80 80мг/12,5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294727	4786438	Вамелан капсулы №30	Вамелан капсулы №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294728	4786439	Ваменафф капс 400мг №30	Ваменафф капс 400мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294729	4786440	Варфарекс таб 3мг №100	Варфарекс таб 3мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294730	4786441	Варфарин штада таб. 2,5мг №100	Варфарин штада таб. 2,5мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294731	4786442	Вата  н/с "COTTON CLUB" 25г	Вата  н/с "COTTON CLUB" 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294732	4786443	Вата 100гр "Momiq"	Вата 100гр "Momiq"	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294733	4786444	Вата 25гр "Momiq"   50 талик	Вата 25гр "Momiq"   50 талик	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294734	4786445	Вата мед. гигрос. стерильн. 50г SARBONTEKS MCHJ QK	Вата мед. гигрос. стерильн. 50г SARBONTEKS MCHJ QK	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294735	4786446	Велгамма р-р д/инъек. 2мл №5	Велгамма р-р д/инъек. 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294736	4786447	Велмекс таб 250мг №10 (Левофлоксацин)	Велмекс таб 250мг №10 (Левофлоксацин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294737	4786448	Велмекс таб 500мг №10 (Левофлоксацин)	Велмекс таб 500мг №10 (Левофлоксацин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294738	4786449	Велсон р-р д/иньек 250мг/5мл №5!!	Велсон р-р д/иньек 250мг/5мл №5!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294739	4786450	Венолекс таб. 450мг №60	Венолекс таб. 450мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294740	4786451	Верминафф капс 400мг №30	Верминафф капс 400мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294741	4786452	Вермокс таб. 100мг №6	Вермокс таб. 100мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294742	4786453	Вероксиб 120мг таб №30	Вероксиб 120мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294743	4786454	Вероксиб 60мг таб №30	Вероксиб 60мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294744	4786455	Верошпирон капс. 100мг №30	Верошпирон капс. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294745	4786456	Вертинекс таб.5мг№100	Вертинекс таб.5мг№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294746	4786457	Вертусин таб №60	Вертусин таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294747	4786458	Вессел Дуэ Ф капс. 250ЛЕ N50	Вессел Дуэ Ф капс. 250ЛЕ N50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294748	4786459	Вестинорм таб. 16мг №30	Вестинорм таб. 16мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294749	4786460	Вестинорм таб. 24мг №30	Вестинорм таб. 24мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294750	4786461	Вивабон сироп 120мл	Вивабон сироп 120мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294751	4786462	Виданол таб.500мг№60	Виданол таб.500мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294752	4786463	Визанак нео капс 150мг №1	Визанак нео капс 150мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294753	4786464	Визанна 2мг №28 таб.	Визанна 2мг №28 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294754	4786465	Визин гл. капли 0,05% 15мл	Визин гл. капли 0,05% 15мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294755	4786466	Викантус 7,5мг/5мл сироп 150мл	Викантус 7,5мг/5мл сироп 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294756	4786467	Викасол амп  1%-1мл №10	Викасол амп  1%-1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294757	4786468	Виндазол-500 3Х10 таб.	Виндазол-500 3Х10 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294758	4786469	Винебрал капс. 30мг №20	Винебрал капс. 30мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294759	4786470	Виноксин МВ таб. 30мг №60	Виноксин МВ таб. 30мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294760	4786471	Винцет таб. № 30	Винцет таб. № 30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294761	4786472	Виплактин-С сусп. д/према внутрь 2млрд/5мл №10	Виплактин-С сусп. д/према внутрь 2млрд/5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294762	4786473	Випросал В мазь 30г	Випросал В мазь 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294763	4786474	Випросал В мазь 50г	Випросал В мазь 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294764	4786475	Виржиндерм 100мл сироп	Виржиндерм 100мл сироп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294765	4786476	Виростав гл капли 0,1% 10мл	Виростав гл капли 0,1% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294766	4786477	Витагум  органик №40 "кора седана)	Витагум  органик №40 "кора седана)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294767	4786478	Витадерм флакон 110мл	Витадерм флакон 110мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294768	4786479	Витаком В комплекс р-р д/ин. 3мл №5 Грузия	Витаком В комплекс р-р д/ин. 3мл №5 Грузия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294769	4786480	Витал вит К1 р-р 0,5мл №10	Витал вит К1 р-р 0,5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294770	4786481	Витамед р-р д/ин. 2мл №5 (Вит в комплекс)	Витамед р-р д/ин. 2мл №5 (Вит в комплекс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294771	4786482	Витамикс Классик капс №20	Витамикс Классик капс №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294772	4786483	Витамин E"LIK" 0.1г №30	Витамин E"LIK" 0.1г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294773	4786484	Витамин А "LIK" 33000МЕ №20	Витамин А "LIK" 33000МЕ №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294774	4786485	Витамин В 12  1мл №10	Витамин В 12  1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294775	4786486	Витамин В комплекс амп 2мл №10 М Р	Витамин В комплекс амп 2мл №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294776	4786487	Витамин В1 5% 1мл №10	Витамин В1 5% 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294777	4786488	Витамин В6 1мл №10	Витамин В6 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294778	4786489	Витамин Д3 KRKA таб. 1000МЕ №60	Витамин Д3 KRKA таб. 1000МЕ №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294779	4786490	Витамин Д3 голд №90	Витамин Д3 голд №90	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294780	4786491	Витамин Д3-ника таб №50	Витамин Д3-ника таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294781	4786492	Витамин Е "LIK" 0,2г №30	Витамин Е "LIK" 0,2г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294782	4786493	Витамин Е "LIK" 0,4г №30	Витамин Е "LIK" 0,4г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294783	4786494	Витамин Цинк №30	Витамин Цинк №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294784	4786495	Витамин-Е.Токоферола ацетат 10% 1мл №10	Витамин-Е.Токоферола ацетат 10% 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294785	4786496	Витапрост супп. рект. 10мг №10	Витапрост супп. рект. 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294786	4786497	Витапрост таб 20мг №20	Витапрост таб 20мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294787	4786498	Витаци капс №30	Витаци капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294788	4786499	Вито Д3 капли 15000 ME 10мл	Вито Д3 капли 15000 ME 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294789	4786500	Витомат амп 3мл №10 (Витамин В Комплекс)	Витомат амп 3мл №10 (Витамин В Комплекс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294790	4786501	Виусид пор.4.5г.№1	Виусид пор.4.5г.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294791	4786502	Виферон мазь 40000МЕ/г 12г	Виферон мазь 40000МЕ/г 12г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294792	4786503	Виферон-1 (свечи 150000 МЕ) №10	Виферон-1 (свечи 150000 МЕ) №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294793	4786504	Виферон-2 (свечи 500000 МЕ) №10	Виферон-2 (свечи 500000 МЕ) №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294794	4786505	Виферон-3 супп. рект. 1000000МЕ №10!!	Виферон-3 супп. рект. 1000000МЕ №10!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294795	4786506	Виферон-4 (свечи 3000000 МЕ) №10	Виферон-4 (свечи 3000000 МЕ) №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294796	4786507	Влажные КК Салфетки Ассорти №25 &	Влажные КК Салфетки Ассорти №25 &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294797	4786508	Влажные Салфетка Sleepy Детский  №50	Влажные Салфетка Sleepy Детский  №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294798	4786509	Влажные Салфетка КК BIOMED  №20	Влажные Салфетка КК BIOMED  №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294799	4786510	Влажные Салфетки "LiLi" Эк/т №15	Влажные Салфетки "LiLi" Эк/т №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294800	4786511	Влажные Салфетки "LiLi" Эк/т №17	Влажные Салфетки "LiLi" Эк/т №17	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294801	4786512	Влажные Салфетки "Perla" №72 Ассортимент &	Влажные Салфетки "Perla" №72 Ассортимент &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294802	4786513	Влажные Салфетки Biomed-layf №120	Влажные Салфетки Biomed-layf №120	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294803	4786514	Влажные Салфетки Biomed-layf №72	Влажные Салфетки Biomed-layf №72	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294804	4786515	Вобензим  таб №20!! Оргинал	Вобензим  таб №20!! Оргинал	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294805	4786516	Вобилон капс 80мг №30	Вобилон капс 80мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294806	4786517	Вовенак таб №100	Вовенак таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294807	4786518	Волвит таб.5мг№30	Волвит таб.5мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294808	4786519	Вольтарен Эмульгель гель 1% 100г	Вольтарен Эмульгель гель 1% 100г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294809	4786520	Вольтарен Эмульгель гель 1% 20г	Вольтарен Эмульгель гель 1% 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294810	4786521	Вольтарен Эмульгель гель 1% 50г	Вольтарен Эмульгель гель 1% 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294811	4786522	Вольтарен Эмульгель гель 2% 50г	Вольтарен Эмульгель гель 2% 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294812	4786523	Вольфуран таб.0.2мг№14	Вольфуран таб.0.2мг№14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294813	4786524	Враг Глист плюс таб 400мг №1	Враг Глист плюс таб 400мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294814	4786525	Враг грип кид капли 15мл	Враг грип кид капли 15мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294815	4786526	Враг грип таб №4	Враг грип таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294816	4786527	Враггдиарея таб №10	Враггдиарея таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294817	4786528	Враггрип капли назалные 10мл	Враггрип капли назалные 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294818	4786529	Враггрип плюс саше 5мг №10	Враггрип плюс саше 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294819	4786530	Враггрипп Зинг таб шип №2	Враггрипп Зинг таб шип №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294820	4786531	Врагдиарея сусп 60мл	Врагдиарея сусп 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294821	4786532	Габанерв таб 300мг №10	Габанерв таб 300мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294822	4786533	Газ Офф таб №10	Газ Офф таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294823	4786534	Галавит пор. д/ин. 100мг фл №5	Галавит пор. д/ин. 100мг фл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294824	4786535	Галавит пор. р-р 50мг №5	Галавит пор. р-р 50мг №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294825	4786536	Галавит супп. рект. 50мг №5!!!	Галавит супп. рект. 50мг №5!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294826	4786537	Галавит супп.100мг№10.	Галавит супп.100мг№10.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294827	4786538	Галазолин 0,1% капли 10мл	Галазолин 0,1% капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294828	4786539	Галазолин 0,5% капли 10мл	Галазолин 0,5% капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294829	4786540	Гаремагра 100мг №4 (Силденафил)	Гаремагра 100мг №4 (Силденафил)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294830	4786541	Гексосепт-РН свечи 16мг №10	Гексосепт-РН свечи 16мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294831	4786542	Гелмадол таб 200мг №2	Гелмадол таб 200мг №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294832	4786543	Гельминтокс  125мг №6	Гельминтокс  125мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294833	4786544	Гема-Тардиферон таб. №30 Малика Фарм	Гема-Тардиферон таб. №30 Малика Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294834	4786545	Гемастад-Рн амп 20мл №5	Гемастад-Рн амп 20мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294835	4786546	Гемонафф капс 400мг №30	Гемонафф капс 400мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294836	4786547	Геморронорм (БАД) 50мл	Геморронорм (БАД) 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294837	4786548	Гентамицин 40мг 2мл №10	Гентамицин 40мг 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294838	4786549	Гентамицин 80мг 2мл №10 МР !!!	Гентамицин 80мг 2мл №10 МР !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294839	4786550	Гентамицин мазь 15гр Акос	Гентамицин мазь 15гр Акос	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294840	4786551	Гентамицин-К 80мг/2мл №10	Гентамицин-К 80мг/2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294841	4786552	Генферон Лайт капли наз. 10000МЕ/мл+0,8мг/мл 10мл	Генферон Лайт капли наз. 10000МЕ/мл+0,8мг/мл 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294842	4786553	Генферон лайт спрей назал. 50000МЕ 100доз	Генферон лайт спрей назал. 50000МЕ 100доз	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294843	4786554	Генферон лайт супп. ваг./рект. 250000МЕ 5мг №10	Генферон лайт супп. ваг./рект. 250000МЕ 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294844	4786555	Генферон супп. ваг./рект. 500000МЕ №10	Генферон супп. ваг./рект. 500000МЕ №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294845	4786556	Гепа-Мерц 10мл №10 МР	Гепа-Мерц 10мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294846	4786557	Гепанафф капс 400мг №30	Гепанафф капс 400мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294847	4786558	Гепаним беби сироп	Гепаним беби сироп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294848	4786559	Гепанол капс №30	Гепанол капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294849	4786560	Гепарин 1мл ампул №5 МР	Гепарин 1мл ампул №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294850	4786561	Гепарин 500ЕД 5мл №1 индия!!	Гепарин 500ЕД 5мл №1 индия!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294851	4786562	Гепарин 500ЕД 5мл №5	Гепарин 500ЕД 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294852	4786563	Гепарин Индар  р-р д/ин 5000ЕД 5мл №5!!	Гепарин Индар  р-р д/ин 5000ЕД 5мл №5!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294853	4786564	Гепарин натрия 5000.МЕ.5мл№5 Чина	Гепарин натрия 5000.МЕ.5мл№5 Чина	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294854	4786565	Гепирид 1 таблетки №30 Нобел?	Гепирид 1 таблетки №30 Нобел?	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294855	4786566	Гепирид 2 таблетки №30 Нобел?	Гепирид 2 таблетки №30 Нобел?	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294856	4786567	Гепирид 3 таблетки №30 Нобел??	Гепирид 3 таблетки №30 Нобел??	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294857	4786568	Гепирид 4 таблетки №30 Нобел	Гепирид 4 таблетки №30 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294858	4786569	Геполин капс №30	Геполин капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294859	4786570	Гептрал пор. лиоф. д/приг. р-ра 500мг №5!	Гептрал пор. лиоф. д/приг. р-ра 500мг №5!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294860	4786571	Гербалиф №20 капсула	Гербалиф №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294861	4786572	Гербион Плющ пастилки 35мг №16	Гербион Плющ пастилки 35мг №16	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294862	4786573	Гербион сироп  первоцвета 150мл	Гербион сироп  первоцвета 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294863	4786574	Гербион сироп  плюша 150мл	Гербион сироп  плюша 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294864	4786575	Гербион сироп исландского мха 150мл	Гербион сироп исландского мха 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294865	4786576	Гербион сироп подоржник 150 мл	Гербион сироп подоржник 150 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294866	4786577	Герпевир таб 200мг №20	Герпевир таб 200мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294867	4786578	Герпес-стоп крем 1% 10г	Герпес-стоп крем 1% 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294868	4786579	Гетры эластичные R-№1 UNIVERSAL	Гетры эластичные R-№1 UNIVERSAL	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294869	4786580	Гетры эластичные R-№3 UNIVERSAL	Гетры эластичные R-№3 UNIVERSAL	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294870	4786581	Гидрокартизон 2,5% 2мл №10 МР!!!	Гидрокартизон 2,5% 2мл №10 МР!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294871	4786582	Гидрокартизон 2,5% 2мл №10 Фармак!!!	Гидрокартизон 2,5% 2мл №10 Фармак!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294872	4786583	Гидрокартизон мазь 1% 10г Наруж  русс	Гидрокартизон мазь 1% 10г Наруж  русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294873	4786584	Гидрокортизон Ромфарм лиоф. д/ин. 100мг №1	Гидрокортизон Ромфарм лиоф. д/ин. 100мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294874	4786585	Гидроперит таб 1,5г №8	Гидроперит таб 1,5г №8	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294875	4786586	Гидротен крем для наруж 5% 30г	Гидротен крем для наруж 5% 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294876	4786587	Гидротен мазь для наруж 5% 30г	Гидротен мазь для наруж 5% 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294877	4786588	Гилоба капс. 40 мг №30	Гилоба капс. 40 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294878	4786589	Гинекологич. Щетки. д/Цитолог.исс-й.Стерил.№1 Цервикальная Щ	Гинекологич. Щетки. д/Цитолог.исс-й.Стерил.№1 Цервикальная Щ	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294879	4786590	Гинесепт спрей 100мл	Гинесепт спрей 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294880	4786591	Гинко Магне В 6 таб №21	Гинко Магне В 6 таб №21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294881	4786592	Гино-Тардиферон таб. пролонг. действ. №30	Гино-Тардиферон таб. пролонг. действ. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294882	4786593	Гинофорт, 2%, 5 г, крем ваг	Гинофорт, 2%, 5 г, крем ваг	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294883	4786594	Гиоксизон мазь 10г	Гиоксизон мазь 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294884	4786595	Гиоксизон мазь 10г МР	Гиоксизон мазь 10г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294885	4786596	Гиповин таб.300мг№6	Гиповин таб.300мг№6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294886	4786597	Гипотиазид таб. 25мг №20	Гипотиазид таб. 25мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294887	4786598	Гипотонус капсула №20	Гипотонус капсула №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294888	4786599	Гликламид 1,75мг таб №50	Гликламид 1,75мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294889	4786600	Гликламид 3,5мг таб №50	Гликламид 3,5мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294890	4786601	Гликламид 5мг таб №50	Гликламид 5мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294891	4786602	Глистагон  плюс таб.  №1	Глистагон  плюс таб.  №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294892	4786603	Глицевит таб №30	Глицевит таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294893	4786604	Глицерин 1,24г с/в №10	Глицерин 1,24г с/в №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294894	4786605	Глицерин 1,24г с/в №10 МР	Глицерин 1,24г с/в №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294895	4786606	Глицерин 1,24г с/в №10 Радикс	Глицерин 1,24г с/в №10 Радикс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294896	4786607	Глицерин космет.Алоэ 50мл№1	Глицерин космет.Алоэ 50мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294897	4786608	Глицерин космет.Клубника 50мл№1 BURGUT FARM OK	Глицерин космет.Клубника 50мл№1 BURGUT FARM OK	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294898	4786609	Глицерин космет.Лимон 50мл№1 BURGUT FARM OK	Глицерин космет.Лимон 50мл№1 BURGUT FARM OK	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294899	4786610	Глицерин космет.Ромашка 50мл№1	Глицерин космет.Ромашка 50мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294900	4786611	Глицерин космет.Яблоко 50мл№1	Глицерин космет.Яблоко 50мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294901	4786612	Глицерин мед. 90мл№1	Глицерин мед. 90мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294902	4786613	Глицикалин капли 30мл	Глицикалин капли 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294903	4786614	Глицин 100мг таб №50	Глицин 100мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294904	4786615	Глицин 100мг таб №50 Радикс	Глицин 100мг таб №50 Радикс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294905	4786616	Глобекс сироп 100мл	Глобекс сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294906	4786617	Глутадин лиоф.пор.д/ин фл 600мг №10	Глутадин лиоф.пор.д/ин фл 600мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294907	4786618	Глутион амп. 600мг №10, р-ль 4мл	Глутион амп. 600мг №10, р-ль 4мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294908	4786619	Глюкоза 0,5% 100мл МР	Глюкоза 0,5% 100мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294909	4786620	Глюкоза 0,5% 200мл	Глюкоза 0,5% 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294910	4786621	Глюкоза 40% 10мл №10 М Р	Глюкоза 40% 10мл №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294911	4786622	Глюкоза 40% 10мл №5 Дента	Глюкоза 40% 10мл №5 Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294912	4786623	Глюкоза р-р д/инф. 5% 500мл Сеем	Глюкоза р-р д/инф. 5% 500мл Сеем	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294913	4786624	Глюкотон таб. MR 30мг №30	Глюкотон таб. MR 30мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294914	4786625	Глюкофаж таб. 1000мг №60	Глюкофаж таб. 1000мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294915	4786626	Глюкофаж таб.500мг№60	Глюкофаж таб.500мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294916	4786627	Глюкофаж таб.850мг№60	Глюкофаж таб.850мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294917	4786628	Гопантомид таб 250мг №50 (Пантогам)	Гопантомид таб 250мг №50 (Пантогам)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294918	4786629	Гопантомид таб 500мг №50 (Пантогам)	Гопантомид таб 500мг №50 (Пантогам)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294919	4786630	Горчичник "Висмут" ЛИСТОВЫЕ №10	Горчичник "Висмут" ЛИСТОВЫЕ №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294920	4786631	Граммидин детский 4+ №18	Граммидин детский 4+ №18	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294921	4786632	Граммидин нео с анестетиком №18	Граммидин нео с анестетиком №18	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294922	4786633	Граммидин НЕО таб №18	Граммидин НЕО таб №18	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294923	4786634	Грандаксин таб. 50мг. №20	Грандаксин таб. 50мг. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294924	4786635	Грипго таб.№100 Грипп+ОРВИ	Грипго таб.№100 Грипп+ОРВИ	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294925	4786636	Грипго хотмикс 5г пор №10	Грипго хотмикс 5г пор №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294926	4786637	Грипподез таб №10	Грипподез таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294927	4786638	Грипподез таб №4	Грипподез таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294928	4786639	Грипхот порошок №12	Грипхот порошок №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294929	4786640	Гроприносин таб.500мг№50	Гроприносин таб.500мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294930	4786641	Гроприносин-Рихтер сироп 250мг/5мл 150мл	Гроприносин-Рихтер сироп 250мг/5мл 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294931	4786642	Гулинекс капс №10 (Линекс) МР	Гулинекс капс №10 (Линекс) МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294932	4786643	Гутталакс капли д/внутрь 7,5мг/мл 30мл	Гутталакс капли д/внутрь 7,5мг/мл 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294933	4786644	Гэк 200 р-р д/инф. 6% 250мл	Гэк 200 р-р д/инф. 6% 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294934	4786645	Д-Кальцин гранулы 75г №1	Д-Кальцин гранулы 75г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294935	4786646	Дамнол таб 500мг №50	Дамнол таб 500мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294936	4786647	Де-Нол таб.120мг№112	Де-Нол таб.120мг№112	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294937	4786648	Де-сиптол сусп 240млг/5мл 50мл	Де-сиптол сусп 240млг/5мл 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294938	4786649	Де-Сиптол таб.0.48мг№20 Дента	Де-Сиптол таб.0.48мг№20 Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294939	4786650	Дезеф сироп 2,5мл/5мл 50мл	Дезеф сироп 2,5мл/5мл 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294940	4786651	Дезрадин таб. 5мг №10	Дезрадин таб. 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294941	4786652	Декарис таб. 50мг №2	Декарис таб. 50мг №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294942	4786653	Декарис таб.150мг№1	Декарис таб.150мг№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294943	4786654	Декасан МР амп 2мл №10 МР	Декасан МР амп 2мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294944	4786655	Декасан р-р 0,2мг/мл 200мл	Декасан р-р 0,2мг/мл 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294945	4786656	Декасан р-р.0.02%.2мл№12 Юрия	Декасан р-р.0.02%.2мл№12 Юрия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294946	4786657	Дексабут двойные амп 2мл №3 и 1мл №3	Дексабут двойные амп 2мл №3 и 1мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294947	4786658	Дексакорт глаз/ушн. кап.0,1%.5мл№1	Дексакорт глаз/ушн. кап.0,1%.5мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294948	4786659	Дексалгин амп. 2мл №5 !!	Дексалгин амп. 2мл №5 !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294949	4786660	Дексамеазон капли  01% 5мл	Дексамеазон капли  01% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294950	4786661	Дексаметазон  гл.капли 10мл	Дексаметазон  гл.капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294951	4786662	Дексаметазон  гл.капли МР	Дексаметазон  гл.капли МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294952	4786663	Дексаметазон  р-р д/иньек. 4мг/мл №25 КРКА	Дексаметазон  р-р д/иньек. 4мг/мл №25 КРКА	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294953	4786664	Дексаметазон 4мг/1мл №10	Дексаметазон 4мг/1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294954	4786665	Дексаметазон 4мг/1мл №10 МР	Дексаметазон 4мг/1мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294955	4786666	Дексаметазон 4мг/1мл №5	Дексаметазон 4мг/1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294956	4786667	Дексаметазон- амп.4мг/мл.1мл№25	Дексаметазон- амп.4мг/мл.1мл№25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294957	4786668	ДексаТобром 5мл №1	ДексаТобром 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294958	4786669	Дексафлю саше д/пр. р-ра внутрь 4,5г №10	Дексафлю саше д/пр. р-ра внутрь 4,5г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294959	4786670	Декстанол таб №10	Декстанол таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294960	4786671	Дематон Т 10мл №1	Дематон Т 10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294961	4786672	Демотон-Б12 5мл №5	Демотон-Б12 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294962	4786673	Денташан гель 25г№1	Денташан гель 25г№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294963	4786674	Депрес капс №16 Нобел	Депрес капс №16 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294964	4786675	Депрес капс №30 Нобел	Депрес капс №30 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294965	4786676	Дерилайф крем 0.05% 50г №1	Дерилайф крем 0.05% 50г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294966	4786677	Дермавайт мазь 0,05% 25гр	Дермавайт мазь 0,05% 25гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294967	4786678	Дермавайт мазь 0,05% 25гр МР	Дермавайт мазь 0,05% 25гр МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294968	4786679	Дермазол ваг супп 400мг №10	Дермазол ваг супп 400мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294969	4786680	Дермазол шампунь 2% 100мл№1	Дермазол шампунь 2% 100мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294970	4786681	Дермазол шампунь 2% 50мл	Дермазол шампунь 2% 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294971	4786682	ДермазолПлюс шампунь 100мл№1	ДермазолПлюс шампунь 100мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294972	4786683	ДермазолПлюс шампунь 50мл.№1	ДермазолПлюс шампунь 50мл.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294973	4786684	Дермоклин крем 10г	Дермоклин крем 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294974	4786685	Десмопрессин 100мкг 5мл №1	Десмопрессин 100мкг 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294975	4786686	Детокс-пластырь №10 (Kinoki)	Детокс-пластырь №10 (Kinoki)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294976	4786687	Детралекс таб. 500мг №30	Детралекс таб. 500мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294977	4786688	Детривит капли 10мл	Детривит капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294978	4786689	Детская присыпка  "Jonson baby" 100г	Детская присыпка  "Jonson baby" 100г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294979	4786690	Детская присыпка  "Jonson baby" 50г	Детская присыпка  "Jonson baby" 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294980	4786691	Детская Присыпка  100г	Детская Присыпка  100г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294981	4786692	Детская Присыпка  30г	Детская Присыпка  30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294982	4786693	Детская Присыпка  40г	Детская Присыпка  40г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294983	4786694	Детская Присыпка 20г	Детская Присыпка 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294984	4786695	Детский  Кусачка  SAFF SA-05	Детский  Кусачка  SAFF SA-05	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294985	4786696	Детский крем   Алиса  50г 50г	Детский крем   Алиса  50г 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294986	4786697	Детский совун JOHCOH каробка 100г	Детский совун JOHCOH каробка 100г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294987	4786698	Детский совун JOHCOH оригинал 125мл пушти	Детский совун JOHCOH оригинал 125мл пушти	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294988	4786699	Детское совун  "BABY" 125г	Детское совун  "BABY" 125г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294989	4786700	Детское совун Бебито 100г	Детское совун Бебито 100г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294990	4786701	Дефилак сироп 200мл	Дефилак сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294991	4786702	Дефицинк саше №10	Дефицинк саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294992	4786703	Джетепар амп 10мл №5	Джетепар амп 10мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294993	4786704	Джетепар амп.2мл№10	Джетепар амп.2мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294994	4786705	Диабетон MR 60мг №30 таб.	Диабетон MR 60мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294995	4786706	Диаглизид MR 30мг №60	Диаглизид MR 30мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294996	4786707	Диаглизид MR 60мг №30	Диаглизид MR 60мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294997	4786708	Диазолин 0,01г таб №10	Диазолин 0,01г таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294998	4786709	Диазолин 0,05г таб №10	Диазолин 0,05г таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1294999	4786710	Диазолин 0,1г таб №10	Диазолин 0,1г таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295000	4786711	Диазолин 0,1г таб №10 М Р	Диазолин 0,1г таб №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295001	4786712	Диалин-М сусп. 200мг/5мл  60мл №1	Диалин-М сусп. 200мг/5мл  60мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295002	4786713	Диалипон капс. 300мг №30	Диалипон капс. 300мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295003	4786714	Диалипон МР р-р д/и 3% 10мл №5 МР	Диалипон МР р-р д/и 3% 10мл №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295004	4786715	Диалипон р-р д/и 3% 10мл №5	Диалипон р-р д/и 3% 10мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295005	4786716	Диалипон р-р д/и 3% 20мл №5	Диалипон р-р д/и 3% 20мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295006	4786717	Диампа-М таб. п/о 12,5мг+1000мг №28	Диампа-М таб. п/о 12,5мг+1000мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295007	4786718	Диампа-М таб. п/о 12,5мг+500мг №28	Диампа-М таб. п/о 12,5мг+500мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295008	4786719	Диампа-М таб. п/о 12,5мг+850мг №28	Диампа-М таб. п/о 12,5мг+850мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295009	4786720	Диампа-М таб. п/о 5мг+1000мг №28	Диампа-М таб. п/о 5мг+1000мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295010	4786721	Диампа-М таб. п/о 5мг+850мг №28	Диампа-М таб. п/о 5мг+850мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295011	4786722	Диане-35 №21 драже	Диане-35 №21 драже	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295012	4786723	Диапирид таб. 2мг №30	Диапирид таб. 2мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295013	4786724	Диапирид таб. 3мг №30	Диапирид таб. 3мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295014	4786725	Диапирид таб. 4мг №30	Диапирид таб. 4мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295015	4786726	Диаркал таб №30	Диаркал таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295016	4786727	Диаформин SR таб. 1000мг №60	Диаформин SR таб. 1000мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295017	4786728	Диаформин таб 500мг №60	Диаформин таб 500мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295018	4786729	Диаформин таб 850мг №60	Диаформин таб 850мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295019	4786730	Дибазол амп 1% 1мл №10	Дибазол амп 1% 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295020	4786731	Дивисустав саше №10	Дивисустав саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295021	4786732	Диворм таб №60	Диворм таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295022	4786733	Диклоберл капс ретард 100 мг №20	Диклоберл капс ретард 100 мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295023	4786734	Диклобирил-МR 75мг/3мл №5	Диклобирил-МR 75мг/3мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295024	4786735	ДиклоранПлюс гель.30г№1	ДиклоранПлюс гель.30г№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295025	4786736	Диклотол таб.100мг№30	Диклотол таб.100мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295026	4786737	Диклофенак 100мг с/в №10	Диклофенак 100мг с/в №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295027	4786738	Диклофенак 100мг с/в №10 МР	Диклофенак 100мг с/в №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295028	4786739	Диклофенак амп.2,5%.3мл№10 (Диклодион) BAYAN	Диклофенак амп.2,5%.3мл№10 (Диклодион) BAYAN	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295029	4786740	Диклофенак маз 10% 30гр	Диклофенак маз 10% 30гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295030	4786741	Диклофенак натрия мазь 10мг 30г !!!	Диклофенак натрия мазь 10мг 30г !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295031	4786742	Диклофенак ОЗ таб 50мг №20	Диклофенак ОЗ таб 50мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295032	4786743	Диклофенак супп. рект. 50мг №10	Диклофенак супп. рект. 50мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295033	4786744	Диклофенак таб 500мг №10 Нова Фарм (Диклофлам)	Диклофенак таб 500мг №10 Нова Фарм (Диклофлам)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295034	4786745	Димакс кид сус 60мл	Димакс кид сус 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295035	4786746	Димедрол амп 1% 1мл №10 МР	Димедрол амп 1% 1мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295036	4786747	Димедрол амп 1% 1мл №5	Димедрол амп 1% 1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295037	4786748	Димедрол таб.100мг№10	Димедрол таб.100мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295038	4786749	Димексид 50мл	Димексид 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295039	4786750	Димексид спрей водный р-р 50% 150мл	Димексид спрей водный р-р 50% 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295040	4786751	Динапар AQ р-р 75мг/мл по 1мл №5	Динапар AQ р-р 75мг/мл по 1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295041	4786752	Динапар гел 30г	Динапар гел 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295042	4786753	Динапар таб №100 Малика Фарм ( ДипарМал )	Динапар таб №100 Малика Фарм ( ДипарМал )	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295043	4786754	Диокор 80 мг №30 таб	Диокор 80 мг №30 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295044	4786755	Диоксидин р-р 10мл №10 Фармак	Диоксидин р-р 10мл №10 Фармак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295045	4786756	Дипновет мазь 20г	Дипновет мазь 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295046	4786757	Дипол 50мл Комплект	Дипол 50мл Комплект	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295047	4786758	Дипол шампунь 50мл	Дипол шампунь 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295048	4786759	Диротон таб. 10мг №28	Диротон таб. 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295049	4786760	Диротон таб. 5мг №28	Диротон таб. 5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295050	4786761	Диротон таб.20мг№28	Диротон таб.20мг№28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295051	4786762	Дистем таб №50	Дистем таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295052	4786763	Дистофен гель 25г	Дистофен гель 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295053	4786764	Дифуллак-PCM сироп 100мл№1 Лактулоза	Дифуллак-PCM сироп 100мл№1 Лактулоза	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295054	4786765	Дифуллак-PCM сироп 200мл№1 Лактулоза	Дифуллак-PCM сироп 200мл№1 Лактулоза	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295055	4786766	Дицинон 250мг МР 2мл №10 МР	Дицинон 250мг МР 2мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295056	4786767	Дицинон таб. 250мг №10	Дицинон таб. 250мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295057	4786768	Долгит крем 20г	Долгит крем 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295058	4786769	Долекс таб.№100.	Долекс таб.№100.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295059	4786770	ДолМасто капли 50 мл №1	ДолМасто капли 50 мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295060	4786771	Домрид сусп.1мг/мл60мл№1	Домрид сусп.1мг/мл60мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295061	4786772	Домрид таб.10мг№30	Домрид таб.10мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295062	4786773	Допрокин -С сусп.д/приема внутрь 60мл.флак.№1	Допрокин -С сусп.д/приема внутрь 60мл.флак.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295063	4786774	Допрокин табл 10мг №20	Допрокин табл 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295064	4786775	Дорамицин табл 3000000 №10	Дорамицин табл 3000000 №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295065	4786776	Дофек гель наруж 30г (Диклофенак)	Дофек гель наруж 30г (Диклофенак)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295066	4786777	Драй драй Roll  50мл	Драй драй Roll  50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295067	4786778	Драй драй Ultra 50мл	Драй драй Ultra 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295068	4786779	Дро-шпа р-р 2% 2мл №5	Дро-шпа р-р 2% 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295069	4786780	Дро-шпа таб 40мг №50	Дро-шпа таб 40мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295070	4786781	Дролоцит нео 100мг/30мл	Дролоцит нео 100мг/30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295071	4786782	Дроплекс уш.кап.15мл№1	Дроплекс уш.кап.15мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295072	4786783	Дропофенак капли глазные 0,1% 5мл	Дропофенак капли глазные 0,1% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295073	4786784	Дротаверин таб 40мг №20	Дротаверин таб 40мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295074	4786785	Дуалгин амп. 2мл №3	Дуалгин амп. 2мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295075	4786786	Дунегма  с растворителем 0,5% р-р лидокаина 2мл №3	Дунегма  с растворителем 0,5% р-р лидокаина 2мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295076	4786787	Дуо Клав Сус 250 мг 60мл	Дуо Клав Сус 250 мг 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295077	4786788	Дуобактам №1 (Цефтраксон 1000мг+тазобактам 125мг прош Инек	Дуобактам №1 (Цефтраксон 1000мг+тазобактам 125мг прош Инек	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295078	4786789	Дуовит драже №40	Дуовит драже №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295079	4786790	Дуфалак сироп  200мл М Р	Дуфалак сироп  200мл М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295080	4786791	Дюспаталин 200мг №30 Аббот	Дюспаталин 200мг №30 Аббот	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295081	4786792	Дюспаталин капс 200мг №30 МР	Дюспаталин капс 200мг №30 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295082	4786793	Дюфалак 200мл	Дюфалак 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295083	4786794	Дюфалак Mama&Baby сироп 667мг 200мл	Дюфалак Mama&Baby сироп 667мг 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295084	4786795	Дюфалак сироп 667мг/мл 15мл №10	Дюфалак сироп 667мг/мл 15мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295085	4786796	Дюфастон таб. 10мг №14 Аббот	Дюфастон таб. 10мг №14 Аббот	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295086	4786797	Дюфастон таб. 10мг №20 Аббот	Дюфастон таб. 10мг №20 Аббот	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295087	4786798	Европрост супп. №10 (Витапрост)	Европрост супп. №10 (Витапрост)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295088	4786799	Европрост-плюс супп. №10 (Витапрост)	Европрост-плюс супп. №10 (Витапрост)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295089	4786800	Енат капс. 200МЕ №30	Енат капс. 200МЕ №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295090	4786801	Енат капс. 400МЕ №30	Енат капс. 400МЕ №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295091	4786802	Жанин №21	Жанин №21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295092	4786803	Жгут	Жгут	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295093	4786804	Жемчужный кальций капс.№30	Жемчужный кальций капс.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295094	4786805	Женавит капс.100мг№30	Женавит капс.100мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295095	4786806	Женский Депилятор спрей 150гр &	Женский Депилятор спрей 150гр &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295096	4786807	Женский Крем-Депилятор Eclair  125мл	Женский Крем-Депилятор Eclair  125мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295097	4786808	Женский Крем-Депилятор Eclair  75мл	Женский Крем-Депилятор Eclair  75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295098	4786809	Женский прокладка  №10 "Arzoni"	Женский прокладка  №10 "Arzoni"	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295099	4786810	Женский прокладка Black Ladiy Long 2 №20	Женский прокладка Black Ladiy Long 2 №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295100	4786811	Женский прокладка Black Long 2 №32	Женский прокладка Black Long 2 №32	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295101	4786812	Женский прокладка Slim Normal 1 №24	Женский прокладка Slim Normal 1 №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295102	4786813	Женский прокладка Slim Normal 1 №26	Женский прокладка Slim Normal 1 №26	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295103	4786814	Женский прокладка Ultra long 1 №40	Женский прокладка Ultra long 1 №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295104	4786815	Женский прокладка Ultra long 2 №32	Женский прокладка Ultra long 2 №32	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295105	4786816	Женшен пластырь 90х130 №25	Женшен пластырь 90х130 №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295106	4786817	Женьшень-"LIK"настойка 30мл№1	Женьшень-"LIK"настойка 30мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295107	4786818	Жидкий Мило COMFORT  500мл ФРУКТОВАЯ	Жидкий Мило COMFORT  500мл ФРУКТОВАЯ	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295108	4786819	Закуин 200 мг таб №60	Закуин 200 мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295109	4786820	Звездочка ЛОР спрей наз. 0,15% 30мл	Звездочка ЛОР спрей наз. 0,15% 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295110	4786821	Звездочка Ноз капли назальные 0,05% 0,1% 10мл	Звездочка Ноз капли назальные 0,05% 0,1% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295111	4786822	Зедпар гель 30 г	Зедпар гель 30 г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295112	4786823	Зедпар Форте №100	Зедпар Форте №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295113	4786824	Зеленка 1% 20мл	Зеленка 1% 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295114	4786825	Зеленка 1% 20мл PHARMACOM MEDICINE	Зеленка 1% 20мл PHARMACOM MEDICINE	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295115	4786826	Зералго таб. 100мг №15	Зералго таб. 100мг №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295116	4786827	Зеркало гинекологический	Зеркало гинекологический	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295117	4786828	Зесткал сусп.вкус.Клубники 200мл№1	Зесткал сусп.вкус.Клубники 200мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295118	4786829	Зеталин р-р Инекций 500мг/2мл	Зеталин р-р Инекций 500мг/2мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295119	4786830	Зефексал 120мг таб №20	Зефексал 120мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295120	4786831	Зефексал 180мг таб №20	Зефексал 180мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295121	4786832	Зилт 75мг №28	Зилт 75мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295122	4786833	Зинерин(Зинерит)Адапален лосьон 35мл№1	Зинерин(Зинерит)Адапален лосьон 35мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295123	4786834	Зиомицин таб.250мг№6 Азитромицин	Зиомицин таб.250мг№6 Азитромицин	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295124	4786835	Зиромин табл.500мг №3	Зиромин табл.500мг №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295125	4786836	Зитмак 250мг таб №6	Зитмак 250мг таб №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295126	4786837	Зитмак 500мг таб №6	Зитмак 500мг таб №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295127	4786838	Зитмак пор 16г дляприг сусп 15мл	Зитмак пор 16г дляприг сусп 15мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295128	4786839	Зовиракс крем 5% 2г.	Зовиракс крем 5% 2г.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295129	4786840	Золотая Звезда пор. со вкусом Апелсин 15г	Золотая Звезда пор. со вкусом Апелсин 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295130	4786841	Зонд желудочный BEROTUBE р-р CH/FR 08	Зонд желудочный BEROTUBE р-р CH/FR 08	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295131	4786842	Зонд желудочный BEROTUBE р-р CH/FR 10	Зонд желудочный BEROTUBE р-р CH/FR 10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295132	4786843	Зонд желудочный BEROTUBE р-р CH/FR 12	Зонд желудочный BEROTUBE р-р CH/FR 12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295133	4786844	Зонд желудочный BEROTUBE р-р CH/FR 16	Зонд желудочный BEROTUBE р-р CH/FR 16	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295134	4786845	Зонд желудочный BEROTUBE р-р CH/FR 20	Зонд желудочный BEROTUBE р-р CH/FR 20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295135	4786846	Зонд желудочный BEROTUBE р-р CH/FR 24	Зонд желудочный BEROTUBE р-р CH/FR 24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295136	4786847	Зорасен 100мг капс №30	Зорасен 100мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295137	4786848	Зубная паста "Солгет тройное действие 154гр	Зубная паста "Солгет тройное действие 154гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295138	4786849	Зубная паста blend-a-med 75мл	Зубная паста blend-a-med 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295139	4786850	Зубная Паста COLGATE TOTAL 12  CLEAN MINT 100ml	Зубная Паста COLGATE TOTAL 12  CLEAN MINT 100ml	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295140	4786851	Зубная Паста DIROL  лимон 105гр	Зубная Паста DIROL  лимон 105гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295141	4786852	Зубная паста Miswak 25г	Зубная паста Miswak 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295142	4786853	Зубная Паста RED 100г Хемани	Зубная Паста RED 100г Хемани	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295143	4786854	Зубная Паста Мисвак 100г Хемани	Зубная Паста Мисвак 100г Хемани	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295144	4786855	Зубная Паста Мисвак 120г DABUR	Зубная Паста Мисвак 120г DABUR	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295145	4786856	Зубная ПастаColgate max Fresh Clean mint 100ml	Зубная ПастаColgate max Fresh Clean mint 100ml	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295146	4786857	Зубная ПастаColgate OPTIC WHITE Lasting White 75мл	Зубная ПастаColgate OPTIC WHITE Lasting White 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295147	4786858	Зумалис 10мг №10 Тадалафил	Зумалис 10мг №10 Тадалафил	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295148	4786859	Зумалис 20мг №10 Тадалафил	Зумалис 20мг №10 Тадалафил	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295149	4786860	Зумм-25 гран. д/приг. р-ра 25мг №10 (пакетики)	Зумм-25 гран. д/приг. р-ра 25мг №10 (пакетики)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295150	4786861	Зумм-25 р-р для ин./инф. 50мг/2мл 2мл №5	Зумм-25 р-р для ин./инф. 50мг/2мл 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295151	4786862	Зумм-25 таб. 25мг №10	Зумм-25 таб. 25мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295152	4786863	Ибуклин Актив таб. №20	Ибуклин Актив таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295153	4786864	Ибуклин бэби сусп. переорал. 100мг/5мл №12 пакетики	Ибуклин бэби сусп. переорал. 100мг/5мл №12 пакетики	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295154	4786865	Ибуклин таб. 400мг/325мг №20	Ибуклин таб. 400мг/325мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295155	4786866	Ибуклин Юниор таб. 100мг/125мг. №20	Ибуклин Юниор таб. 100мг/125мг. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295156	4786867	Ибуклин-Леди таб 400мг/80мг №10	Ибуклин-Леди таб 400мг/80мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295157	4786868	Ибупрофен сусп 100мг/5мл 50мл	Ибупрофен сусп 100мг/5мл 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295158	4786869	Ибупрофен таб. 200 мг №50 !!!	Ибупрофен таб. 200 мг №50 !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295159	4786870	Ибуфен Д сусп 100мл!!!	Ибуфен Д сусп 100мл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295160	4786871	Ибуфен сусп. 100мл с малин.вкусом!!	Ибуфен сусп. 100мл с малин.вкусом!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295161	4786872	Игла спинальная Quincke 20G	Игла спинальная Quincke 20G	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295162	4786873	Игла спинальная Quincke 22G	Игла спинальная Quincke 22G	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295163	4786874	Игла спинальная Quincke 24G	Игла спинальная Quincke 24G	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295164	4786875	Идринол амп.100мг/мл.5мл№10	Идринол амп.100мг/мл.5мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295165	4786876	Изамин  р-р для инф 200мл (инфезол)	Изамин  р-р для инф 200мл (инфезол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295166	4786877	Изее-5 сироп 200мл №1	Изее-5 сироп 200мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295167	4786878	Изониазид 100мг таб №100	Изониазид 100мг таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295168	4786879	Изониазид 200мг таб №50	Изониазид 200мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295169	4786880	Изониазид таб. 300мг №10 O'zkimyofarm AJ	Изониазид таб. 300мг №10 O'zkimyofarm AJ	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295170	4786881	Имбиря порошок из корня 100гр	Имбиря порошок из корня 100гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295171	4786882	Иммунал 80мг №20 таб.	Иммунал 80мг №20 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295172	4786883	Иммунафф капс 400мг №30	Иммунафф капс 400мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295173	4786884	Иммуно-Салб №30 кап	Иммуно-Салб №30 кап	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295174	4786885	Иммунокомплекс капс. 0.5г №10	Иммунокомплекс капс. 0.5г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295175	4786886	Иммуномодулин 0,01% амп 1мл №10 !!	Иммуномодулин 0,01% амп 1мл №10 !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295176	4786887	Иммунотроп саше №10	Иммунотроп саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295177	4786888	Имодиум капс 2мг №20	Имодиум капс 2мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295178	4786889	Имудон  №40 Оргинал	Имудон  №40 Оргинал	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295179	4786890	Имудон таб  №40!!!	Имудон таб  №40!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295180	4786891	Имун конц д/приг 10г/50мл	Имун конц д/приг 10г/50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295181	4786892	Ин-Грипп таб №100	Ин-Грипп таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295182	4786893	Ингавирин капс. 60мг №7	Ингавирин капс. 60мг №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295183	4786894	Ингалипт спрей 20мл	Ингалипт спрей 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295184	4786895	Ингалипт спрей 30мл№1	Ингалипт спрей 30мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295185	4786896	Индап капсулы 2,5 мг N30	Индап капсулы 2,5 мг N30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295186	4786897	Индапамид SR Таб 1,5мг №30	Индапамид SR Таб 1,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295187	4786898	Индол таб №30	Индол таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295188	4786899	Индомеатцин мазь 10% 30г МР	Индомеатцин мазь 10% 30г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295189	4786900	Индометатцин мазь 1% 30г 40г	Индометатцин мазь 1% 30г 40г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295190	4786901	Индометацин - Фармаприм супп.рек. 100мг №6	Индометацин - Фармаприм супп.рек. 100мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295191	4786902	Индометацин супп 100мг №10	Индометацин супп 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295192	4786903	Индометацин таб 25мг №30	Индометацин таб 25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295193	4786904	Иноклим капс 40мг №30	Иноклим капс 40мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295194	4786905	Иномед сусп. д/приём 100мг/5мл.100мл№1 Клубники	Иномед сусп. д/приём 100мг/5мл.100мл№1 Клубники	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295195	4786906	Иномед сусп. д/приём 100мг/5мл.100мл№1 Мультифрукт	Иномед сусп. д/приём 100мг/5мл.100мл№1 Мультифрукт	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295196	4786907	Иноседа  таблетки 500 мг №20	Иноседа  таблетки 500 мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295197	4786908	Иноседа сироп 250мг/5мл 120мл №1	Иноседа сироп 250мг/5мл 120мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295198	4786909	Инотир гранулы.№20 саше	Инотир гранулы.№20 саше	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295199	4786910	Инсти гранулы для детей №5!!!	Инсти гранулы для детей №5!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295200	4786911	Инсти гранулы травяные №5	Инсти гранулы травяные №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295201	4786912	Инсулатард 100МЕ/мл10мл№1!!!	Инсулатард 100МЕ/мл10мл№1!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295202	4786913	Инсулипон р-р 600мг 50мл №1	Инсулипон р-р 600мг 50мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295203	4786914	Инсулипон таб 600мг №30	Инсулипон таб 600мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295204	4786915	Инсуприд таб. 2мг №30	Инсуприд таб. 2мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295205	4786916	Инсуфор таб 1000мг №30	Инсуфор таб 1000мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295206	4786917	Инсуфор таб 850мг №30	Инсуфор таб 850мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295207	4786918	Инсуфор таб. 500мг №30	Инсуфор таб. 500мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295208	4786919	Интеледжи таб 120мг  №60	Интеледжи таб 120мг  №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295209	4786920	Интру-Салб капс №30	Интру-Салб капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295210	4786921	Инфамин р-р 100мл	Инфамин р-р 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295211	4786922	Инфезол МР 40 раствор для инфузий 250 мл	Инфезол МР 40 раствор для инфузий 250 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295212	4786923	Инфлюцид А таб. №40	Инфлюцид А таб. №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295213	4786924	Ипроид Антигеморроидальная маз 15г	Ипроид Антигеморроидальная маз 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295214	4786925	Ипроид свечи Антигеморроидальные №10	Ипроид свечи Антигеморроидальные №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295215	4786926	Ирбесан 150мг таб №28	Ирбесан 150мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295216	4786927	Ирбесан 300мг таб №28	Ирбесан 300мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295217	4786928	ИРС - 19  спрей 20 мл	ИРС - 19  спрей 20 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295218	4786929	Исирик 25г.№10	Исирик 25г.№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295219	4786930	Исирик 40г№6 пакетики	Исирик 40г№6 пакетики	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295220	4786931	Исмижен таб. 7мг №30	Исмижен таб. 7мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295221	4786932	Итомед таб.50мг№40	Итомед таб.50мг№40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295222	4786933	Ихтиол мазь 20% 25г	Ихтиол мазь 20% 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295223	4786934	Ихтиол свечи 200мг №10 (Дента)	Ихтиол свечи 200мг №10 (Дента)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295224	4786935	Ихтиоловые мазь 25г МР	Ихтиоловые мазь 25г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295225	4786936	Ишагра зинг плюс таб шип №4	Ишагра зинг плюс таб шип №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295226	4786937	Ишагра-100мг таб №4	Ишагра-100мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295227	4786938	Ишалив Сироп 200мл	Ишалив Сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295228	4786939	Йодамарин 200мг таб №100	Йодамарин 200мг таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295229	4786940	Йодомарин 200 №100	Йодомарин 200 №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295230	4786941	Йодомарин-100 №100.	Йодомарин-100 №100.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295231	4786942	Йодострим 100мг таб №60	Йодострим 100мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295232	4786943	Йодострим 200мг таб №60	Йодострим 200мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295233	4786944	Йодофол табл. №60	Йодофол табл. №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295234	4786945	Кавинтон амп.10мг/мл2мл№10	Кавинтон амп.10мг/мл2мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295235	4786946	Кавинтон таб.5мг№50	Кавинтон таб.5мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295236	4786947	Кавинтон-Форте таб.10мг№30	Кавинтон-Форте таб.10мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295237	4786948	Калгель гель 0.33%.10г!!!	Калгель гель 0.33%.10г!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295238	4786949	Калий хлор 40мг 10мл №10	Калий хлор 40мг 10мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295239	4786950	Калий хлор 40мг 10мл №10 МР	Калий хлор 40мг 10мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295240	4786951	Калия оротат таб. 0,5г №30	Калия оротат таб. 0,5г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295241	4786952	Калция глицерофосфат таб №10	Калция глицерофосфат таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295242	4786953	Кальцемин Адванс №60 таб	Кальцемин Адванс №60 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295243	4786954	Кальцемин таб. №120	Кальцемин таб. №120	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295244	4786955	Кальцидон Д3 таб №50	Кальцидон Д3 таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295245	4786956	Кальций глюконат 10% 5мл №10 МР	Кальций глюконат 10% 5мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295246	4786957	Кальций Д3 капс №30	Кальций Д3 капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295247	4786958	Кальций хлор 5% пор. для приг	Кальций хлор 5% пор. для приг	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295248	4786959	Кальций-Д3 Никомед 500мг/200МЕ №100!!	Кальций-Д3 Никомед 500мг/200МЕ №100!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295249	4786960	Кальцифар Д3 400мг таб №50	Кальцифар Д3 400мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295250	4786961	Кальция глюконат 10% 5мл №10	Кальция глюконат 10% 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295251	4786962	Кальция глюконат таб. 0,5г №10	Кальция глюконат таб. 0,5г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295252	4786963	Кальция хлорид 10% 10мл №10	Кальция хлорид 10% 10мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295253	4786964	Кальция хлорид амп.10%.10мл№5 (Радикс)	Кальция хлорид амп.10%.10мл№5 (Радикс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295254	4786965	Камагра таб.100мг№4 Силденафил	Камагра таб.100мг№4 Силденафил	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295255	4786966	Камагра таб.50мг№4 Силденафил	Камагра таб.50мг№4 Силденафил	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295256	4786967	Камелот табл. 15мг №20	Камелот табл. 15мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295257	4786968	Каметон спрей 20мл	Каметон спрей 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295258	4786969	Камистад Беби гель 10г	Камистад Беби гель 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295259	4786970	Камистад гель 10г	Камистад гель 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295260	4786971	Камфора  масляний 10%  25мл	Камфора  масляний 10%  25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295261	4786972	Камфора р-р спиртовый 10% 25мл	Камфора р-р спиртовый 10% 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295262	4786973	Камфорная мазь 10%.25г.№1	Камфорная мазь 10%.25г.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295263	4786974	Канамицин 1,0г №1	Канамицин 1,0г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295264	4786975	Кандибиотик уш.капли 5мл	Кандибиотик уш.капли 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295265	4786976	Кандизол крем 1 15г	Кандизол крем 1 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295266	4786977	Канефрон-Н таб. №60!!!	Канефрон-Н таб. №60!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295267	4786978	Канитрин Нео, 1000 мг/10 мл, 50 мл, флак.	Канитрин Нео, 1000 мг/10 мл, 50 мл, флак.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295268	4786979	Каниферол Н таб №75	Каниферол Н таб №75	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295269	4786980	Канюла С портом в-в медиплус 16г	Канюла С портом в-в медиплус 16г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295270	4786981	Капсикам мазь 30г	Капсикам мазь 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295271	4786982	Каптоприл 0,025г. №40	Каптоприл 0,025г. №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295272	4786983	Карбамазепин таб. 200мг №50 !!	Карбамазепин таб. 200мг №50 !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295273	4786984	Карбофлин супп. рек. №5	Карбофлин супп. рек. №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295274	4786985	Карвидил таб. 6,25мг №28	Карвидил таб. 6,25мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295275	4786986	Кардиоассист №60	Кардиоассист №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295276	4786987	Кардиомагнил 150мг №100 таб.	Кардиомагнил 150мг №100 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295277	4786988	Кардиомагнил таб 75мг+15,2мг №50 М Р	Кардиомагнил таб 75мг+15,2мг №50 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295278	4786989	Кардиомагнил таб. 75 мг №100	Кардиомагнил таб. 75 мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295279	4786990	Кардионик 100мл флак, Сеем	Кардионик 100мл флак, Сеем	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295280	4786991	Кардосал таб 10мг №28	Кардосал таб 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295281	4786992	Кардосал таб 20мг №28	Кардосал таб 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295282	4786993	Кардосал таб 40мг №28	Кардосал таб 40мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295283	4786994	Карнилев р-р 1г/10мл №10	Карнилев р-р 1г/10мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295284	4786995	Карнис 120мл сироп для детей	Карнис 120мл сироп для детей	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295285	4786996	Карнит р-р д/ин 5мл №5	Карнит р-р д/ин 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295286	4786997	Каровел р-р 1г/5мл №5	Каровел р-р 1г/5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295287	4786998	Карсил таб. №80	Карсил таб. №80	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295288	4786999	Карсил форте кап. 90мг №30	Карсил форте кап. 90мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295289	4787000	Картил супер крем 50г	Картил супер крем 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295290	4787001	Касарк 16мг №30 таб	Касарк 16мг №30 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295291	4787002	Касарк 32мг №30 таб	Касарк 32мг №30 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295292	4787003	Каспаргин 100мл	Каспаргин 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295293	4787004	Каспаргин р-р инф 250мл	Каспаргин р-р инф 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295294	4787005	Катаксол гл.кап.0.015%.15мл№1	Катаксол гл.кап.0.015%.15мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295295	4787006	Каталаксон 1,5г (Цефтриаксон сульбактам)	Каталаксон 1,5г (Цефтриаксон сульбактам)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295296	4787007	Катаракс гл/капли 0,015% 15мл	Катаракс гл/капли 0,015% 15мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295297	4787008	Катетер Бабочка 18G KD-FLY	Катетер Бабочка 18G KD-FLY	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295298	4787009	Катетер Бабочка 19G KD-FLY	Катетер Бабочка 19G KD-FLY	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295299	4787010	Катетер в-в клапон KD-Fix-20G	Катетер в-в клапон KD-Fix-20G	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295300	4787011	Катетер в/в KD-FIX 18G	Катетер в/в KD-FIX 18G	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295301	4787012	Катетер Фолея латекс. Beroсath размер 14СН	Катетер Фолея латекс. Beroсath размер 14СН	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295302	4787013	Катетер Фолея латекс. Beroсath размер 18СН	Катетер Фолея латекс. Beroсath размер 18СН	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295303	4787014	Катетер Фолея латекс. Beroсath размер 20СН	Катетер Фолея латекс. Beroсath размер 20СН	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295304	4787015	Катетер Фолея латекс. Beroсath размер 22СН	Катетер Фолея латекс. Beroсath размер 22СН	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295305	4787016	Катетер Фолея латекс. Beroсath размер 24СН	Катетер Фолея латекс. Beroсath размер 24СН	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295306	4787017	Катетер Фолея латекс. Beroсath размер 26СН	Катетер Фолея латекс. Beroсath размер 26СН	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295307	4787018	Квамател таб 20мг №28	Квамател таб 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295308	4787019	Квамател таб 40мг №14	Квамател таб 40мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295309	4787020	Кванил таб.500мг№10	Кванил таб.500мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295310	4787021	Квасцы алюмокалиевый порошок 25г	Квасцы алюмокалиевый порошок 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295311	4787022	Квертин таб 40мг №30 (Корвитин)	Квертин таб 40мг №30 (Корвитин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295312	4787023	Кейвер амп 2мл №10	Кейвер амп 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295313	4787024	Кейвер таб. п/о 25мг №30	Кейвер таб. п/о 25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295314	4787025	Келак р-р инф. 30мг/мл 1 мл №10	Келак р-р инф. 30мг/мл 1 мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295315	4787026	Кеналог 40мг/1мл №5	Кеналог 40мг/1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295316	4787027	Кетап таб. 200мг №30	Кетап таб. 200мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295317	4787028	Кетап таб. 25мг №30	Кетап таб. 25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295318	4787029	Кетонал 50мг №25	Кетонал 50мг №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295319	4787030	Кетонал гель 2,5% 50г	Кетонал гель 2,5% 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295320	4787031	Кетонал ДУО 150 мг №30	Кетонал ДУО 150 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295321	4787032	Кетонал крем 5% 30г	Кетонал крем 5% 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295322	4787033	Кеторол гель 2% 30г.	Кеторол гель 2% 30г.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295323	4787034	Кеторол р-р 30мг/мл 1мл. №10	Кеторол р-р 30мг/мл 1мл. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295324	4787035	Кеторол Экспресс таб 10мг №20	Кеторол Экспресс таб 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295325	4787036	Кеторолак р-р 30мг/мл 1мл №10	Кеторолак р-р 30мг/мл 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295383	4787094	Коделак НЕО №10 таб.	Коделак НЕО №10 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295326	4787037	Кеторолак таб.10мг №20	Кеторолак таб.10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295327	4787038	Кетотифен  таб 1мг №30 Русс !!!	Кетотифен  таб 1мг №30 Русс !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295328	4787039	Кидвит сироп 100мл	Кидвит сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295329	4787040	Кидфлейм таб. №30	Кидфлейм таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295330	4787041	Кизил-май.Uz 100мл№1	Кизил-май.Uz 100мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295331	4787042	Киносер р.р 100мл  (Левосер)	Киносер р.р 100мл  (Левосер)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295332	4787043	Кислоноль гпан шип 5г №10	Кислоноль гпан шип 5г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295333	4787044	Китанал  100мг/2мл   №10 МР	Китанал  100мг/2мл   №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295334	4787045	Китонал гель 2,5% 30г МР	Китонал гель 2,5% 30г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295335	4787046	Клабел 500мг таб №14	Клабел 500мг таб №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295336	4787047	Клабел сусп 250мг/70мл	Клабел сусп 250мг/70мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295337	4787048	Клавомед сусп. 156,25мг/5мл 80мл. №1	Клавомед сусп. 156,25мг/5мл 80мл. №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295338	4787049	Клазин супп.ваг.90мг№6	Клазин супп.ваг.90мг№6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295339	4787050	Клайра таб. №28	Клайра таб. №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295340	4787051	Кламок 1000мг таб №10 Нобел	Кламок 1000мг таб №10 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295341	4787052	Кламок 156,25 порш сусп 100мл	Кламок 156,25 порш сусп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295342	4787053	Кламок таб.375мг№15	Кламок таб.375мг№15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295343	4787054	Кламок таб.625мг№15	Кламок таб.625мг№15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295344	4787055	Кларанта таб. 250мг №14	Кларанта таб. 250мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295345	4787056	Кларанта таб.500мг№14	Кларанта таб.500мг№14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295346	4787057	Кларидол сироп 100мл (Лоратадин)	Кларидол сироп 100мл (Лоратадин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295347	4787058	Кларитин таб 10мг №10	Кларитин таб 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295348	4787059	Кларитро 500мг №10 таб	Кларитро 500мг №10 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295349	4787060	Клацид SR 500мг №14	Клацид SR 500мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295350	4787061	Клексан 2000 0,2мл №2	Клексан 2000 0,2мл №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295351	4787062	Клексан 4000 0,4мл №1	Клексан 4000 0,4мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295352	4787063	Клексан 8000 р-р анти Ха МЕ/0,8 N1 Sanofi	Клексан 8000 р-р анти Ха МЕ/0,8 N1 Sanofi	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295353	4787064	Климадинон таб №60	Климадинон таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295354	4787065	Климаксан гранулы 10г	Климаксан гранулы 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295355	4787066	Клининг-Энема120мл№1!!	Клининг-Энема120мл№1!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295356	4787067	Клион-Д таб.вагин.№10	Клион-Д таб.вагин.№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295357	4787068	Клодагрел 75мг №30таб	Клодагрел 75мг №30таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295358	4787069	Клодифен гель 5% 45гр. №1	Клодифен гель 5% 45гр. №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295359	4787070	Клодифен гл капли 0,1% 5мл	Клодифен гл капли 0,1% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295360	4787071	Клодифен иньекций 75мг/3мл №5	Клодифен иньекций 75мг/3мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295361	4787072	Клопидогрел таб.75мг№30	Клопидогрел таб.75мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295362	4787073	Клопицин 75мг таб №30	Клопицин 75мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295363	4787074	Клостилбегит таб. 50мг №10	Клостилбегит таб. 50мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295364	4787075	Клотиклин капс ваг №7	Клотиклин капс ваг №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295365	4787076	Клотримазол 1% мазь 25г	Клотримазол 1% мазь 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295366	4787077	Клотримазол 1% мазь 25г МР	Клотримазол 1% мазь 25г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295367	4787078	Клотримазол 100мг с/в №10	Клотримазол 100мг с/в №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295368	4787079	Клотримазол мазь 1% 20г	Клотримазол мазь 1% 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295369	4787080	Клофит таб.50мг№24	Клофит таб.50мг№24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295370	4787081	КМА 250мл  МР	КМА 250мл  МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295371	4787082	КМА р-р д/инф. 200мл	КМА р-р д/инф. 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295372	4787083	КМА р-р д/инф. 200мл Русс (Макрус)	КМА р-р д/инф. 200мл Русс (Макрус)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295373	4787084	Ко-Амлесса 4мг/10мг/1,25мг №30	Ко-Амлесса 4мг/10мг/1,25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295374	4787085	Ко-Амлесса 4мг/5мг/1,25мг №30	Ко-Амлесса 4мг/5мг/1,25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295375	4787086	Ко-Амлесса 8мг/10мг/2,5мг №30	Ко-Амлесса 8мг/10мг/2,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295376	4787087	Ко-Амлесса 8мг/5мг/2,5мг №30	Ко-Амлесса 8мг/5мг/2,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295377	4787088	Ко-Валодип таб. 10мг/160мг/25мг №30	Ко-Валодип таб. 10мг/160мг/25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295378	4787089	Ко-Валодип таб. 5мг/160мг/12,5мг №30	Ко-Валодип таб. 5мг/160мг/12,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295379	4787090	Ко-ирбесан 150мг таб №28	Ко-ирбесан 150мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295380	4787091	Ко-ирбесан 300мг таб №28	Ко-ирбесан 300мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295381	4787092	Ко-Пренесса таб. 4мг/1,25мг №30	Ко-Пренесса таб. 4мг/1,25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295382	4787093	Ко-Рамас 2,5 мг/12,5 мг таб №28	Ко-Рамас 2,5 мг/12,5 мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295384	4787095	Коензим Q-10 Maxx капс №40	Коензим Q-10 Maxx капс №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295385	4787096	Кокарнит лиоф пор №3	Кокарнит лиоф пор №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295386	4787097	Кокарнит лиоф.пор.+раств.№3	Кокарнит лиоф.пор.+раств.№3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295387	4787098	Колефер  капли д/приёма внутрь 10мл №1	Колефер  капли д/приёма внутрь 10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295388	4787099	Коликвел капли 15мл!!	Коликвел капли 15мл!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295389	4787100	Коликид таб.125мг №30	Коликид таб.125мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295390	4787101	Компливит Актив банан таб. №30	Компливит Актив банан таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295391	4787102	Компливит Актив жев.таб.д.дет №30 Вишня	Компливит Актив жев.таб.д.дет №30 Вишня	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295392	4787103	Компливит кальций Д3 таб. №100 (апельсин)	Компливит кальций Д3 таб. №100 (апельсин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295393	4787104	Конвулекс 150мг капс. №100	Конвулекс 150мг капс. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295394	4787105	Конвулекс капс. 500мг №100	Конвулекс капс. 500мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295395	4787106	Конкор таб. 10мг №50	Конкор таб. 10мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295396	4787107	Конкор таб. 5мг №30	Конкор таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295397	4787108	Конкор таб.10мг №50	Конкор таб.10мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295398	4787109	Конкор таб.5мг№50	Конкор таб.5мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295399	4787110	Конкор-Кор таб 2.5мг №30	Конкор-Кор таб 2.5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295400	4787111	Контривен (Контрикал) 10 000 Ед 1мл №10	Контривен (Контрикал) 10 000 Ед 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295401	4787112	Кора Седана капс №99	Кора Седана капс №99	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295402	4787113	Кораксан 7,5мг №56	Кораксан 7,5мг №56	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295403	4787114	Корвалол 25мл	Корвалол 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295404	4787115	Корвалол таб №30	Корвалол таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295405	4787116	Корвитин 0,5г флакон №1	Корвитин 0,5г флакон №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295406	4787117	Кордарон таб. 200мг №30	Кордарон таб. 200мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295407	4787118	Кордиамин 25% 2мл  №10 Русс	Кордиамин 25% 2мл  №10 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295408	4787119	Корега крем нейтральний вкус 40г	Корега крем нейтральний вкус 40г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295409	4787120	Корега крем освежающий вкус 40г	Корега крем освежающий вкус 40г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295410	4787121	Корега крем Экстра сильний мятный 40г	Корега крем Экстра сильний мятный 40г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295411	4787122	Корега крем Экстра сильний мятный 70г	Корега крем Экстра сильний мятный 70г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295412	4787123	Короним таб.10мг№30	Короним таб.10мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295413	4787124	Короним таб.5мг№30	Короним таб.5мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295414	4787125	Кортексин 10мг №10	Кортексин 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295415	4787126	Кортексин 5мг №10	Кортексин 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295416	4787127	Кортел Н 40мг/12,5мг таб №28	Кортел Н 40мг/12,5мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295417	4787128	Кортел Н-80 таб. 80мг/12,5мг №30	Кортел Н-80 таб. 80мг/12,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295418	4787129	Костарокс 60мг №28	Костарокс 60мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295419	4787130	Кофанол сироп 100мл	Кофанол сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295420	4787131	Кофеина-бензоат натрия таб 100мг №10!!	Кофеина-бензоат натрия таб 100мг №10!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295421	4787132	Креабест пор. д/инф. 1,0г №1	Креабест пор. д/инф. 1,0г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295422	4787133	Креатон пор.инъек.1г.№1	Креатон пор.инъек.1г.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295423	4787134	Крезам 10000 капс. №10	Крезам 10000 капс. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295424	4787135	Крем "Belle Jardin" От Морщин 125мл &	Крем "Belle Jardin" От Морщин 125мл &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295425	4787136	Крем DOVE банкали 75мл &	Крем DOVE банкали 75мл &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295426	4787137	Крем для лица "козье молоко" 125мл	Крем для лица "козье молоко" 125мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295427	4787138	Крем для лица "Огуречный" 125 мл	Крем для лица "Огуречный" 125 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295428	4787139	крем для РУК 50мл	крем для РУК 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295429	4787140	Крем Эклаир Ассортимент 44мл &	Крем Эклаир Ассортимент 44мл &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295430	4787141	Креон капс 10000 №20	Креон капс 10000 №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295431	4787142	Креон капс 25000 №20 Аббот	Креон капс 25000 №20 Аббот	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295432	4787143	Кретамин Таблетки №30	Кретамин Таблетки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295433	4787144	Крианто пор р-р д/инек 1г	Крианто пор р-р д/инек 1г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295434	4787145	Кромовиз гл капли 4,0% 10мл	Кромовиз гл капли 4,0% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295435	4787146	Ксилазол назал спрей 0,5/50мг 10мл №1	Ксилазол назал спрей 0,5/50мг 10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295436	4787147	Ксилазол назал спрей 1,0/50мг\\мл 10мл №1	Ксилазол назал спрей 1,0/50мг\\мл 10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295437	4787148	Ксилат р-р 200мл	Ксилат р-р 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295494	4787205	Левон 500 таб №5	Левон 500 таб №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295438	4787149	Куленто гранул 4мг саше №28	Куленто гранул 4мг саше №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295439	4787150	Куленто табл 10мг №28	Куленто табл 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295440	4787151	Куленто табл 5мг №28	Куленто табл 5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295441	4787152	Куленто таблетки 10мг №28	Куленто таблетки 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295442	4787153	Курантил N 25 №120	Курантил N 25 №120	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295443	4787154	Курантил N25 таб. №50 МР МР МР	Курантил N25 таб. №50 МР МР МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295444	4787155	Куриозин гель15г.№1	Куриозин гель15г.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295445	4787156	Кюпен амп.75мг/3мл№5	Кюпен амп.75мг/3мл№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295446	4787157	Кюпен гель 20г	Кюпен гель 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295447	4787158	Кюпен таб №100!!!	Кюпен таб №100!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295448	4787159	Кюпен-Юниор сусп.60мл№1	Кюпен-Юниор сусп.60мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295449	4787160	Кюсид Бэби сусп 30мл	Кюсид Бэби сусп 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295450	4787161	Л Монтус взр таб. 5мг/10мг №10	Л Монтус взр таб. 5мг/10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295451	4787162	Л-Дексопт капли глазные 5мл	Л-Дексопт капли глазные 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295452	4787163	Л-оптик гл.капли 0,5% 5мл	Л-оптик гл.капли 0,5% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295453	4787164	Лагохин таб №80	Лагохин таб №80	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295454	4787165	Лаен таб.600мкг№10	Лаен таб.600мкг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295455	4787166	Лазолван сироп 15мг/5мл 100мл	Лазолван сироп 15мг/5мл 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295456	4787167	Лазолван сироп 30мг/5мл 100мл	Лазолван сироп 30мг/5мл 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295457	4787168	Лайботен Лиоф 1,0г!!	Лайботен Лиоф 1,0г!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295458	4787169	Лайленон таб. 25мг №30	Лайленон таб. 25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295459	4787170	Лакома глаз капли 0,005% 2,5мл	Лакома глаз капли 0,005% 2,5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295460	4787171	Лакома-Т гл. капли 2,5мл	Лакома-Т гл. капли 2,5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295461	4787172	Лакто G капс. №10	Лакто G капс. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295462	4787173	Лакто-G капс. №10	Лакто-G капс. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295463	4787174	Лакто-G капс. №10 МP	Лакто-G капс. №10 МP	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295464	4787175	Лактофильтрум таб.№60	Лактофильтрум таб.№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295465	4787176	Ламитор таб 50мг №10	Ламитор таб 50мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295466	4787177	Лантус Solo Star р-р для подкож. введ. 100ЕД/мл 3мл №5	Лантус Solo Star р-р для подкож. введ. 100ЕД/мл 3мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295467	4787178	Ларитилен таб со вкусом мяты №20	Ларитилен таб со вкусом мяты №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295468	4787179	Ларфикс таб.8мг№30	Ларфикс таб.8мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295469	4787180	Латрен для инфузий 0,5мг 200мл 06,23	Латрен для инфузий 0,5мг 200мл 06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295470	4787181	Латрен р-р 0,5мг/мл 200мл (Пентоксим)	Латрен р-р 0,5мг/мл 200мл (Пентоксим)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295471	4787182	Латригал жев таб 100мг №30	Латригал жев таб 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295472	4787183	Лацидофорте капсулы №10	Лацидофорте капсулы №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295473	4787184	Левамеколь мазь 40г	Левамеколь мазь 40г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295474	4787185	Левамикдол мазь 30г	Левамикдол мазь 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295475	4787186	Левамикол мазь 30г МР	Левамикол мазь 30г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295476	4787187	Леванта (Левофлоксацин) р-р 100мл	Леванта (Левофлоксацин) р-р 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295477	4787188	Леводекс 500мг таб №6	Леводекс 500мг таб №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295478	4787189	Леводекс инф 100мл	Леводекс инф 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295479	4787190	Левозолин 500мг/100мл №1	Левозолин 500мг/100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295480	4787191	Левоин 100мл Радикс	Левоин 100мл Радикс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295481	4787192	Левокар р-р д/ин 1000мг/5мл №5	Левокар р-р д/ин 1000мг/5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295482	4787193	Левоксимед гл./ушли капли 0,5% 5мл №1	Левоксимед гл./ушли капли 0,5% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295483	4787194	Левоксимед таб 500мг №7	Левоксимед таб 500мг №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295484	4787195	Левомак таб 500мг №5 МР	Левомак таб 500мг №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295485	4787196	Левометрин супп.ваг №10	Левометрин супп.ваг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295486	4787197	Левомицетин MF гл. капли 0,25% 10мл	Левомицетин MF гл. капли 0,25% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295487	4787198	Левомицетин гл/капли 0,25% 10мл	Левомицетин гл/капли 0,25% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295488	4787199	Левомицетин капли гл 0,25% 5мл №1	Левомицетин капли гл 0,25% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295489	4787200	Левомицетин капли гл 0,25% 5мл №1 МР	Левомицетин капли гл 0,25% 5мл №1 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295490	4787201	Левомицетин пор. д/инъекц. 1г	Левомицетин пор. д/инъекц. 1г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295491	4787202	Левомицетин р-р спирт 0,25% 25мл	Левомицетин р-р спирт 0,25% 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295492	4787203	Левомицетин таб. 0,5 №10	Левомицетин таб. 0,5 №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295493	4787204	Левомонт таб 10мг + 5мг №20	Левомонт таб 10мг + 5мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295495	4787206	Левон р-р д/инф. 500мг/100мл 100мл	Левон р-р д/инф. 500мг/100мл 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295496	4787207	Левостав 0,5% 5мл гл капли	Левостав 0,5% 5мл гл капли	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295497	4787208	Левотин сироп 30мл	Левотин сироп 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295498	4787209	Левотин таб 5мг №10	Левотин таб 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295499	4787210	Левофев таб. 500мг №5	Левофев таб. 500мг №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295500	4787211	Левофлоксацин  р-р 100мл Флорокс	Левофлоксацин  р-р 100мл Флорокс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295501	4787212	Левофлоксацин (Левонин) инф, 100мл	Левофлоксацин (Левонин) инф, 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295502	4787213	Левофлоксацин капс.250мг№10	Левофлоксацин капс.250мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295503	4787214	Левофлоксацин р-р инф 100мл МР (Левамакс)	Левофлоксацин р-р инф 100мл МР (Левамакс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295504	4787215	Леди форте капс.500мг№60	Леди форте капс.500мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295505	4787216	Лейкопластырь  гипоаллер. Полиэтилен 1,25см*5м MEDIK PLAST	Лейкопластырь  гипоаллер. Полиэтилен 1,25см*5м MEDIK PLAST	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295506	4787217	Лейкопластырь  гипоаллер. Полиэтилен 1см*5м MEDIK PLAST	Лейкопластырь  гипоаллер. Полиэтилен 1см*5м MEDIK PLAST	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295507	4787218	Лейкопластырь  гипоаллер. Полиэтилен 2см*5м MEDIK PLAST	Лейкопластырь  гипоаллер. Полиэтилен 2см*5м MEDIK PLAST	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295508	4787219	Лейкопластырь "Мультипласт" 1х500см	Лейкопластырь "Мультипласт" 1х500см	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295509	4787220	Лейкопластырь "Мультипласт" 4х500см	Лейкопластырь "Мультипласт" 4х500см	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295510	4787221	Лейкопластырь "Мультипласт" 5х500см	Лейкопластырь "Мультипласт" 5х500см	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295511	4787222	Лейкопластырь гипоаллер. Бумажная 1см*5м MEDIK PLAST	Лейкопластырь гипоаллер. Бумажная 1см*5м MEDIK PLAST	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295512	4787223	Лейкопластырь гипоаллер. Бумажная 3см*5м  MEDIK PLAST	Лейкопластырь гипоаллер. Бумажная 3см*5м  MEDIK PLAST	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295513	4787224	Лейкопластырь гипоаллерген.1смх5м HEALTH LINE	Лейкопластырь гипоаллерген.1смх5м HEALTH LINE	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295514	4787225	Лейкопластырь гипоаллерген.3смх5м HEALTH LINE	Лейкопластырь гипоаллерген.3смх5м HEALTH LINE	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295515	4787226	Лейкопластырь гипоаллерген.5смх5м HEALTH LINE	Лейкопластырь гипоаллерген.5смх5м HEALTH LINE	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295516	4787227	Лейкопластырь мозольный №6 Av-plast	Лейкопластырь мозольный №6 Av-plast	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295517	4787228	Лейкопластырь Мультипласт 1*500см №1	Лейкопластырь Мультипласт 1*500см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295518	4787229	Лейкопластырь Мультипласт 2*300см №1	Лейкопластырь Мультипласт 2*300см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295519	4787230	Лейкопластырь Мультипласт 2*500см №1	Лейкопластырь Мультипласт 2*500см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295520	4787231	Лейкопластырь Мультипласт 3*300см №1	Лейкопластырь Мультипласт 3*300см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295521	4787232	Лейкопластырь Мультипласт 3*500см №1	Лейкопластырь Мультипласт 3*500см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295522	4787233	Лейкопластырь фикс н/с Ролепласт 3х300см №1	Лейкопластырь фикс н/с Ролепласт 3х300см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295523	4787234	Лекролин кап.гл.4%40мг/мл.5мл№1	Лекролин кап.гл.4%40мг/мл.5мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295524	4787235	Лензетто Спрей 1,53мг/доза 6,5мл №1	Лензетто Спрей 1,53мг/доза 6,5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295525	4787236	Леркамен таб. 10мг №28	Леркамен таб. 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295526	4787237	Леркамен таб. 20мг №28	Леркамен таб. 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295527	4787238	Лесцинат амп 5мл  №10 Журабек (Л-Лизина)	Лесцинат амп 5мл  №10 Журабек (Л-Лизина)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295528	4787239	Летроз таблетки 2.5мг №30	Летроз таблетки 2.5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295529	4787240	Летфиксим 200мг таб №10	Летфиксим 200мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295530	4787241	Летфиксим 400мг таб №10	Летфиксим 400мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295531	4787242	Лефлокс 500мг таб №7	Лефлокс 500мг таб №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295532	4787243	Лефлокс 750мг таб №7	Лефлокс 750мг таб №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295533	4787244	Лефно таб.20мг№30	Лефно таб.20мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295534	4787245	Лецип Форте сироп 200мл	Лецип Форте сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295535	4787246	Лив-52  таб №100	Лив-52  таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295536	4787247	Ливерин капс. 0,1мг №24	Ливерин капс. 0,1мг №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295537	4787248	Ливерин р-р для инъекция 0,6г/2мл №7	Ливерин р-р для инъекция 0,6г/2мл №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295538	4787249	Ливсон сусп. 60мл №1	Ливсон сусп. 60мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295539	4787250	Лидаза лиоф. р-р д/ин. 64УЕ №10	Лидаза лиоф. р-р д/ин. 64УЕ №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295540	4787251	Лидокаин 1% 5мл №10	Лидокаин 1% 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295541	4787252	Лидокаин 1% 5мл №10 МР	Лидокаин 1% 5мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295542	4787253	Лидокаин 2% 2мл №10 МР	Лидокаин 2% 2мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295543	4787254	Лидокаин 2% 2мл №5	Лидокаин 2% 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295544	4787255	Лидокаин 2мл №10	Лидокаин 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295545	4787256	Лидокаин спрей 100мг/мл.50мл№1	Лидокаин спрей 100мг/мл.50мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295546	4787257	Лизак таб со вкусом Аниса и Мяты №10	Лизак таб со вкусом Аниса и Мяты №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295547	4787258	Лизак таб со вкусом Апелсин №10	Лизак таб со вкусом Апелсин №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295548	4787259	Лизак таб со вкусом Малины №10	Лизак таб со вкусом Малины №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295549	4787260	Лизак таб со вкусом Шоколад №10	Лизак таб со вкусом Шоколад №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295550	4787261	Лизинокор таб. 10мг №20	Лизинокор таб. 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295551	4787262	Лизинокор таб. 5мг №20	Лизинокор таб. 5мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295552	4787263	Лизиноприл  таб. 20мг №28	Лизиноприл  таб. 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295553	4787264	Лименда ваг  с/в 750мг №7	Лименда ваг  с/в 750мг №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295554	4787265	Лимзер капс. 20мг № 30	Лимзер капс. 20мг № 30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295555	4787266	Линдинет таб.20мг№21	Линдинет таб.20мг№21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295556	4787267	Линекс для детей пор. 1,5г №10	Линекс для детей пор. 1,5г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295557	4787268	Линекс кап. №10	Линекс кап. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295558	4787269	Линекс кап. №16	Линекс кап. №16	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295559	4787270	Линекси  плюс капс №16	Линекси  плюс капс №16	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295560	4787271	Линимент  Вишневскому 25г	Линимент  Вишневскому 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295561	4787272	Линимент  Вишневскому 25г МР	Линимент  Вишневскому 25г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295562	4787273	Линимент бальзамический 40г Борисовский	Линимент бальзамический 40г Борисовский	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295563	4787274	Линкас  без сахара сироп 90мл	Линкас  без сахара сироп 90мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295564	4787275	Линкас бальзам мазь 25гр	Линкас бальзам мазь 25гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295565	4787276	Линкас плюш SP сироп 100 мл	Линкас плюш SP сироп 100 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295566	4787277	Линкас сироп 90мл	Линкас сироп 90мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295567	4787278	Линкомицин р-р д/ин. 300мг/мл 1мл №10	Линкомицин р-р д/ин. 300мг/мл 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295568	4787279	Липивин-10мг таб №30	Липивин-10мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295569	4787280	Липивин-20мг таб №30	Липивин-20мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295570	4787281	Липидекс SR капс №30	Липидекс SR капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295571	4787282	Лира 1000мг/4мл 4мл №5	Лира 1000мг/4мл 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295572	4787283	Лира 500мг/4мл 4мл №5	Лира 500мг/4мл 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295573	4787284	Лозалип 50мг таб №30	Лозалип 50мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295574	4787285	Лозап плюс таб. №30	Лозап плюс таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295575	4787286	Лозап таб. 100мг №30	Лозап таб. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295576	4787287	Лозап таб. 50мг №30	Лозап таб. 50мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295577	4787288	Локсидол амп.15мг/1.5мл№3	Локсидол амп.15мг/1.5мл№3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295578	4787289	Локсидол раствор 15мг/1.5мл №3	Локсидол раствор 15мг/1.5мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295579	4787290	Локсидол суппозитории 15мг №6	Локсидол суппозитории 15мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295580	4787291	Локсидол табл.15 мг №10	Локсидол табл.15 мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295581	4787292	Лонгидаза лиоф. пор. 3000МЕ №5	Лонгидаза лиоф. пор. 3000МЕ №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295582	4787293	Лонгидаза супп.ваг.-рект.3000МЕ.№10	Лонгидаза супп.ваг.-рект.3000МЕ.№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295583	4787294	Лоперамед 2 мг таб. № 10 МР	Лоперамед 2 мг таб. № 10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295584	4787295	Лоперамид таб. 0,002г №20 Борисовский	Лоперамид таб. 0,002г №20 Борисовский	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295585	4787296	Лопирамед 2 мг таб. № 20 Зуннур Фарм	Лопирамед 2 мг таб. № 20 Зуннур Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295586	4787297	Лоранекс таб. 5мг №10	Лоранекс таб. 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295587	4787298	Лоратадин таб 10мг №10	Лоратадин таб 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295588	4787299	Лоратал таб №10	Лоратал таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295589	4787300	Лоратал таб №30	Лоратал таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295590	4787301	Лорбен-р-р.100мл№1 Для полоскания горла+рта	Лорбен-р-р.100мл№1 Для полоскания горла+рта	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295591	4787302	Лорбенин 200мл	Лорбенин 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295592	4787303	Лорден таб №10 (Лоратадин) Индия	Лорден таб №10 (Лоратадин) Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295593	4787304	Лордент р-р для полоскания 100мл	Лордент р-р для полоскания 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295594	4787305	Лордес таб 5мг №20 Нобел	Лордес таб 5мг №20 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295595	4787306	Лордестин таб.5мг№10	Лордестин таб.5мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295596	4787307	Лорингосепт таб. №10	Лорингосепт таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295597	4787308	Лорингосепт таб. №10 (Сепларинга)!!!	Лорингосепт таб. №10 (Сепларинга)!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295598	4787309	Лоринден С мазь 15г Полша	Лоринден С мазь 15г Полша	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295599	4787310	Лориста 100мг №28	Лориста 100мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295600	4787311	Лориста 25мг №28	Лориста 25мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295601	4787312	Лориста 50мг №28	Лориста 50мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295602	4787313	Лориста H 100мг/12,5мг №28	Лориста H 100мг/12,5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295603	4787314	Лориста Н 50мг/12,5мг №28	Лориста Н 50мг/12,5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295604	4787315	Лоробен спрей 30мл	Лоробен спрей 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295605	4787316	Лорсепт таб 1,5мг №30 Ассатимент	Лорсепт таб 1,5мг №30 Ассатимент	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295606	4787317	Лорсепт таб 1,5мг №30 с вусум ананасом	Лорсепт таб 1,5мг №30 с вусум ананасом	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295607	4787318	Лорсилс паст. №20 со вкусом мёд и лимона	Лорсилс паст. №20 со вкусом мёд и лимона	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295608	4787319	Лортенза 100мг/10мг №30 (Лориста + Тенокс)	Лортенза 100мг/10мг №30 (Лориста + Тенокс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295609	4787320	Лортенза 100мг/5мг №30 (Лориста + Тенокс)	Лортенза 100мг/5мг №30 (Лориста + Тенокс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295610	4787321	Лортенза 50мг/10мг №30 (Лориста + Тенокс)	Лортенза 50мг/10мг №30 (Лориста + Тенокс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295611	4787322	Лортенза 50мг/5мг №30 (Лориста + Тенокс)	Лортенза 50мг/5мг №30 (Лориста + Тенокс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295612	4787323	Лосавин таб. 100мг №30	Лосавин таб. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295613	4787324	Лосавин-Н 50мг/12,5мг таб №30	Лосавин-Н 50мг/12,5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295614	4787325	Лофлатил №100	Лофлатил №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295615	4787326	Лэсфаль р-р 50мг/мл 5мл №5	Лэсфаль р-р 50мг/мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295616	4787327	Люгол 25мл	Люгол 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295617	4787328	Люголь р-р с глицерином 20мл№1	Люголь р-р с глицерином 20мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295618	4787329	Люгс спрей 20мл	Люгс спрей 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295619	4787330	Люкамонт таб.10мг№28	Люкамонт таб.10мг№28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295620	4787331	Лютеина таб вагин. 200мг №30	Лютеина таб вагин. 200мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295621	4787332	Ляписный карандаш №1	Ляписный карандаш №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295622	4787333	Маалокс сусп. 15мл №30	Маалокс сусп. 15мл №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295623	4787334	Маалокс сусп. д/п внутрь 15мл №30	Маалокс сусп. д/п внутрь 15мл №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295624	4787335	Маалокс таб. жев. №20	Маалокс таб. жев. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295625	4787336	Магне В6 кап №50	Магне В6 кап №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295626	4787337	Магне В6 таб. №50	Магне В6 таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295627	4787338	Магне сульфат 25% 5мл №10 МР	Магне сульфат 25% 5мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295628	4787339	Магне сульфат 25% 5мл №5	Магне сульфат 25% 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295629	4787340	Магний +В6 р-р д/взрослых и детей 250мл	Магний +В6 р-р д/взрослых и детей 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295630	4787341	Магний В6 форте таб. №50	Магний В6 форте таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295631	4787342	Магний пор сульфат 10г №1	Магний пор сульфат 10г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295632	4787343	Магникум таб №50 06,23	Магникум таб №50 06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295633	4787344	Магницин В6 таб №60	Магницин В6 таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295634	4787345	Макровит Baby сироп 200мл	Макровит Baby сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295635	4787346	Макровит Energy сироп 200мл	Макровит Energy сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295636	4787347	Макровит эенержй кас №30	Макровит эенержй кас №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295637	4787348	МакроСед Бабй 100мл	МакроСед Бабй 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295638	4787349	МакроСед сироп средство 100мл	МакроСед сироп средство 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295639	4787350	Макросед успокоительное капс №30	Макросед успокоительное капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295640	4787351	Макрофер таб №30 Железа	Макрофер таб №30 Железа	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295641	4787352	Мальтофер капли 30мл	Мальтофер капли 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295642	4787353	Мальтофер капли 50мг/мл 30мл	Мальтофер капли 50мг/мл 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295643	4787354	Мальтофер сироп 10мг/мл 150мл	Мальтофер сироп 10мг/мл 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295644	4787355	Мальтофер таб. жев. 100мг №30	Мальтофер таб. жев. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295645	4787356	Мамавит Лацтация капс №60	Мамавит Лацтация капс №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295646	4787357	Мамавит Пренетал капс №40	Мамавит Пренетал капс №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295647	4787358	Маннит  инфузий 15% 200мл Дента	Маннит  инфузий 15% 200мл Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295648	4787359	Маннит МР инфузий 15% 200мл Мр	Маннит МР инфузий 15% 200мл Мр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295649	4787360	Маннит р-р.инф.15%.200мл№1 Радикс	Маннит р-р.инф.15%.200мл№1 Радикс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295650	4787361	Мапрофен таб  100мг №24 Нобел	Мапрофен таб  100мг №24 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295651	4787362	Марли 10мтр Упаковка	Марли 10мтр Упаковка	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1596603	\N	ВЩДДФК	ВЩДДФК	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1295652	4787363	Марли 1мтр Упаковка	Марли 1мтр Упаковка	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295653	4787364	Марли 2мтр Оддий Упаковка Оддий	Марли 2мтр Оддий Упаковка Оддий	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295654	4787365	Марли 2мтр Упаковка	Марли 2мтр Упаковка	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295655	4787366	Марли 5мтр Упаковка	Марли 5мтр Упаковка	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295656	4787367	Маска Lalaku №2	Маска Lalaku №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295657	4787368	Маска Для Юлайзера №1 Взрослый	Маска Для Юлайзера №1 Взрослый	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295658	4787369	Маска Для Юлайзера №1 Детский	Маска Для Юлайзера №1 Детский	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295659	4787370	Маска Нано	Маска Нано	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295660	4787371	Маска одноразовая синый	Маска одноразовая синый	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295661	4787372	Маска Респиратор	Маска Респиратор	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295662	4787373	Масло Арча Арча 25мл	Масло Арча Арча 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295663	4787374	Масло Атиргул 25мл	Масло Атиргул 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295664	4787375	Масло Бодом 25мл (АЧЧИК)	Масло Бодом 25мл (АЧЧИК)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295665	4787376	Масло Бодом 25мл (Ширин)	Масло Бодом 25мл (Ширин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295666	4787377	Масло Бодом 75мл (АЧЧИК)	Масло Бодом 75мл (АЧЧИК)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295667	4787378	Масло Бодом 75мл (Ширин)	Масло Бодом 75мл (Ширин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295668	4787379	Масло Гоз 25мл	Масло Гоз 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295669	4787380	Масло Гоз 75мл	Масло Гоз 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295670	4787381	Масло Жонсонс 50мл	Масло Жонсонс 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295671	4787382	Масло Зайтун 100мл MUNIBA SHIFO	Масло Зайтун 100мл MUNIBA SHIFO	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295672	4787383	Масло Зайтун 25мл MUNIBA SHIFO	Масло Зайтун 25мл MUNIBA SHIFO	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295673	4787384	Масло Зайтун 75мл	Масло Зайтун 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295674	4787385	Масло Калампир мунчок 25мл	Масло Калампир мунчок 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295675	4787386	Масло Ковок 25мл	Масло Ковок 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295676	4787387	Масло Ковок 75мл	Масло Ковок 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295677	4787388	Масло Кунжут 75мл	Масло Кунжут 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295678	4787389	Масло Седана 25мл	Масло Седана 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295679	4787390	Масло Седана 75мл	Масло Седана 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295680	4787391	Масло тыквенное "LIK" с вит. Е 0,78г кап. №50	Масло тыквенное "LIK" с вит. Е 0,78г кап. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295681	4787392	Масло Чеснок 100мл	Масло Чеснок 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295682	4787393	Масло Чеснок 75мл	Масло Чеснок 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295683	4787394	Масло Шафтоли 25мл	Масло Шафтоли 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295684	4787395	Мастинорм Ультра таб 500мг №50 (Индол)	Мастинорм Ультра таб 500мг №50 (Индол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295685	4787396	Мастодинон капли 50мл	Мастодинон капли 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295686	4787397	Мастодинон таб №60	Мастодинон таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295687	4787398	Махавар капсулы №12	Махавар капсулы №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295688	4787399	Мега Лактобактрим фл №10	Мега Лактобактрим фл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295689	4787400	Мегасеф 250 порошок для инекьци №1	Мегасеф 250 порошок для инекьци №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295690	4787401	Мегасеф 250мг таб №10	Мегасеф 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295691	4787402	Мегасеф 750 порошок для инекьци №1	Мегасеф 750 порошок для инекьци №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295692	4787403	Мегасеф таб.500мг№10	Мегасеф таб.500мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295693	4787404	Мегафит гран 75гр	Мегафит гран 75гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295694	4787405	Медамин таб.0.1мг№20	Медамин таб.0.1мг№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295695	4787406	Медексол капли 0,1% 5мл №1	Медексол капли 0,1% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295696	4787407	Медетром глаз капли 5мл №1	Медетром глаз капли 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295697	4787408	Мединак таб №100	Мединак таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295698	4787409	Медотилен капсулы 400мг №14	Медотилен капсулы 400мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295699	4787410	Медотилен раствор 1000мг/4мл №3	Медотилен раствор 1000мг/4мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295700	4787411	Медролгин г/л капли 0,5% 5мл	Медролгин г/л капли 0,5% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295701	4787412	Медролгин р.р амп.30мг/мл №5	Медролгин р.р амп.30мг/мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295702	4787413	Мезакар 200мг таб. №50	Мезакар 200мг таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295703	4787414	Меззем таб №20 (Мализим) 08,23	Меззем таб №20 (Мализим) 08,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295704	4787415	Меззен Форте таб №20	Меззен Форте таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295705	4787416	Мезим  Форте таб №20	Мезим  Форте таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295706	4787417	Мексидол амп.50мг/мл.2мл№10	Мексидол амп.50мг/мл.2мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295707	4787418	Меласон таб. №30	Меласон таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295708	4787419	Мелбек р-р амп №3	Мелбек р-р амп №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295709	4787420	Мелбек таб 7,5мг №30	Мелбек таб 7,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1615835	\N	IMPORT	IMPORT	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1295710	4787421	Мелбек форте таб 15мг №30	Мелбек форте таб 15мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295711	4787422	Мелглис капли для детей №1 50мл	Мелглис капли для детей №1 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295712	4787423	Мелепсин табл 200мг №50	Мелепсин табл 200мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295713	4787424	Мелловин капс №50	Мелловин капс №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295714	4787425	Меновазин 40 мл Дента	Меновазин 40 мл Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295715	4787426	Мертенил таб.5мг№30	Мертенил таб.5мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295716	4787427	Метафаж таб.1000мг№30 06,23	Метафаж таб.1000мг№30 06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295717	4787428	Метилурацил супп рек 500мг №10	Метилурацил супп рек 500мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295718	4787429	Метоклопрамид  таб 0,01 г №50	Метоклопрамид  таб 0,01 г №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295719	4787430	Метоклопрамид амп.5мг/2мл №5	Метоклопрамид амп.5мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295720	4787431	Метоклопрамид р-р д/ин. 0,5% 2мл №5	Метоклопрамид р-р д/ин. 0,5% 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295721	4787432	Метостил супп. ваг. №7!!!	Метостил супп. ваг. №7!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295722	4787433	Метрогил гель наруж. 1% 30 г	Метрогил гель наруж. 1% 30 г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295723	4787434	Метромикон супп. ваг. №10	Метромикон супп. ваг. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295724	4787435	Метронидазол  0,25 г таб, №10	Метронидазол  0,25 г таб, №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295725	4787436	Метронидазол  250г таб, №10 МР	Метронидазол  250г таб, №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295726	4787437	Метронидазол 0,25г таб №10	Метронидазол 0,25г таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295727	4787438	Метронидазол 100мл	Метронидазол 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295728	4787439	Метронидазол таб. 250мг №20	Метронидазол таб. 250мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295729	4787440	Метфогамма 500  №120	Метфогамма 500  №120	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295730	4787441	Метфорвин таб. 1000мг №100	Метфорвин таб. 1000мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295731	4787442	Метфорвин таб. 500мг №100	Метфорвин таб. 500мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295732	4787443	Метформин 500мг таб №30	Метформин 500мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295733	4787444	Метформин таб. 1000мг №30	Метформин таб. 1000мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295734	4787445	Мефлоцид таб. 750мг №7	Мефлоцид таб. 750мг №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295735	4787446	Миг  таб 400мг №10	Миг  таб 400мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295736	4787447	МИГ 400 мг №10 Берлин Хеми!!	МИГ 400 мг №10 Берлин Хеми!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295737	4787448	Миг Детский сус. 100мл	Миг Детский сус. 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295738	4787449	Мигтера 5мг таб №6	Мигтера 5мг таб №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295739	4787450	Мидиана таб.3мг№21	Мидиана таб.3мг№21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295740	4787451	Мидокалм р-р д/ин. 10% 1мл №5 !!!	Мидокалм р-р д/ин. 10% 1мл №5 !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295741	4787452	Микодерм р-р 10мг 1мл №1	Микодерм р-р 10мг 1мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295742	4787453	Микотран супп. ваг. 1200мг №1	Микотран супп. ваг. 1200мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295743	4787454	Микофлю капс. 150мг №1	Микофлю капс. 150мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295744	4787455	Микразим капс.10.000ЕД№20	Микразим капс.10.000ЕД№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295745	4787456	Микразим капс.25.000ЕД№20	Микразим капс.25.000ЕД№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295746	4787457	Микройодид таб. 100мкг №100	Микройодид таб. 100мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295747	4787458	Микройодид таб. 200мкг №100	Микройодид таб. 200мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295748	4787459	Микстард 40ед/мл10мл№1!!!	Микстард 40ед/мл10мл№1!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295749	4787460	Милдронат амп инекь 500мг/5мл №10	Милдронат амп инекь 500мг/5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295750	4787461	Милдронат амп инекь МР 500мг/5мл №10 МР	Милдронат амп инекь МР 500мг/5мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295751	4787462	Милдронат капс.250мг№40	Милдронат капс.250мг№40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295752	4787463	Милдронат капс.500мг№60	Милдронат капс.500мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295753	4787464	Милдронат капс.500мг№90	Милдронат капс.500мг№90	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295754	4787465	Милдронат р-р 0,5мг/5мл №10	Милдронат р-р 0,5мг/5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295755	4787466	Милкортин р-р д/инфузий 100мл (L-Arginin Левокарнитин)	Милкортин р-р д/инфузий 100мл (L-Arginin Левокарнитин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295756	4787467	Милт кап.назальн. 10мл (флак. с пипеткой)	Милт кап.назальн. 10мл (флак. с пипеткой)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295757	4787468	Милт спрей назальн. 10мл (флак. с распылителем)	Милт спрей назальн. 10мл (флак. с распылителем)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295758	4787469	Мильгамма 2мл №5	Мильгамма 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295759	4787470	Мильгамма таб композитум №60	Мильгамма таб композитум №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295760	4787471	Миртел 30мг №30 таб.	Миртел 30мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295761	4787472	Мифон 10000 капсула 150мг №20	Мифон 10000 капсула 150мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295762	4787473	Мифон 25000 капсула 300мг №20	Мифон 25000 капсула 300мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295763	4787474	Мобилаб р-р для инек	Мобилаб р-р для инек	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1695116	fdsfdg	sitramon	sitramon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1295764	4787475	Мокси глазные капли 10 мл	Мокси глазные капли 10 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295765	4787476	Мокси-G 400мг №5 таб.	Мокси-G 400мг №5 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295766	4787477	Моксифлон (Моксифлоксацин) р-р для инф 100мл	Моксифлон (Моксифлоксацин) р-р для инф 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295767	4787478	Мометокс крем 0,1% 15г	Мометокс крем 0,1% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295768	4787479	Монекс спрей назальный дозированный 50 мкг/доза 140 доза	Монекс спрей назальный дозированный 50 мкг/доза 140 доза	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295769	4787480	Монодекс капли 0,1% 5мл	Монодекс капли 0,1% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295770	4787481	Моносан 40мг таб №30	Моносан 40мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295771	4787482	Моносан таб. 20 мг. №30	Моносан таб. 20 мг. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295772	4787483	Монталин капс.№40 Badex Life	Монталин капс.№40 Badex Life	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295773	4787484	Монтафекс таб №10	Монтафекс таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295774	4787485	Монтулар кидс таб 4мг №30	Монтулар кидс таб 4мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295775	4787486	Монтулар таб.№100	Монтулар таб.№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295776	4787487	Мотилиум таб.10мг№30 Леч.Тошноты+Рвоты	Мотилиум таб.10мг№30 Леч.Тошноты+Рвоты	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295777	4787488	Мотониум таб. п/о 10мг №30	Мотониум таб. п/о 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295778	4787489	Мофейт крем 0,1% 15г	Мофейт крем 0,1% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295779	4787490	Мочаприёмник с труб. 2000мл №10	Мочаприёмник с труб. 2000мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295780	4787491	Мубид Стресс капс №30	Мубид Стресс капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295781	4787492	Мукалитин таб.№10 (Мукалтин)	Мукалитин таб.№10 (Мукалтин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295782	4787493	Мукалтин таб. 50 мг №10 (Уралбиофарм)	Мукалтин таб. 50 мг №10 (Уралбиофарм)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295783	4787494	Мукекис сироп 15 мг/5мл 100мл	Мукекис сироп 15 мг/5мл 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295784	4787495	Мукекс таб.30мг№100	Мукекс таб.30мг№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295785	4787496	Мукоген таб. 100мг №30	Мукоген таб. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295786	4787497	Мукосат-Белмед  р-р д/ин 2мл №10 (Хондролон)	Мукосат-Белмед  р-р д/ин 2мл №10 (Хондролон)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295787	4787498	Мултифит Альбумин саше №10	Мултифит Альбумин саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295788	4787499	Мумиё таб. №10	Мумиё таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295789	4787500	Мумиё-"LIK"капс.150мг№20	Мумиё-"LIK"капс.150мг№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295790	4787501	Мупиросепт мазь для наружного 2% 15гр	Мупиросепт мазь для наружного 2% 15гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295791	4787502	Мускомед р/р д/и 4мг/2мл амп. №6	Мускомед р/р д/и 4мг/2мл амп. №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295792	4787503	Мускомед раствор 4мг/2мл  №6	Мускомед раствор 4мг/2мл  №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295793	4787504	Називин капли назальные 0,025% 10мл	Називин капли назальные 0,025% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295794	4787505	Назоферон капли наз. 5мл (Интерферон)	Назоферон капли наз. 5мл (Интерферон)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295795	4787506	Назоферон спрей наз. 5мл (Интерферон)	Назоферон спрей наз. 5мл (Интерферон)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295796	4787507	Найз гель 1% 20г	Найз гель 1% 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295797	4787508	Найз гель 1% 50г	Найз гель 1% 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295798	4787509	Найзилат таб. 600мг №10	Найзилат таб. 600мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295799	4787510	Наклофен амп.75мг/3мл№5	Наклофен амп.75мг/3мл№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295800	4787511	Наклофен Дуо капс. 75мг №30	Наклофен Дуо капс. 75мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295801	4787512	Налгезин 275мг №10	Налгезин 275мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295802	4787513	Налгезин форте таб. 550мг №10	Налгезин форте таб. 550мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295803	4787514	Напроф гел  10% 45г	Напроф гел  10% 45г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295804	4787515	Наридон кидс сироп 100мл	Наридон кидс сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295805	4787516	Насморк Тотал таб №10	Насморк Тотал таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295806	4787517	Настойка Боярышника 25мл	Настойка Боярышника 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295807	4787518	Настойка валериана  LIK 25мл	Настойка валериана  LIK 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295808	4787519	Настойка Женьшеня  30мл	Настойка Женьшеня  30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295809	4787520	Настойка Женьшеня 25мл	Настойка Женьшеня 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295810	4787521	Настойка Женьшеня 40мл	Настойка Женьшеня 40мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295811	4787522	Настойка Календулы 25мл№1	Настойка Календулы 25мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295812	4787523	Настойка перца стручк. 25мл№1	Настойка перца стручк. 25мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295813	4787524	Натацин №3 супп 100мг №3	Натацин №3 супп 100мг №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295814	4787525	Натр хлор 0,9% 100мл	Натр хлор 0,9% 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295815	4787526	Натр хлор 0,9% 200мл	Натр хлор 0,9% 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295816	4787527	Натр Хлор 0,9% 250мл	Натр Хлор 0,9% 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295817	4787528	Натр хлор 0,9% 500мл	Натр хлор 0,9% 500мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295818	4787529	Натр Хлор 0,9% 5мл №10	Натр Хлор 0,9% 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295819	4787530	Натрия гидрокарбонат 4% 100мл	Натрия гидрокарбонат 4% 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295820	4787531	Натрия гидрокарбонат 4% 200мл	Натрия гидрокарбонат 4% 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295821	4787532	Натрия тиосулфат 30% 10мл	Натрия тиосулфат 30% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295822	4787533	Нафтизин  0,1% 15мл Русс	Нафтизин  0,1% 15мл Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295823	4787534	Нафтизин капли 0,1% 5мл	Нафтизин капли 0,1% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295824	4787535	Нафтимизин MF 0,1% 20мл	Нафтимизин MF 0,1% 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295825	4787536	Нафтимизин MF 0.1% 10мл	Нафтимизин MF 0.1% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295826	4787537	Небивол 5мг таб №30	Небивол 5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295827	4787538	Небилет таб. 5мг №28	Небилет таб. 5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295828	4787539	Небобета таб.5мг№30	Небобета таб.5мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295829	4787540	Невис Актив 50мл капли для детей №1	Невис Актив 50мл капли для детей №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295830	4787541	Невралон амп. 2мл №5	Невралон амп. 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295831	4787542	Невроним беби сироп	Невроним беби сироп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295832	4787543	Невроним №20 капсула	Невроним №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295833	4787544	Нейродекс 5мл №5 укол	Нейродекс 5мл №5 укол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295834	4787545	Нейрокобал таб.500мкг.№90	Нейрокобал таб.500мкг.№90	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295835	4787546	Нейрокс 2мл амп №10	Нейрокс 2мл амп №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295836	4787547	Нейрокс амп.50мг/мл.5мл№5!!!	Нейрокс амп.50мг/мл.5мл№5!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295837	4787548	Нейроксон 500/4мл №10	Нейроксон 500/4мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295838	4787549	Нейролаб р-р для иньек 3мл №5	Нейролаб р-р для иньек 3мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295839	4787550	Нейромидин р-р д/ин. 0,5% 1мл. №10	Нейромидин р-р д/ин. 0,5% 1мл. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295840	4787551	Нейромидин р-р д/ин. 1,5% 1мл. №10	Нейромидин р-р д/ин. 1,5% 1мл. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295841	4787552	Нейромидин таб 20мг №50	Нейромидин таб 20мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295842	4787553	Нейромультивит таб. №20	Нейромультивит таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295843	4787554	Нейротон р-р д/и. 2мл №5	Нейротон р-р д/и. 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295844	4787555	Нексиум таб. 20мг №14	Нексиум таб. 20мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295845	4787556	Нексиум таб. 40мг №14	Нексиум таб. 40мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295846	4787557	Неладекс глаз./ушн.капли 5мл №1	Неладекс глаз./ушн.капли 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295847	4787558	Неладекс глаз.мазь 5г №1	Неладекс глаз.мазь 5г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295848	4787559	Неладекс-НС назал.спрей 15 мл №1	Неладекс-НС назал.спрей 15 мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295849	4787560	Нео-Мекси амп. 50мг/мл 5мл №5	Нео-Мекси амп. 50мг/мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295850	4787561	Неодерм крем 10г	Неодерм крем 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295851	4787562	Неодерм крем 15г	Неодерм крем 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295852	4787563	Неокласт 10 таб №28	Неокласт 10 таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295853	4787564	Неокласт 4 таб №28	Неокласт 4 таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295854	4787565	Неокласт 5 таб №28	Неокласт 5 таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295855	4787566	Неолизин амп. (L-Лизина) 1мг/мл 5мл №10	Неолизин амп. (L-Лизина) 1мг/мл 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295856	4787567	Неомарин пор.инъек.600мг №1!!	Неомарин пор.инъек.600мг №1!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295857	4787568	Неопрост №20 капсула	Неопрост №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295858	4787569	Нервекс амп 2мл №5	Нервекс амп 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295859	4787570	Неутум таб №20	Неутум таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295860	4787571	Неуфастер амп 3мл №5	Неуфастер амп 3мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295861	4787572	Неуфастер смайл сироп 100мл	Неуфастер смайл сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295862	4787573	Нефролин капс №30	Нефролин капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295863	4787574	Нефротон кидс 50мл	Нефротон кидс 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295864	4787575	Нефротон Таблетки №30	Нефротон Таблетки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295865	4787576	Нивалин таб 10мг №20	Нивалин таб 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295866	4787577	Нивалин таб. 5мг №10	Нивалин таб. 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295867	4787578	Нижагара Лонг Ласт 100мг №4	Нижагара Лонг Ласт 100мг №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295868	4787579	Нижагара таб 100 мг. №4	Нижагара таб 100 мг. №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295869	4787580	Низомед крем 15г   07 /23	Низомед крем 15г   07 /23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295870	4787581	Никапроз 400мг таб №3	Никапроз 400мг таб №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295871	4787582	Никотинабс 1,5мг №100	Никотинабс 1,5мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295872	4787583	Нимесил 100мг №30 Малика Фарм	Нимесил 100мг №30 Малика Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295873	4787584	Нимесил 100мг №30 МР	Нимесил 100мг №30 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295874	4787585	Нимесил 2 г №30	Нимесил 2 г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295875	4787586	Нимесулид порошок 100мг/2г №30	Нимесулид порошок 100мг/2г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295876	4787587	Нимефаст таб 100мг №30	Нимефаст таб 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295877	4787588	Нимид гран 100мг №30	Нимид гран 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295878	4787589	Нимид таб.№10 Нимесулид	Нимид таб.№10 Нимесулид	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295879	4787590	Нимид-Форте таб.№10 Нимесулид	Нимид-Форте таб.№10 Нимесулид	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295880	4787591	Нимиц  100мг таб №10 (нимид)	Нимиц  100мг таб №10 (нимид)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295881	4787592	Нипертен 10мг таб №30	Нипертен 10мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295882	4787593	Нипертен 2,5мг таб №30	Нипертен 2,5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295883	4787594	Нипертен 5мг таб №30	Нипертен 5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295884	4787595	Нирмин 10 плюс р-р д/инф. 100мл	Нирмин 10 плюс р-р д/инф. 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295885	4787596	Нирмин 5-S р-р 5% 100мл	Нирмин 5-S р-р 5% 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295886	4787597	Нирмин-10 Плюс р-р для инф. 200мл	Нирмин-10 Плюс р-р для инф. 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295887	4787598	Нистатин мазь 100000ЭД 15г Дента	Нистатин мазь 100000ЭД 15г Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295888	4787599	Нистатин мазь 15гр МР	Нистатин мазь 15гр МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295889	4787600	Нистатин с/в  250000 ЕД - №10 Дента	Нистатин с/в  250000 ЕД - №10 Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295890	4787601	Нистатин с/в  500000 ЕД - №10 Дента	Нистатин с/в  500000 ЕД - №10 Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295891	4787602	Нистатин супп.ваг. 500000 ЕД №10	Нистатин супп.ваг. 500000 ЕД №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295892	4787603	Нистатин таб. 500000ЕД №20	Нистатин таб. 500000ЕД №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295893	4787604	Нитресан 10мг таб. №30	Нитресан 10мг таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295894	4787605	Нитресан 20мг таб. №30	Нитресан 20мг таб. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295895	4787606	Нитроксолин таб. 0,05 г. №50	Нитроксолин таб. 0,05 г. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295896	4787607	Нитроминт 0,4мг 180доз, аэрозол	Нитроминт 0,4мг 180доз, аэрозол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295897	4787608	Нитросорбид таб 10мг №40!!!	Нитросорбид таб 10мг №40!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295898	4787609	Нифедипин таб 10мг №50	Нифедипин таб 10мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295899	4787610	Нифекард XL таб 30мг №30	Нифекард XL таб 30мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295900	4787611	Нифуроксазид-ЛФ, 100мг, капс. №30	Нифуроксазид-ЛФ, 100мг, капс. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295901	4787612	Но-шпа таб №50 Малика (Но Спаз)	Но-шпа таб №50 Малика (Но Спаз)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295902	4787613	Новакаин 0,5% 2мл №10 МР	Новакаин 0,5% 2мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295903	4787614	Новакаин 0,5% 5мл №10 Журабек	Новакаин 0,5% 5мл №10 Журабек	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295904	4787615	Новакаин 0,5% амп. 5мл №10	Новакаин 0,5% амп. 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295905	4787616	Новинет таб. №21	Новинет таб. №21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295906	4787617	Новоферрин капс №20	Новоферрин капс №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295907	4787618	Новофлам таб №10 (Корфлам)	Новофлам таб №10 (Корфлам)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295908	4787619	Нодамет амп. 15мг/1,5мл 1,5мл №3	Нодамет амп. 15мг/1,5мл 1,5мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295909	4787620	Нозейлин-НС назал.спрей 15 мл №1	Нозейлин-НС назал.спрей 15 мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295910	4787621	Нокафф 150 мл сироп	Нокафф 150 мл сироп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295911	4787622	Ноклот  ЕА 75 мг таб №30	Ноклот  ЕА 75 мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295912	4787623	Ноклот таб  75мг №30	Ноклот таб  75мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295913	4787624	Ноклофен 75мг 3мл №5 МР	Ноклофен 75мг 3мл №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295914	4787625	Ноксопен ДП таб №100	Ноксопен ДП таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295915	4787626	Ноксопен таб 10мг №100 (Серрата)	Ноксопен таб 10мг №100 (Серрата)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295916	4787627	Нолаксен таб 25мг/25мг №20	Нолаксен таб 25мг/25мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295917	4787628	Нолицин 400мг №20	Нолицин 400мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295918	4787629	Нольпаза 20мг №28	Нольпаза 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295919	4787630	Нольпаза 40мг №28	Нольпаза 40мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295920	4787631	Номидес 75мг капс	Номидес 75мг капс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295921	4787632	Ноофен кап. 250 мг. №20	Ноофен кап. 250 мг. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295922	4787633	Ноофен капс 500мг №24	Ноофен капс 500мг №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295923	4787634	Ноофен порошок 100 №15	Ноофен порошок 100 №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295924	4787635	Ноофен порошок 500 №5	Ноофен порошок 500 №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295925	4787636	Норколут таб.5мг№20	Норколут таб.5мг№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295926	4787637	Норматин гл. капли 0,5% 5мл №1	Норматин гл. капли 0,5% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295927	4787638	Нормодипин таб. 10мг №30	Нормодипин таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295928	4787639	Нормодипин таб.5мг№30	Нормодипин таб.5мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295929	4787640	Нотта капли 20мл	Нотта капли 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295930	4787641	Нош-Бра таб. 40мг №20 Русс	Нош-Бра таб. 40мг №20 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295931	4787642	Нош-Пен 2% 2мл №10 МР	Нош-Пен 2% 2мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295932	4787643	Нош-пен МР 40мг таб №50	Нош-пен МР 40мг таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295933	4787644	Нутри Д3-1000 капс №30	Нутри Д3-1000 капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295934	4787645	Нутри Д3-6000 капс №4	Нутри Д3-6000 капс №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295935	4787646	Нутрикоф сироп 100мл №1	Нутрикоф сироп 100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295936	4787647	Нутрифлав инф, 100мл №1	Нутрифлав инф, 100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295937	4787648	Нутрицид Форте 1000мг/4мл №5	Нутрицид Форте 1000мг/4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295938	4787649	Облепиховое масло 50мл МР	Облепиховое масло 50мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295939	4787650	Од-Неб таб 5мг №28 (Небиволол)	Од-Неб таб 5мг №28 (Небиволол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295940	4787651	Оддиверин капс.200мг№30 Мебеверин	Оддиверин капс.200мг№30 Мебеверин	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295941	4787652	Одиколон тройной №1 &	Одиколон тройной №1 &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295942	4787653	Океанис Беби О2 сироп для детей 120мл	Океанис Беби О2 сироп для детей 120мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295943	4787654	Оксалин мазь 0,25% 10г	Оксалин мазь 0,25% 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295944	4787655	Оксалин мазь назальная  10 г МР	Оксалин мазь назальная  10 г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295945	4787656	Оксамп нат соль 0,5 МР	Оксамп нат соль 0,5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295946	4787657	Оксамп-натрия 0,5г №1 Чина	Оксамп-натрия 0,5г №1 Чина	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295947	4787658	Оксапин 300мг таб №30 06,23	Оксапин 300мг таб №30 06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295948	4787659	Оксикорт 10г мазь Полша	Оксикорт 10г мазь Полша	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295949	4787660	Окситен таб. 20мг №10	Окситен таб. 20мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295950	4787661	Окситоцин амп. 5МЕ 1мл №10 Русс !!	Окситоцин амп. 5МЕ 1мл №10 Русс !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295951	4787662	Окулин капс №30	Окулин капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295952	4787663	Олмесар 20 таб. 20мг №28	Олмесар 20 таб. 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295953	4787664	Олмесар.Г.таб.20мг/12.5мг№28	Олмесар.Г.таб.20мг/12.5мг№28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295954	4787665	Олопаталлерг гл.капли 1мг/мл 5мл	Олопаталлерг гл.капли 1мг/мл 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295955	4787666	Омаренс Т таб. 0,4мг №30	Омаренс Т таб. 0,4мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295956	4787667	ОМЕГА-3-LIK кап.№50	ОМЕГА-3-LIK кап.№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295957	4787668	Омез DSR капс. 20мг/30мг №30	Омез DSR капс. 20мг/30мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295958	4787669	Омез капс №30 Комбитик!!	Омез капс №30 Комбитик!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295959	4787670	Омез р-р д/инъек. 40мг фл	Омез р-р д/инъек. 40мг фл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295960	4787671	Омепразол капс. 20мг №30 NAVBAHOR	Омепразол капс. 20мг №30 NAVBAHOR	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295961	4787672	Омепразол таб.20мг№30 Зеомезо	Омепразол таб.20мг№30 Зеомезо	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295962	4787673	Омес-МР 20мг капс №30	Омес-МР 20мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295963	4787674	Онтик MD4 таб №10	Онтик MD4 таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295964	4787675	Оптиксим 100 пор. 2г саше №10	Оптиксим 100 пор. 2г саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295965	4787676	Оптиприм 50мл (О-типрим)	Оптиприм 50мл (О-типрим)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295966	4787677	Оптиприм сироп 50мл Индия	Оптиприм сироп 50мл Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295967	4787678	Орал АЕД капли 10 мл	Орал АЕД капли 10 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295968	4787679	Оргавит пор №20 Лимон	Оргавит пор №20 Лимон	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295969	4787680	Оргил таб.500мг№10	Оргил таб.500мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295970	4787681	Оргинал Бодом ёги 100мл 100%	Оргинал Бодом ёги 100мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295971	4787682	Оргинал Бодом ёги 50мл 100%	Оргинал Бодом ёги 50мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295972	4787683	Оргинал Зайтун ёги 100мл 100%	Оргинал Зайтун ёги 100мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295973	4787684	Оргинал Зайтун ёги 50мл 100%	Оргинал Зайтун ёги 50мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295974	4787685	Оргинал Ковок ёги 100мл 100%	Оргинал Ковок ёги 100мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295975	4787686	Оргинал Ковок ёги 50мл 100%	Оргинал Ковок ёги 50мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295976	4787687	Оргинал Кора Седана ёги 100мл 100%	Оргинал Кора Седана ёги 100мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295977	4787688	Оргинал Кора Седана ёги 250мл	Оргинал Кора Седана ёги 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295978	4787689	Оргинал Кора Седана ёги 50мл 100%	Оргинал Кора Седана ёги 50мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295979	4787690	Оргинал Кунжут ёги 100мл 100%	Оргинал Кунжут ёги 100мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295980	4787691	Оргинал Кунжут ёги 50мл 100%	Оргинал Кунжут ёги 50мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295981	4787692	Оргинал Чеснок ёги 100мл 100%	Оргинал Чеснок ёги 100мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295982	4787693	Оргинал Чеснок ёги 50мл 100%	Оргинал Чеснок ёги 50мл 100%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295983	4787694	Орнидаз р-р  для инф 100мл	Орнидаз р-р  для инф 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295984	4787695	Орнимед 500мг таб №10	Орнимед 500мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295985	4787696	Орса (Регидрационная соль) 250мл Malika	Орса (Регидрационная соль) 250мл Malika	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295986	4787697	Орса МР р-р 100мл	Орса МР р-р 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295987	4787698	Орса МР р-р 250мл	Орса МР р-р 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295988	4787699	Орса р-р 100мл	Орса р-р 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295989	4787700	Орса р-р 250мл	Орса р-р 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295990	4787701	Орса р-р 500мл	Орса р-р 500мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295991	4787702	Орса цинк р-р внутрь 100мл	Орса цинк р-р внутрь 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295992	4787703	Орса цинк р-р внутрь 250мл	Орса цинк р-р внутрь 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295993	4787704	Ортофен  таб 0,025г №20!!!	Ортофен  таб 0,025г №20!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295994	4787705	Орцерин капс.50мг№30	Орцерин капс.50мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295995	4787706	Освижитель "Onno Асартимент " 350мл &	Освижитель "Onno Асартимент " 350мл &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295996	4787707	Освижитель "Wind Rose Асартимент " 300мл &	Освижитель "Wind Rose Асартимент " 300мл &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295997	4787708	Осетрон 4мг/2мл №5	Осетрон 4мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295998	4787709	Осетрон 8мг/4мл №5	Осетрон 8мг/4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1295999	4787710	Отривин спрей доз.наз.0,1% д/взр. 10мл	Отривин спрей доз.наз.0,1% д/взр. 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296000	4787711	Отривин спрей наз. ментол/эвкалипт 0,1% 10мл	Отривин спрей наз. ментол/эвкалипт 0,1% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296001	4787712	Отсифен капли ушные №1	Отсифен капли ушные №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296002	4787713	Офлодик 2мг 100мл М Р	Офлодик 2мг 100мл М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296003	4787714	Офлоксацин 100мл	Офлоксацин 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296004	4787715	Офлоксацин таб. 200мг №10	Офлоксацин таб. 200мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296005	4787716	Офлоксацин таб.200мг№10	Офлоксацин таб.200мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296006	4787717	Офлоксацин таб.400мг№10	Офлоксацин таб.400мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296007	4787718	Офломелид мазь 30г№1	Офломелид мазь 30г№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296008	4787719	Офтан Катахром гл. капли 10мл	Офтан Катахром гл. капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296009	4787720	ОфтанДексаметазон кап.гл.0.1%.5мл№1	ОфтанДексаметазон кап.гл.0.1%.5мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296010	4787721	Пависин супп.ваг.№14	Пависин супп.ваг.№14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296011	4787722	Палминосе спрей назальный 20мл	Палминосе спрей назальный 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296012	4787723	Палора сироп 100мл№1	Палора сироп 100мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296013	4787724	Палора таб №10	Палора таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296014	4787725	Палора таб №30 №30	Палора таб №30 №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296015	4787726	Памперс "Lalaku"  3  №54	Памперс "Lalaku"  3  №54	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296016	4787727	Памперс "Mini BOSS"  2  №40	Памперс "Mini BOSS"  2  №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296017	4787728	Памперс "Mini BOSS"  3 №36	Памперс "Mini BOSS"  3 №36	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296018	4787729	Памперс "Mini BOSS"  4 №32	Памперс "Mini BOSS"  4 №32	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296019	4787730	Памперс "Mini BOSS"  5 №26	Памперс "Mini BOSS"  5 №26	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296020	4787731	Памперс "Mini BOSS"  6 №24	Памперс "Mini BOSS"  6 №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296021	4787732	Памперс "SOF"  2  №70 &	Памперс "SOF"  2  №70 &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296022	4787733	Памперс "SOF"  3  №60 &	Памперс "SOF"  3  №60 &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296023	4787734	Памперс "SOF"  5  №44 &	Памперс "SOF"  5  №44 &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296024	4787735	Памперс 1  "Gold Baby" №9 &	Памперс 1  "Gold Baby" №9 &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296025	4787736	Памперс 1 "Sleepy Tuрk" №92	Памперс 1 "Sleepy Tuрk" №92	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296026	4787737	Памперс 2 "Sleepy Tuрk" №44	Памперс 2 "Sleepy Tuрk" №44	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296027	4787738	Памперс 3 "Sleepy Tuрk" №40	Памперс 3 "Sleepy Tuрk" №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296028	4787739	Памперс 3 для ВЗР  "М" №30	Памперс 3 для ВЗР  "М" №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296029	4787740	Памперс 4 "Sleepy Tuрk" №36	Памперс 4 "Sleepy Tuрk" №36	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296030	4787741	Памперс 5 "Sleepy Tuрk" №32	Памперс 5 "Sleepy Tuрk" №32	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296031	4787742	Памперс 5 для ВЗР  "XL" №30	Памперс 5 для ВЗР  "XL" №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296032	4787743	Памперс 6 "Sleepy Tuрk" №24	Памперс 6 "Sleepy Tuрk" №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296033	4787744	Памперс Дафна Бэби 1 Размер	Памперс Дафна Бэби 1 Размер	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296034	4787745	Памперс Дафна Бэби 2 Размер	Памперс Дафна Бэби 2 Размер	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296035	4787746	Памперс Дафна Бэби 4 Размер	Памперс Дафна Бэби 4 Размер	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296036	4787747	Памперс Дафна Бэби 6 Размер	Памперс Дафна Бэби 6 Размер	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296037	4787748	Панангин р-р д/ин. 10мл №5!!	Панангин р-р д/ин. 10мл №5!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296038	4787749	Панангин таб. №50	Панангин таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296039	4787750	Панзак таб 40мг №30	Панзак таб 40мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296040	4787751	Панзинорм 10000 №21	Панзинорм 10000 №21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296041	4787752	Панкреатин 25ЕД таб. №60 Русс!!!	Панкреатин 25ЕД таб. №60 Русс!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296042	4787753	Пантап 20мг таб №28 (Пантопразол)	Пантап 20мг таб №28 (Пантопразол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296043	4787754	Пантап 40мг таб №28	Пантап 40мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296044	4787755	Пантенол аэрозоль 50мг/58г.№1 МикроФарм	Пантенол аэрозоль 50мг/58г.№1 МикроФарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296045	4787756	Пантогар таб №90	Пантогар таб №90	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296046	4787757	Пантодерм мазь 5% 30г	Пантодерм мазь 5% 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296047	4787758	Пантоз DSR капс. 40мг+30мг №30	Пантоз DSR капс. 40мг+30мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296048	4787759	Пантокальцин таб.500мг№50	Пантокальцин таб.500мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296049	4787760	Панфор SR таб. 1000мг №100	Панфор SR таб. 1000мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296050	4787761	Панфор SR таб. 500мг №100	Панфор SR таб. 500мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296051	4787762	Папаверин г/х амп 2% 2мл №10 МР	Папаверин г/х амп 2% 2мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296052	4787763	Папаверин с/в 20мг №10	Папаверин с/в 20мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296053	4787764	Папаверин с/в 20мг №10 МР	Папаверин с/в 20мг №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296054	4787765	Папаверин свечи 20мг№10 Радикс	Папаверин свечи 20мг№10 Радикс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296055	4787766	Папаверина г/х свечи  №10	Папаверина г/х свечи  №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296056	4787767	Папазол таб. №6	Папазол таб. №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296057	4787768	Папайя 150гр. в банках	Папайя 150гр. в банках	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296058	4787769	Парацетамол  125мг с/в  №10	Парацетамол  125мг с/в  №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296059	4787770	Парацетамол  250мг с/в  №10	Парацетамол  250мг с/в  №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296060	4787771	Парацетамол  таб 0,2г №10	Парацетамол  таб 0,2г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296061	4787772	Парацетамол SP 0,2г №10 таб	Парацетамол SP 0,2г №10 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296062	4787773	Парацетамол МР 125мг с/в  №10 МР	Парацетамол МР 125мг с/в  №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296063	4787774	Парацетамол таб.0.5мг№10	Парацетамол таб.0.5мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296064	4787775	Парацетамол таб.500мг№10 Rivulet	Парацетамол таб.500мг№10 Rivulet	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296065	4787776	Парацетамол-GT таб. 0,2г №10	Парацетамол-GT таб. 0,2г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296066	4787777	Парацетамол-УБФ таб. 500мг №10 Русс	Парацетамол-УБФ таб. 500мг №10 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296067	4787778	Пардифен таб 500мг/50мг №100 (Бол Нол)	Пардифен таб 500мг/50мг №100 (Бол Нол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296068	4787779	Парфюмериний Кора Седана Совуни 75гр Хемани	Парфюмериний Кора Седана Совуни 75гр Хемани	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296069	4787780	Парфюмериний Совун "DOVE" оригинал 106г &	Парфюмериний Совун "DOVE" оригинал 106г &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296070	4787781	Парфюмериний Совун HILOL 140гр &	Парфюмериний Совун HILOL 140гр &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296071	4787782	Парфюмериний Совун Ассортимент 125гр &	Парфюмериний Совун Ассортимент 125гр &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296072	4787783	Парфюмериний Совун ДЕГТИЯРНОЙ 90гр &	Парфюмериний Совун ДЕГТИЯРНОЙ 90гр &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296073	4787784	Парфюмериний совун ОДНАРАЗОВЫЙ 20гр &	Парфюмериний совун ОДНАРАЗОВЫЙ 20гр &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296074	4787785	Парфюмериний Совуни (Мёд) 125г Хималая	Парфюмериний Совуни (Мёд) 125г Хималая	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296075	4787786	Паскард 150мг таб №100	Паскард 150мг таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296076	4787787	Паскард 75мг таб №100	Паскард 75мг таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296077	4787788	Пенталгин "Н" таб. №10	Пенталгин "Н" таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296078	4787789	Пенталгин таб. №24	Пенталгин таб. №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296079	4787790	Пенталгин-ICN таб №12	Пенталгин-ICN таб №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296080	4787791	Пентоксифаллин 2% 5мл амп №10	Пентоксифаллин 2% 5мл амп №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296081	4787792	Перекись водорода 3% 50мл	Перекись водорода 3% 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296082	4787793	Персен День таб. №40	Персен День таб. №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296083	4787794	Персен ночь капс. №20	Персен ночь капс. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296084	4787795	Перцовый пластырь перф. Rivulet 10х18см №1	Перцовый пластырь перф. Rivulet 10х18см №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296085	4787796	Перчатка 7,5 Дента	Перчатка 7,5 Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296086	4787797	Перчатка 7,5 Дента №100	Перчатка 7,5 Дента №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296087	4787798	Перчатки нестериннй Унверсал №100	Перчатки нестериннй Унверсал №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296088	4787799	Перчатки нитрил. н/с М (пара) №2	Перчатки нитрил. н/с М (пара) №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296089	4787800	Пефе 120мг/5мл 100мл сироп Лафз	Пефе 120мг/5мл 100мл сироп Лафз	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296090	4787801	Пефсал аерозол 25/250мкг доза 120доз №1	Пефсал аерозол 25/250мкг доза 120доз №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296091	4787802	Пефсал аэрозоль 25/125 мкг №1	Пефсал аэрозоль 25/125 мкг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296092	4787803	Пивные дрожжи "Актив" 0,4г №100	Пивные дрожжи "Актив" 0,4г №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296093	4787804	Пикмет крем 30г (Перметрин)	Пикмет крем 30г (Перметрин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296094	4787805	Пиковит SP сироп 100мл Спринг Фарм	Пиковит SP сироп 100мл Спринг Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296095	4787806	Пиковит паст  №30	Пиковит паст  №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296096	4787807	Пиковит сироп 150мл	Пиковит сироп 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296097	4787808	Пиковит форте паст. №30	Пиковит форте паст. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296098	4787809	Пиколакс капли  0,75% 15 мл Фармак	Пиколакс капли  0,75% 15 мл Фармак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296099	4787810	Пиколакс капли  0,75% 30 мл Фармак	Пиколакс капли  0,75% 30 мл Фармак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296100	4787811	Пиколакс капли МР 0,75% 10мл (Пикалаксимер) МР	Пиколакс капли МР 0,75% 10мл (Пикалаксимер) МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296101	4787812	Пиколакс таб 7,5мг №10	Пиколакс таб 7,5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296102	4787813	Пилокарпин 10мг/мл гл.капли 10мл !!!	Пилокарпин 10мг/мл гл.капли 10мл !!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296103	4787814	Пиносол капли наз.10мл	Пиносол капли наз.10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296104	4787815	Пипетка полимер.0.3мл№100	Пипетка полимер.0.3мл№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296105	4787816	Пирантел таб.250мг№30	Пирантел таб.250мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296106	4787817	Пирацетам 20% 5мл №10	Пирацетам 20% 5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296107	4787818	Пирацетам 20% 5мл №10 МР	Пирацетам 20% 5мл №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296108	4787819	Пирацетам 200 капс. 200мг №60	Пирацетам 200 капс. 200мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296109	4787820	Пирацетам капс.200мг№20	Пирацетам капс.200мг№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296110	4787821	Пирацетам-Remedy капс.200мг№10	Пирацетам-Remedy капс.200мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296111	4787822	Пирацетам-Remedy капс.400мг№10	Пирацетам-Remedy капс.400мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296112	4787823	Пиретикол суспензия д/прим внутрь 120мг/5мл 100мл №1	Пиретикол суспензия д/прим внутрь 120мг/5мл 100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296113	4787824	Пк-Мерц таб 100мг №30	Пк-Мерц таб 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296114	4787825	Плекнил таб 200мг №60 (Плаквинил)	Плекнил таб 200мг №60 (Плаквинил)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296115	4787826	Плогрель 75 мг таб №28	Плогрель 75 мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296116	4787827	Полижен капсулы №12	Полижен капсулы №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296117	4787828	Полижен Мал №24 таб Malika laboratories??	Полижен Мал №24 таб Malika laboratories??	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296118	4787829	Полижинакс ваг/капс №12	Полижинакс ваг/капс №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296119	4787830	Поликарнит р/р 90мг/50мл	Поликарнит р/р 90мг/50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296120	4787831	Полимик таб.№10 Офлоксацин+Орнидазол	Полимик таб.№10 Офлоксацин+Орнидазол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296121	4787832	Полиоксидоний амп.6мг№5	Полиоксидоний амп.6мг№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296122	4787833	Полиоксидоний супп.12мг№10	Полиоксидоний супп.12мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296123	4787834	Полиоксидоний таб. 12мг №10	Полиоксидоний таб. 12мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296124	4787835	Полисорб МП пор сусп 12гр	Полисорб МП пор сусп 12гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296125	4787836	Польматин таб 10мг №28	Польматин таб 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296126	4787837	Польматин таб 20мг №28	Польматин таб 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296127	4787838	Понангин 10мл амп №5 М Р	Понангин 10мл амп №5 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296128	4787839	Постеризан маз рек 25г (Против геморроя)	Постеризан маз рек 25г (Против геморроя)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296129	4787840	Потенсил лиоф. пор. д/инф. 20мкг N1 (фл)	Потенсил лиоф. пор. д/инф. 20мкг N1 (фл)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296130	4787841	Пояс Оздоровител.Верблюж.шерсти R42 №1	Пояс Оздоровител.Верблюж.шерсти R42 №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296131	4787842	Пояс Оздоровител.Верблюж.шерсти R44 №1	Пояс Оздоровител.Верблюж.шерсти R44 №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296132	4787843	Пояс Оздоровител.Верблюж.шерсти R46 №1	Пояс Оздоровител.Верблюж.шерсти R46 №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296133	4787844	Пояс Оздоровител.Верблюж.шерсти R52 №1	Пояс Оздоровител.Верблюж.шерсти R52 №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296134	4787845	Прайд-4 таб. 4мг №30	Прайд-4 таб. 4мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296135	4787846	Предизин таб.35мг№60	Предизин таб.35мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296136	4787847	Преднизалон амп.30мг/1мл№3	Преднизалон амп.30мг/1мл№3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296137	4787848	Преднизолон мазь 0,5% 15г. Русс!!!	Преднизолон мазь 0,5% 15г. Русс!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296138	4787849	Преднизолон р-р д/в/в и в/м. введ.30мг/мл 1мл №10	Преднизолон р-р д/в/в и в/м. введ.30мг/мл 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296139	4787850	Преднизолон таб 0,005г №100	Преднизолон таб 0,005г №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296140	4787851	Преднизолон таб. 5мг №100	Преднизолон таб. 5мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296141	4787852	Преднизолон таб. 5мг №40	Преднизолон таб. 5мг №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296142	4787853	Предуктал ОД капс. 80мг №30	Предуктал ОД капс. 80мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296143	4787854	Презервативы "M.Dior" №3 Ассортимент	Презервативы "M.Dior" №3 Ассортимент	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296144	4787855	Пренесса  4мг №30 таб.	Пренесса  4мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296145	4787856	Пренесса 8мг №30 таб.	Пренесса 8мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296146	4787857	Престилол таб. 5мг/5мг №30	Престилол таб. 5мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296147	4787858	Пробиол таб №10	Пробиол таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296148	4787859	Прогестерон амп.2.5% в масле.1мл№10	Прогестерон амп.2.5% в масле.1мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296149	4787860	Прозерин 0,05% 1мл №10 Русс!!	Прозерин 0,05% 1мл №10 Русс!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296150	4787861	Промегард №30 капс	Промегард №30 капс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296151	4787862	Пропанорм таб. 150мг. №50	Пропанорм таб. 150мг. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296152	4787863	Простакор  р-р д/ин 5мг/мл 1мл №10 Русс!!	Простакор  р-р д/ин 5мг/мл 1мл №10 Русс!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296153	4787864	Простасев таб №30	Простасев таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296154	4787865	Простатилен амп 10мг №10	Простатилен амп 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296155	4787866	Просторол таб №30 Индия	Просторол таб №30 Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296156	4787867	Просульпин таб 50мг №30	Просульпин таб 50мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296157	4787868	Просульпин таб. 200мг №30	Просульпин таб. 200мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296158	4787869	Протефлазид капли 30мл !!!!	Протефлазид капли 30мл !!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296159	4787870	Протефлазид свечи 3гр №10	Протефлазид свечи 3гр №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296160	4787871	Псоркьюр капс №30	Псоркьюр капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296161	4787872	Пулмоксол сироп 30мг/5мл.150мл.№1	Пулмоксол сироп 30мг/5мл.150мл.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296162	4787873	Пумпан капли 20мл	Пумпан капли 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296163	4787874	Пяточки крем 30гр	Пяточки крем 30гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296164	4787875	Пяточки крем 60гр	Пяточки крем 60гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296165	4787876	Рабедол 20мг капс №30	Рабедол 20мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296166	4787877	Рабез-Д капс 20мг+30мг №30	Рабез-Д капс 20мг+30мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296167	4787878	Рабемак-DSR капс.№20	Рабемак-DSR капс.№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296168	4787879	Радапрост таблетки №30	Радапрост таблетки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296169	4787880	Радирекс таб №10	Радирекс таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296170	4787881	Радоксил Таблетки №30	Радоксил Таблетки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296171	4787882	Рамкацин р-р д/ин 100мг/2мл по 2мл №1	Рамкацин р-р д/ин 100мг/2мл по 2мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296172	4787883	Рамкацин р-р д/ин 500мг/2мл по 2мл №1	Рамкацин р-р д/ин 500мг/2мл по 2мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296173	4787884	Ран-Дит-150мг. №100	Ран-Дит-150мг. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296174	4787885	Рантилок таб.150мг№100	Рантилок таб.150мг№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296175	4787886	Рапитус 120мл сироп	Рапитус 120мл сироп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296176	4787887	Расторопши масло капс 350мг №100	Расторопши масло капс 350мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296177	4787888	Раунатин таб. 2мг №10	Раунатин таб. 2мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296178	4787889	Ребагит таб. 100мг №30	Ребагит таб. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296179	4787890	Ревалгин таб №20	Ревалгин таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296180	4787891	Ревартон пор. д/инъек. 1г №1	Ревартон пор. д/инъек. 1г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296181	4787892	Ревмалекс капс №30	Ревмалекс капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296182	4787893	Ревмоксикам супп. ректаль. по 0,015г №5	Ревмоксикам супп. ректаль. по 0,015г №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296183	4787894	Ревмоксикам таб. 15мг №10	Ревмоксикам таб. 15мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296184	4787895	Ревмоксикам таб. 7,5 мг №20	Ревмоксикам таб. 7,5 мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296185	4787896	Регидрационная МL соль пор №10  Малика Фарм	Регидрационная МL соль пор №10  Малика Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296186	4787897	Регидрационная соль №10  !!	Регидрационная соль №10  !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296187	4787898	Регидрейд р-р для приема внутрь (Регидратсионий)	Регидрейд р-р для приема внутрь (Регидратсионий)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296188	4787899	Регулон таб. №21	Регулон таб. №21	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296189	4787900	Редофф 5гр/10мл №5 08,23	Редофф 5гр/10мл №5 08,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296190	4787901	Рейтоил капсулы №20	Рейтоил капсулы №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296191	4787902	Рексетин таб.20мг№30	Рексетин таб.20мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296192	4787903	Релакзен капс №10	Релакзен капс №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296193	4787904	Релиф Адванс мазь рект. 28,4г	Релиф Адванс мазь рект. 28,4г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296194	4787905	Релиф Адванс супп. рект. №12	Релиф Адванс супп. рект. №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296195	4787906	Релиф мазь рект. 28,4г	Релиф мазь рект. 28,4г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296196	4787907	Релиф супп. рект. №12	Релиф супп. рект. №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296197	4787908	Ремантадин капс. 100мг №10	Ремантадин капс. 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296198	4787909	Ременс капли 50мл	Ременс капли 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296199	4787910	Реналка сироп 100мл№1	Реналка сироп 100мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296200	4787911	Ренгалин 100мл	Ренгалин 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296201	4787912	Ренгалин таб. №20 !!	Ренгалин таб. №20 !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296202	4787913	Ренни жеват.таб.ментол №24	Ренни жеват.таб.ментол №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296203	4787914	Ренпрос №60 капсула	Ренпрос №60 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296204	4787915	Реополиглюкин р-р д/инф 200мл	Реополиглюкин р-р д/инф 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296205	4787916	Реосорбилакт  р-р для инф. 200мл	Реосорбилакт  р-р для инф. 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296206	4787917	Реосорбилакт  р-р для инф. 200мл МР	Реосорбилакт  р-р для инф. 200мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296207	4787918	Реосорбилакт  р-р для инф. 200мл!!!	Реосорбилакт  р-р для инф. 200мл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296208	4787919	Реосорбилакт р-р для инф.200мл Темур	Реосорбилакт р-р для инф.200мл Темур	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296209	4787920	Репейное масло (против выпадение волос) 100мл	Репейное масло (против выпадение волос) 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296210	4787921	Репо р-р.инъек.4000ЕД_0.8мл.Шприц№1	Репо р-р.инъек.4000ЕД_0.8мл.Шприц№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296211	4787922	Респикур-АТ сироп 100мл №1 Serene Индия	Респикур-АТ сироп 100мл №1 Serene Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296212	4787923	Ретоболил-50 2мл №1 Индия	Ретоболил-50 2мл №1 Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296213	4787924	Рефлкес таб №30	Рефлкес таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296214	4787925	Рибоксин 2% амп. 10мл №10	Рибоксин 2% амп. 10мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296215	4787926	Рибоксин 200мг таб №10	Рибоксин 200мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296216	4787927	Рибоксин 20мг 10мл №10 М Р	Рибоксин 20мг 10мл №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296217	4787928	Ригевидон таб. №21 "Гедеон рихтер"	Ригевидон таб. №21 "Гедеон рихтер"	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296218	4787929	Римоксикам  для инъекций 1% /1,5мл М Р	Римоксикам  для инъекций 1% /1,5мл М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296219	4787930	Римосопт глаз капли 5мл №1	Римосопт глаз капли 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296220	4787931	Риназолин 0,5% 10 мл, в п/э фл,	Риназолин 0,5% 10 мл, в п/э фл,	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296221	4787932	Рингер инф 100 мл МР МР МР	Рингер инф 100 мл МР МР МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296222	4787933	Рингер инф 200 мл Рекамед	Рингер инф 200 мл Рекамед	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296223	4787934	Рингер инф 250мл МР!!!	Рингер инф 250мл МР!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296224	4787935	Рингер Лактат 200мл Дента	Рингер Лактат 200мл Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296225	4787936	РинзаСип+ВитС пак.5г№10 Лимон	РинзаСип+ВитС пак.5г№10 Лимон	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296226	4787937	Риниколд Бронхо сироп 100мл	Риниколд Бронхо сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296227	4787938	Риниколд таб №4	Риниколд таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296228	4787939	Риноксил спрей 0.1%.10мл.№1	Риноксил спрей 0.1%.10мл.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296229	4787940	Риномакс Актив таб. №10	Риномакс Актив таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296230	4787941	Риномакс Инго спрей 1,5мг/мл 30мл	Риномакс Инго спрей 1,5мг/мл 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296231	4787942	Ринотин Таблетки №30	Ринотин Таблетки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296232	4787943	Рипронат амп. 100мг/5мл №10	Рипронат амп. 100мг/5мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296233	4787944	Рипронат капс 500мг №60	Рипронат капс 500мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296234	4787945	Риспаксол таб. 2мг №60	Риспаксол таб. 2мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296235	4787946	Риспаксол таб. 4мг №60	Риспаксол таб. 4мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296236	4787947	Рифампицин капс 150мг №20	Рифампицин капс 150мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296237	4787948	Розулесс-10 таб. 10мг №28	Розулесс-10 таб. 10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296238	4787949	Розулесс-20 таб. 20мг №28	Розулесс-20 таб. 20мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296239	4787950	Роксера таб 10 мг №30	Роксера таб 10 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296240	4787951	Роксера таб 15 мг №30	Роксера таб 15 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296241	4787952	Роксера таб 30 мг №30	Роксера таб 30 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296242	4787953	Роксера таб 5 мг №30	Роксера таб 5 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296243	4787954	Ромидон пор. д/приг р-ра со вкусом Лимон, Апельсина 5г №10 п	Ромидон пор. д/приг р-ра со вкусом Лимон, Апельсина 5г №10 п	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296244	4787955	Ромидон таб №100	Ромидон таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296245	4787956	Ронофлор бэби саше №10	Ронофлор бэби саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296246	4787957	Ронофлор кидис саше №10 ( бифилакс кидс)	Ронофлор кидис саше №10 ( бифилакс кидс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296247	4787958	Ронофлор Релиф саше №6	Ронофлор Релиф саше №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296248	4787959	Ронофлор Форте капс №9	Ронофлор Форте капс №9	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296249	4787960	Роноцит р-р 1000мг/4мл №5	Роноцит р-р 1000мг/4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296250	4787961	Ростишан сироп 200мл	Ростишан сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296251	4787962	Ротабиотик беби саше №10	Ротабиотик беби саше №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296252	4787963	Ротадон Адванс р.р 200мг/мл №10	Ротадон Адванс р.р 200мг/мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296253	4787964	Роталуд таб. 2мг №10	Роталуд таб. 2мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296254	4787965	Роталут таб  4мг №10	Роталут таб  4мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296255	4787966	Роталфен амп. 50мг/2мл №5	Роталфен амп. 50мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296256	4787967	Ротафер капли п/внутирь 50мг 30мл №1	Ротафер капли п/внутирь 50мг 30мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296257	4787968	РТФИТ капс №30	РТФИТ капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296258	4787969	Румалон р-р 1мл №5	Румалон р-р 1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296259	4787970	Румизол с/а 500мг №14	Румизол с/а 500мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296260	4787971	Руферон-РН свечи 150000 МЕ №10	Руферон-РН свечи 150000 МЕ №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296261	4787972	Руферон-РН свечи 250000 МЕ №10	Руферон-РН свечи 250000 МЕ №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296262	4787973	Рыбий жир пищевой "LIK"с витамин. А,Д,Е, 0,78г №60	Рыбий жир пищевой "LIK"с витамин. А,Д,Е, 0,78г №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296263	4787974	Рыбий жир пищевой"LIK"с витамин. А. Д. Е. 0,3г №50	Рыбий жир пищевой"LIK"с витамин. А. Д. Е. 0,3г №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296264	4787975	Рыбный жир капс жевт 0,4 детс №100	Рыбный жир капс жевт 0,4 детс №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296265	4787976	Сагацефпо 100 DT таб 100мг №10	Сагацефпо 100 DT таб 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296266	4787977	Сагацефпо для сусп 50мг/5мл 60мл	Сагацефпо для сусп 50мг/5мл 60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296267	4787978	Сагацефпо-ДТ таб. 200мг №10	Сагацефпо-ДТ таб. 200мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296268	4787979	Сайтотек таб. 200мкг №60	Сайтотек таб. 200мкг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296269	4787980	Салициловая к-та р-р спирт.1%.20мл.№1	Салициловая к-та р-р спирт.1%.20мл.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296270	4787981	Салициловая к-та р-р спирт.2%.20мл.№1	Салициловая к-та р-р спирт.2%.20мл.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296271	4787982	Салофальк 500мг №50	Салофальк 500мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296272	4787983	Салфетка 16см х 14см №10	Салфетка 16см х 14см №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296273	4787984	Салфетка 45см х 29см №5	Салфетка 45см х 29см №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296274	4787985	Сальбутамол аэро 100 мкг 12мл Бионон фарм	Сальбутамол аэро 100 мкг 12мл Бионон фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296275	4787986	Сальбутамол-Нео 100МКГ/Доза 12мл/200доз	Сальбутамол-Нео 100МКГ/Доза 12мл/200доз	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296276	4787987	Санипласт 72*19мм №100	Санипласт 72*19мм №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296277	4787988	Саргин р-р д/инф. 42мг/мл 100мл №1	Саргин р-р д/инф. 42мг/мл 100мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296278	4787989	Седавит р-р 100мл	Седавит р-р 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296279	4787990	Седарекс таб.2мг№30	Седарекс таб.2мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296280	4787991	Седолин капс №30	Седолин капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296281	4787992	Седоник капс. №30	Седоник капс. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296282	4787993	Секдаза таб. 500мг №4	Секдаза таб. 500мг №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296283	4787994	Секнидокс таб 1000мг. №2 блистер	Секнидокс таб 1000мг. №2 блистер	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296284	4787995	Секразол взр 150мл Нобел	Секразол взр 150мл Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296285	4787996	Секстафаг Фл №4 20мл	Секстафаг Фл №4 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296286	4787997	Селемин 5С р-р д/инф. 200мл!!	Селемин 5С р-р д/инф. 200мл!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296287	4787998	Семилакт табл 50/20мг №10	Семилакт табл 50/20мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296288	4787999	Сенадексин таб №10	Сенадексин таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296289	4788000	Сенадексин таб №10 Зуннур	Сенадексин таб №10 Зуннур	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296290	4788001	СептаНазал спрей 0,05 мг/доз 10мл	СептаНазал спрей 0,05 мг/доз 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296291	4788002	СептаНазал спрей 0,1 мг/доз 10мл	СептаНазал спрей 0,1 мг/доз 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296292	4788003	Септолете Тотал спрей 30 мл. №1	Септолете Тотал спрей 30 мл. №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296293	4788004	Септолете тотал эвкалипт паст. №16	Септолете тотал эвкалипт паст. №16	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296294	4788005	Сератид 125 Эвохалер аэрозол 125мкг/25мкг 120доз	Сератид 125 Эвохалер аэрозол 125мкг/25мкг 120доз	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296295	4788006	Сербан-10 таб. 10мг №30	Сербан-10 таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296296	4788007	Сербан-15 таб. 15мг №30	Сербан-15 таб. 15мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296297	4788008	Серишан Таб. №100	Серишан Таб. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296298	4788009	Сермин р-р динф. 250мл !!	Сермин р-р динф. 250мл !!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296299	4788010	Серная мазь простая 20г (Зиё-Нур)	Серная мазь простая 20г (Зиё-Нур)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296300	4788011	Сернитин р-р д/ин. 1г/5мл 5мл №5	Сернитин р-р д/ин. 1г/5мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296301	4788012	Серравин таб. 10мг №100	Серравин таб. 10мг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296302	4788013	Серрата таб.10мг№30	Серрата таб.10мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296303	4788014	Серридаза таб. 10мг №30	Серридаза таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296304	4788015	Сертоспан сусп. д/ин. амп. 5мг+2мг/мл №1	Сертоспан сусп. д/ин. амп. 5мг+2мг/мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296305	4788016	Сертофен амп  р-р д/и 50мг/2мл №5	Сертофен амп  р-р д/и 50мг/2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296306	4788017	Сертофен таб 25мг №20	Сертофен таб 25мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296307	4788018	Сетимед сироп 2,5мг/5мл 50мл №1	Сетимед сироп 2,5мг/5мл 50мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296308	4788019	Силавит Д жеват таб №30	Силавит Д жеват таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296309	4788020	Силдекс (Силденафил) 100мг №4 Малика	Силдекс (Силденафил) 100мг №4 Малика	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296310	4788021	Силеректа-20 20 мг табл №4	Силеректа-20 20 мг табл №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296311	4788022	Силурозин капс.4мг№60	Силурозин капс.4мг№60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296312	4788023	Симпатил таб. №40	Симпатил таб. №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296313	4788024	Синафлан мазь 0,025% 15г!!!	Синафлан мазь 0,025% 15г!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296314	4788025	Синботик бейби 50мл	Синботик бейби 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296315	4788026	Синглон таб. 5мг №28	Синглон таб. 5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296316	4788027	Синглон таб.10мг№28	Синглон таб.10мг№28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296317	4788028	Синегра 100мг таб №4	Синегра 100мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296318	4788029	Синегра 25мг таб №4	Синегра 25мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296319	4788030	Синегра 50мг таб №4	Синегра 50мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296320	4788031	Синегра Лонг таб №4	Синегра Лонг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296321	4788032	Синтанин 50мл	Синтанин 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296322	4788033	Синтомицин 250мг с/в №10 МР	Синтомицин 250мг с/в №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296323	4788034	Синтомицин мазь 5% 25г МР	Синтомицин мазь 5% 25г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296324	4788035	Синтомицина линимент 10% 25г	Синтомицина линимент 10% 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296325	4788036	Синупрет Драже №50	Синупрет Драже №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296326	4788037	Синупрет Форте таб. №20	Синупрет Форте таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296327	4788038	Сиофор 500 таб. №60	Сиофор 500 таб. №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296328	4788039	Сипозмалгон раствор  5 мл №5 М Р	Сипозмалгон раствор  5 мл №5 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296329	4788040	Сириглобин сироп 200мл	Сириглобин сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296330	4788041	Сирикал сироп 200мл	Сирикал сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296331	4788042	Сиримол капсулы №30	Сиримол капсулы №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296332	4788043	Сиримол сироп 200мл	Сиримол сироп 200мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296333	4788044	Сироп бромгексин 40мл	Сироп бромгексин 40мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296334	4788045	Сироп Бромгексин 90мл	Сироп Бромгексин 90мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296335	4788046	Сироп пертуссин 50мл	Сироп пертуссин 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296336	4788047	Сироп солодкового корня-LIK 50мл№1	Сироп солодкового корня-LIK 50мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296337	4788048	Сироп Холосас 90мл№1	Сироп Холосас 90мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296338	4788049	Сиспрес 250мг таб №14	Сиспрес 250мг таб №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296339	4788050	Сиспрес 500мг таб №14	Сиспрес 500мг таб №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296340	4788051	Сиспрес 750мг таб №14	Сиспрес 750мг таб №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296341	4788052	Система Хитой!!	Система Хитой!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296342	4788053	Сита Мет таб. 50мг/1000мг №28	Сита Мет таб. 50мг/1000мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296343	4788054	Сита Мет таб. 50мг/500мг №28	Сита Мет таб. 50мг/500мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296344	4788055	Сиэнэф 500мг/2мл №5 укол	Сиэнэф 500мг/2мл №5 укол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296345	4788056	СК Амприлан HD 5МГ/25мг №30	СК Амприлан HD 5МГ/25мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296346	4788057	СК Арбидан капс 100мг №10 МР (Арбидол)	СК Арбидан капс 100мг №10 МР (Арбидол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296347	4788058	СК Вазатор 10мг таб №30 (06 23)	СК Вазатор 10мг таб №30 (06 23)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296348	4788059	Ск Велпен 200мг таб №100  06,23	Ск Велпен 200мг таб №100  06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296349	4788060	Ск Виплактин Бейби пор.д/приг.р-ра 1г №10    07,23	Ск Виплактин Бейби пор.д/приг.р-ра 1г №10    07,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296350	4788061	СК Грамидин спрей 0,06мг+0,1мг 112дох	СК Грамидин спрей 0,06мг+0,1мг 112дох	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296351	4788062	СК Гриппостоп  апельсин порош №10	СК Гриппостоп  апельсин порош №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296352	4788063	СК Омегаст 10мг капс №14 Нобел	СК Омегаст 10мг капс №14 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296353	4788064	СК Омегаст 20мг капс №28 Нобел	СК Омегаст 20мг капс №28 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296354	4788065	Ск П-Зеро р-р для инек 1мл №5  06,23	Ск П-Зеро р-р для инек 1мл №5  06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296355	4788066	СК Пиковит МР сироп 150мл МР МР 06,23	СК Пиковит МР сироп 150мл МР МР 06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296356	4788067	СК Резистол 50мл 06,23	СК Резистол 50мл 06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296357	4788068	Скальпель лезвие 12ли	Скальпель лезвие 12ли	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296358	4788069	Скапел Хир, Лезвие, Размер 13	Скапел Хир, Лезвие, Размер 13	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296359	4788070	Скоба №1	Скоба №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296360	4788071	Слезол форте г/г 15мл №1	Слезол форте г/г 15мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296361	4788072	Смекта Био, 3г, пакетик, №20 Bio Max Pharm	Смекта Био, 3г, пакетик, №20 Bio Max Pharm	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296362	4788073	Снуп наз. спрей 0,05% 15мл!!!	Снуп наз. спрей 0,05% 15мл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296363	4788074	Солегон таб №80	Солегон таб №80	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296364	4788075	Солтек таб №60	Солтек таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296365	4788076	Солутрон форте пор. д/пр. р-ра д/ин. №10 10,23	Солутрон форте пор. д/пр. р-ра д/ин. №10 10,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296366	4788077	Сомазина амп. 500мг/4мл №5	Сомазина амп. 500мг/4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296367	4788078	Сонанорма таб.25мг№25 (Атаракс)	Сонанорма таб.25мг№25 (Атаракс)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296368	4788079	Сонапакс таб. 10мг №60	Сонапакс таб. 10мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296369	4788080	Сонапакс таб. 25мг №60	Сонапакс таб. 25мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296370	4788081	Сорбифер дурулес таб.320мг №50	Сорбифер дурулес таб.320мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296371	4788082	Соска Saff Доналик УЧИ ТАППАК NO:SA-28	Соска Saff Доналик УЧИ ТАППАК NO:SA-28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296372	4788083	Соска Saff Занжирли Рангли №1	Соска Saff Занжирли Рангли №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296373	4788084	Софалор таб.5мг№30	Софалор таб.5мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296374	4788085	Спазган р-р д/ин. 500мг+2мг+0,02мг/1мл 5мл №5	Спазган р-р д/ин. 500мг+2мг+0,02мг/1мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296375	4788086	Спазган таб. №100	Спазган таб. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296376	4788087	Спазмалгон таб №20 Актавис	Спазмалгон таб №20 Актавис	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296377	4788088	Спазмофарм 500мг 0,03мл №10	Спазмофарм 500мг 0,03мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296378	4788089	Спаржен таб №30	Спаржен таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296379	4788090	Спарк капс. 200мг №30	Спарк капс. 200мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296380	4788091	Спеман таб.№100	Спеман таб.№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296381	4788092	Спеман-Форте таб.№100	Спеман-Форте таб.№100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296382	4788093	Сперманорм №20 капсула	Сперманорм №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296383	4788094	Спертоник таб.№30	Спертоник таб.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296384	4788095	Спилотта таб. 50мг/1000мг №18	Спилотта таб. 50мг/1000мг №18	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296385	4788096	Спилотта таб. 50мг/500мг №20	Спилотта таб. 50мг/500мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296386	4788097	Спирт 70% 50мл Камол Мед	Спирт 70% 50мл Камол Мед	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296387	4788098	Спирт 70% 50мл Рано	Спирт 70% 50мл Рано	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296388	4788099	Спринцовка ПВХ А-1 с мяг нак 25мл	Спринцовка ПВХ А-1 с мяг нак 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296389	4788100	Спринцовка ПВХ А-2 с мяг нак 55мл	Спринцовка ПВХ А-2 с мяг нак 55мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296390	4788101	Спринцовка ПВХ А-3 с мяг нак 75мл	Спринцовка ПВХ А-3 с мяг нак 75мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296391	4788102	Спринцовка Пластизольная БЕ-13 520мл	Спринцовка Пластизольная БЕ-13 520мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296392	4788103	Спринцовка Пластизольная ПВХ А-12 мяхки нак	Спринцовка Пластизольная ПВХ А-12 мяхки нак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296393	4788104	Спринцовка Пластизольная ПВХ А-15 мяхки нак	Спринцовка Пластизольная ПВХ А-15 мяхки нак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296394	4788105	Спринцовка Пластизольная ПВХ А-6 мяхки нак	Спринцовка Пластизольная ПВХ А-6 мяхки нак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296395	4788106	Спринцовка Пластизольная ПВХ А-9 мяхки нак	Спринцовка Пластизольная ПВХ А-9 мяхки нак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296396	4788107	Спринцовка Пластизольная ПВХ АЕ-15 500мл мяхки нак	Спринцовка Пластизольная ПВХ АЕ-15 500мл мяхки нак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296397	4788108	Спринцовка Пластизольная ПВХ Б-12	Спринцовка Пластизольная ПВХ Б-12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296398	4788109	Спринцовка Пластизольная ПВХ Б-9	Спринцовка Пластизольная ПВХ Б-9	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296399	4788110	Стазекс таб. 75мг №30	Стазекс таб. 75мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296400	4788111	Стекловидное тело амп. 2мл №10	Стекловидное тело амп. 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296401	4788112	Стоп Грибок мазь 15г	Стоп Грибок мазь 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296402	4788113	Стопдиар табл. 100мг №24	Стопдиар табл. 100мг №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296403	4788114	Стрезам капс. 50мг №60	Стрезам капс. 50мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296404	4788115	Стрептомитсин маз 30г №1	Стрептомитсин маз 30г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296405	4788116	Стрептомицин 1,0г М Р	Стрептомицин 1,0г М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296406	4788117	Стрептоцидовая мазь 5%.25г.№1	Стрептоцидовая мазь 5%.25г.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296407	4788118	Стрепхелз паст  (Лимон) №24	Стрепхелз паст  (Лимон) №24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296408	4788119	Стресси капс №20	Стресси капс №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296409	4788120	Суарон пор. 100мг №10	Суарон пор. 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296410	4788121	Суарон таб. 100мг №20	Суарон таб. 100мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296411	4788122	Сувитол р-р.инф.200мл№1	Сувитол р-р.инф.200мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296412	4788123	Сукрофер р-р д/ин. 20мг/мл 5мл №5	Сукрофер р-р д/ин. 20мг/мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296413	4788124	Сулбакт (Ампициллин+сульбактам) 1,5г №1	Сулбакт (Ампициллин+сульбактам) 1,5г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296414	4788125	Сульфацил гл. капли 300мг/мл 10 мл	Сульфацил гл. капли 300мг/мл 10 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296415	4788126	Сульфацил-Натрий DF капли гл. 20% 5мл	Сульфацил-Натрий DF капли гл. 20% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296416	4788127	Сульфокамфокаин амп  10% 2 мл №10 Русс	Сульфокамфокаин амп  10% 2 мл №10 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296417	4788128	Сульфокамфокаин р-р д/инъек. 100мг/мл 2мл №10	Сульфокамфокаин р-р д/инъек. 100мг/мл 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296418	4788129	Сумамигрен таб. 100мг №6	Сумамигрен таб. 100мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296419	4788130	Сумамигрен таб. 50мг №6	Сумамигрен таб. 50мг №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296420	4788131	Сумаром Лио лиоф. д/приг р-ра 500 мг фл.	Сумаром Лио лиоф. д/приг р-ра 500 мг фл.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296421	4788132	Сунипран таб. 400мг №30	Сунипран таб. 400мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296422	4788133	Супер Магний Б6 таб №50	Супер Магний Б6 таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296423	4788134	Супер Слим фиточай малина 2г №30	Супер Слим фиточай малина 2г №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296424	4788135	Супер Чистотел 1мл фл №1	Супер Чистотел 1мл фл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296425	4788136	Суперкаин Форте 2мл №10 С.Т	Суперкаин Форте 2мл №10 С.Т	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296426	4788137	Супралгин для инъ 20мг/1мл МР №5	Супралгин для инъ 20мг/1мл МР №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296427	4788138	Супрастин 20мг 1мл.№5!!!	Супрастин 20мг 1мл.№5!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296428	4788139	Супрастин таб. 25мг. №20	Супрастин таб. 25мг. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296429	4788140	Суприлекс таб.10мг№30	Суприлекс таб.10мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296430	4788141	Суприма Бронхо сироп 100мл	Суприма Бронхо сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296431	4788142	Суприма плюс мазь 20гр	Суприма плюс мазь 20гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296432	4788143	Суставин таб №60	Суставин таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296433	4788144	Сустагард-Артро амп 200мг/мл2мл №5	Сустагард-Артро амп 200мг/мл2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296434	4788145	Сустан №20 капсула	Сустан №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296435	4788146	Сут идиш запас соска OLMA №50	Сут идиш запас соска OLMA №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296436	4788147	Сут идиш запас соска №100 Пакетик	Сут идиш запас соска №100 Пакетик	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296437	4788148	Сут идиш запас соска №72 камера OLMA	Сут идиш запас соска №72 камера OLMA	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296438	4788149	Сут Идиш камера катта 240мл	Сут Идиш камера катта 240мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296439	4788150	Сут Идиш камера кичик 125мл	Сут Идиш камера кичик 125мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296440	4788151	Сут идиш ПИНГВИН запас соска №100	Сут идиш ПИНГВИН запас соска №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296441	4788152	Сэнипар сусп 50мл М Р	Сэнипар сусп 50мл М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296442	4788153	Сэнипар таб №100 М Р	Сэнипар таб №100 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296443	4788154	Т-Лайф лиоф р-р  10мг №5	Т-Лайф лиоф р-р  10мг №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296444	4788155	Т-Лайф лиоф р-р  1мг №5	Т-Лайф лиоф р-р  1мг №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296445	4788156	Таблетки  от кашля №10	Таблетки  от кашля №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296446	4788157	Тадалис таб 20мг №4	Тадалис таб 20мг №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296447	4788158	Тадимакс таб №42	Тадимакс таб №42	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296448	4788159	Тайгерон 500мг таб №5	Тайгерон 500мг таб №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296449	4788160	Тайлол плюс таб. №10 Нобел	Тайлол плюс таб. №10 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296450	4788161	Тайлол Хот С порошок №12 Нобел	Тайлол Хот С порошок №12 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296451	4788162	Талес Энерго таб №60	Талес Энерго таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296452	4788163	Талк Debella 100гр (женский)	Талк Debella 100гр (женский)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296453	4788164	Талк Enchanteur malaysia 125гр (женский)	Талк Enchanteur malaysia 125гр (женский)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296454	4788165	Таллитон таб. 25мг №28	Таллитон таб. 25мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296455	4788166	Тампон Женский №10	Тампон Женский №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296456	4788167	Тамсапрост капсул 0.4мг №30	Тамсапрост капсул 0.4мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296457	4788168	Тамсол капс. 0,4мг №30!!!	Тамсол капс. 0,4мг №30!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296458	4788169	Тамсулозин  капс №30 (Тамсулоцинк)	Тамсулозин  капс №30 (Тамсулоцинк)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296459	4788170	Танометр (ИАД-01-1)	Танометр (ИАД-01-1)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296460	4788171	Тардиферон ретард таб. 80 мг №30	Тардиферон ретард таб. 80 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296461	4788172	Таумед 4% гл капли	Таумед 4% гл капли	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296462	4788173	Тауфон 4% 10мл	Тауфон 4% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296463	4788174	Тафлотан  капли глазные 15 мкг/мл 3 мл	Тафлотан  капли глазные 15 мкг/мл 3 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296464	4788175	Тацеф в/комл с водой д/и 5мл	Тацеф в/комл с водой д/и 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296465	4788176	Твардокс Н80 таб. 80мг/12,5 №28	Твардокс Н80 таб. 80мг/12,5 №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296466	4788177	Тебантин капс. 300мг №50 (Габатен)	Тебантин капс. 300мг №50 (Габатен)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296467	4788178	Тевартем 100мл (Тивортин)	Тевартем 100мл (Тивортин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296468	4788179	Теймурова спрей для ног 150мл	Теймурова спрей для ног 150мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296469	4788180	Текназол капс 100мг №4 Нобел	Текназол капс 100мг №4 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296470	4788181	Телмиста таб. 40мг №28	Телмиста таб. 40мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296471	4788182	Телсартан 40мг №30	Телсартан 40мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296472	4788183	Телсартан 80мг №30	Телсартан 80мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296473	4788184	Телсартан Н таб. 40мг+12,5мг №28	Телсартан Н таб. 40мг+12,5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296474	4788185	Телсартан Н таб. 80мг+12,5мг №28	Телсартан Н таб. 80мг+12,5мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296475	4788186	Темпалгин таб №20	Темпалгин таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296476	4788187	Темфулган р-р д/инф. 100мл	Темфулган р-р д/инф. 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296477	4788188	Тенокс 10 мг №30	Тенокс 10 мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296478	4788189	Тенокс 5мг №30	Тенокс 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296479	4788190	Тенотен Взр таб. №40	Тенотен Взр таб. №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296480	4788191	Теофил SR 100мг капс №30	Теофил SR 100мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296481	4788192	Теофил SR 200мг капс №30	Теофил SR 200мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296482	4788193	Теофил SR 300мг капс №30	Теофил SR 300мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296483	4788194	Терафлекс Адванс №120	Терафлекс Адванс №120	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296484	4788195	Терафлекс Хондрокрем крем 100г 100г	Терафлекс Хондрокрем крем 100г 100г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296485	4788196	Терафлекс Хондрокрем Форте крем 30г	Терафлекс Хондрокрем Форте крем 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296486	4788197	Терафлекс №120	Терафлекс №120	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296487	4788198	Терафлю SP грип/прост пор №10	Терафлю SP грип/прост пор №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296488	4788199	Терафлю пор лимон №10 Малика	Терафлю пор лимон №10 Малика	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296489	4788200	Терафлю пор лимон №10 МР	Терафлю пор лимон №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296490	4788201	ТераФлю. Лимон №10	ТераФлю. Лимон №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296491	4788202	Тербизил крем 1% 15г №1	Тербизил крем 1% 15г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296492	4788203	Тержинан таб.ваг.№6	Тержинан таб.ваг.№6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296493	4788204	Терикс таб. 10мг №10	Терикс таб. 10мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296494	4788205	Термометр мед. ртутный №1	Термометр мед. ртутный №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296495	4788206	Терфалин крем 1% 15г нобел	Терфалин крем 1% 15г нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296496	4788207	Терфалин спрей 1% 30мл	Терфалин спрей 1% 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296497	4788208	Терфалин таб.№14	Терфалин таб.№14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296498	4788209	Тест Вера	Тест Вера	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296499	4788210	Тестостерона пропионат р-р д/ин. 5% 1мл №5	Тестостерона пропионат р-р д/ин. 5% 1мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296500	4788211	Тестостерона Энантат д/и 250мг/1мл №10 Абурайхон	Тестостерона Энантат д/и 250мг/1мл №10 Абурайхон	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296501	4788212	Тетрациклин -GT таб. 100мг №10	Тетрациклин -GT таб. 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296502	4788213	Тетрациклин 1% гл мазь 10г	Тетрациклин 1% гл мазь 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296503	4788214	Тетрациклин мазь д/нар.прим. 3% 15г Синтез	Тетрациклин мазь д/нар.прим. 3% 15г Синтез	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296504	4788215	Тетрациклин таб 0,1г №20.	Тетрациклин таб 0,1г №20.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296505	4788216	Тетрациклин таб. 100мг №10 Ревулет	Тетрациклин таб. 100мг №10 Ревулет	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296506	4788217	Тетурам таб.150мг№50	Тетурам таб.150мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296507	4788218	Тиапросан 100мг №30 таб.	Тиапросан 100мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296508	4788219	Тивортин р-р 100мл МР МР МР МР	Тивортин р-р 100мл МР МР МР МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296509	4788220	Тивортин р-р 100мл!!!	Тивортин р-р 100мл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296510	4788221	Тизерцин таб. п/о 25мг №50	Тизерцин таб. п/о 25мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296511	4788222	Тимис для детей и взрослых	Тимис для детей и взрослых	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296512	4788223	Тимолол кап.гл 0,5%.5мл№1	Тимолол кап.гл 0,5%.5мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296513	4788224	Тимопресс кап. гл. 0.5% 5мл	Тимопресс кап. гл. 0.5% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296514	4788225	Тиотразалим амп. 2,5 % 4 мл. №10 М Р	Тиотразалим амп. 2,5 % 4 мл. №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296515	4788226	Тиотриазолин амп.2.5%.2мл№10	Тиотриазолин амп.2.5%.2мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296516	4788227	Тиотриазолин амп.2.5%.4мл№10	Тиотриазолин амп.2.5%.4мл№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296517	4788228	Тиоцетам амп 10мл №10 (тиокситам) М Р	Тиоцетам амп 10мл №10 (тиокситам) М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296518	4788229	Тиоцетам р-р 10мл №10	Тиоцетам р-р 10мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296519	4788230	Тирозол таб 10мг №50!!!	Тирозол таб 10мг №50!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296520	4788231	Тирокапс капс №20	Тирокапс капс №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296521	4788232	Тиш чутка Взрослый Новинка "Calibon" 12шт &	Тиш чутка Взрослый Новинка "Calibon" 12шт &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296522	4788233	Тиш чутка Детский "Calibon" 12шт &	Тиш чутка Детский "Calibon" 12шт &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296523	4788234	Тиш чутка Детский резинкали каробка &	Тиш чутка Детский резинкали каробка &	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296524	4788235	Тобра глазные/ушные капли 10мл	Тобра глазные/ушные капли 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296525	4788236	Тобримед г/л 0,3% 5мл	Тобримед г/л 0,3% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296526	4788237	Тобром капли гл. 0,3% 5мл	Тобром капли гл. 0,3% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296527	4788238	Токсивенол р-р 1,5мг 3мл №10	Токсивенол р-р 1,5мг 3мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296528	4788239	Токсидокс капс 5мг №10	Токсидокс капс 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296529	4788240	Толпирекс таб. 50мг №30	Толпирекс таб. 50мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296530	4788241	Томид таб 10мг №50	Томид таб 10мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296531	4788242	Тонгкат.Али-Кувват капс.0.4мг№15 Леч.Эрекции	Тонгкат.Али-Кувват капс.0.4мг№15 Леч.Эрекции	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296532	4788243	Тонзилгон Н драж №50	Тонзилгон Н драж №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296533	4788244	Тонзипрет капли 50мл	Тонзипрет капли 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296534	4788245	Тонопрост капс.0.4мг№30 Тамсулозин	Тонопрост капс.0.4мг№30 Тамсулозин	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296535	4788246	Торватор таб. 10мг №20	Торватор таб. 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296536	4788247	Торватор таб. 20мг №20	Торватор таб. 20мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296537	4788248	Торрокс р-р д/инф. 5% 100мл	Торрокс р-р д/инф. 5% 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296538	4788249	Торсид 5мг/мл 4мл №5	Торсид 5мг/мл 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296539	4788250	Торсид таб 5мг №30	Торсид таб 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296540	4788251	Травамакс плюс пор 5гр №5 Малика	Травамакс плюс пор 5гр №5 Малика	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296541	4788252	Траврелакс гран №6	Траврелакс гран №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296542	4788253	Траврелакс Травяной сироп 100мл	Траврелакс Травяной сироп 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296543	4788254	Трайкор таб 145мг №30 Аббот	Трайкор таб 145мг №30 Аббот	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296544	4788255	Трансакт таб 500мг №30	Трансакт таб 500мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296545	4788256	Тренакса таб.500мг№12	Тренакса таб.500мг№12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296546	4788257	Трентал 20мг/мл 5мл №5	Трентал 20мг/мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296547	4788258	Трентал 20мг/мл 5мл №5 Мр	Трентал 20мг/мл 5мл №5 Мр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296548	4788259	Трентал таб. 100мг №60	Трентал таб. 100мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296549	4788260	Трентал таб. 400мг №20	Трентал таб. 400мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296550	4788261	Трибуфил капс №30	Трибуфил капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296551	4788262	Тригамма амп. 2мл №5	Тригамма амп. 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296552	4788263	Тригрим 10мг №30 таб.	Тригрим 10мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296553	4788264	Тридерм мазь 15г	Тридерм мазь 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296554	4788265	Тризим таб. №20	Тризим таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296555	4788266	Трикопол Гее  №20 Индия	Трикопол Гее  №20 Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296556	4788267	Трилам Нео 200мл №1	Трилам Нео 200мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296557	4788268	Тримеик таб. 4мг/1,25мг/10мг №30	Тримеик таб. 4мг/1,25мг/10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296558	4788269	Тримеик таб. 4мг/1,25мг/5мг №30	Тримеик таб. 4мг/1,25мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296559	4788270	Тримеик таб. 8мг/2.5мг/10мг №30	Тримеик таб. 8мг/2.5мг/10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296560	4788271	Тримеик таб. 8мг/2.5мг/5мг №30	Тримеик таб. 8мг/2.5мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296561	4788272	Тримекор MR таб. 35мг №30	Тримекор MR таб. 35мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296562	4788273	Триместрин 2 №20 капсула	Триместрин 2 №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296563	4788274	Триметазидин МВ 35 мг таб №60	Триметазидин МВ 35 мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296564	4788275	Тримол таб №100	Тримол таб №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296565	4788276	Триназол крем 15г	Триназол крем 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296566	4788277	Триодекс 5мл капли глазные и ушные	Триодекс 5мл капли глазные и ушные	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296567	4788278	Триодекс спрей наз 15мл	Триодекс спрей наз 15мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296568	4788279	Трисептол таб. 100мг/20мг №20	Трисептол таб. 100мг/20мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296569	4788280	Трисол 200мг  Мр	Трисол 200мг  Мр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296570	4788281	Триттико 150мг №20 таб.	Триттико 150мг №20 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296571	4788282	Трихапол SP 250мг таб №20	Трихапол SP 250мг таб №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296572	4788283	Трихопол 500мг таб ваг №10	Трихопол 500мг таб ваг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296573	4788284	Трихопол таб. 250мг №20	Трихопол таб. 250мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296574	4788285	Тровокоф классик паст. мята.№24	Тровокоф классик паст. мята.№24	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296575	4788286	Троксевазин 300мг кап. №50	Троксевазин 300мг кап. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296576	4788287	Троксерутин Гель 2% 25г Дента	Троксерутин Гель 2% 25г Дента	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296577	4788288	Тромбо АСС 100мг №30	Тромбо АСС 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296578	4788289	Тромбо АСС 50мг №30	Тромбо АСС 50мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296579	4788290	Тромбо АСС 75мг №30	Тромбо АСС 75мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296580	4788291	Тромбопол таб. 150мг №60	Тромбопол таб. 150мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296581	4788292	Тромбопол таб. 75мг №60	Тромбопол таб. 75мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296582	4788293	Тромбопол таб. 75мг №60 (Тромбафон) Малика	Тромбопол таб. 75мг №60 (Тромбафон) Малика	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296583	4788294	Увиромед таблетки 500мг №10	Увиромед таблетки 500мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296584	4788295	Уголь активированный-УБФ таб. 250мг№10	Уголь активированный-УБФ таб. 250мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296585	4788296	Угринол р-р 50мл №1	Угринол р-р 50мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296586	4788297	Укрлив таб.250мг№30	Укрлив таб.250мг№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296587	4788298	Улкарил 200мг таб №25	Улкарил 200мг таб №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296588	4788299	Улкарил 400мг таб №25	Улкарил 400мг таб №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296589	4788300	Улкарил 800мг таб №25	Улкарил 800мг таб №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296590	4788301	Улкарил крем 10г	Улкарил крем 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296591	4788302	Улкарил крем 2г	Улкарил крем 2г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296592	4788303	Улсепан Таблетки 40 мг N14	Улсепан Таблетки 40 мг N14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296593	4788304	Улуфор 1000мг таб №60	Улуфор 1000мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296594	4788305	Улуфор 500мг таб №60	Улуфор 500мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296595	4788306	Улуфор 850мг таб №60	Улуфор 850мг таб №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296596	4788307	Улькавис таб. 120мг №56	Улькавис таб. 120мг №56	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296597	4788308	Ультрацеф 1,0г 1% 5мл №1	Ультрацеф 1,0г 1% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296598	4788309	Уминовир капс №20 Нобел	Уминовир капс №20 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296599	4788310	Урализин плюс таб №30	Урализин плюс таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296600	4788311	Уриклар капс №30	Уриклар капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296601	4788312	Уролесан  капс №40	Уролесан  капс №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296602	4788313	Уролесан капли 25мл Галичфарм	Уролесан капли 25мл Галичфарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296603	4788314	Уролесан сироп 180мл	Уролесан сироп 180мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296604	4788315	Уронафф капс 400мг  №30	Уронафф капс 400мг  №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296605	4788316	Уростим 50мг №10 таб.	Уростим 50мг №10 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296606	4788317	Урофосцин гранулы 3 г саше №1	Урофосцин гранулы 3 г саше №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296607	4788318	Урофурагин таб. 50мг №30	Урофурагин таб. 50мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296608	4788319	Урохас таб.№30	Урохас таб.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296609	4788320	Урсолив капс.250мг№50	Урсолив капс.250мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296610	4788321	Урсомакс капс. 250мг №50	Урсомакс капс. 250мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296611	4788322	Урсомед капс 300мг №20 Изида	Урсомед капс 300мг №20 Изида	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296612	4788323	Урсопат капс №60	Урсопат капс №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296613	4788324	Урсосан 250мг капс №10 М Р	Урсосан 250мг капс №10 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296614	4788325	Урсосан SP 250мг капс №50	Урсосан SP 250мг капс №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296615	4788326	Урсосан таб форте 500мг №20	Урсосан таб форте 500мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296616	4788327	Урфоцин гранулы 3гр №1	Урфоцин гранулы 3гр №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296617	4788328	Успокой табл гомеоп.№20	Успокой табл гомеоп.№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296618	4788329	Утрожестан 100мг капс №28	Утрожестан 100мг капс №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296619	4788330	Утрожестан капс.200мг№14	Утрожестан капс.200мг№14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296620	4788331	Ухо Чистка WAViO  №200 пакетли	Ухо Чистка WAViO  №200 пакетли	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296621	4788332	Ухо Чистка юрак идишлик №140	Ухо Чистка юрак идишлик №140	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296622	4788333	Факсимин таб 200мг №12	Факсимин таб 200мг №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296623	4788334	Фаниган таб. №100!!	Фаниган таб. №100!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296624	4788335	Фаниган-Фаст гель 30г.№1 Парацет.+Диклофенак	Фаниган-Фаст гель 30г.№1 Парацет.+Диклофенак	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296625	4788336	Фарингомед таб. для расс. №20	Фарингомед таб. для расс. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296626	4788337	Фарингоспрей спрей 30мл№1	Фарингоспрей спрей 30мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296627	4788338	Фармадекс капли глазные 0.1% 10мл	Фармадекс капли глазные 0.1% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296628	4788339	Фармазолин капли 0,05% 10мл в п/э фл.	Фармазолин капли 0,05% 10мл в п/э фл.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296629	4788340	Фармазолин капли 0,1% 10мл в п/э фл!!!	Фармазолин капли 0,1% 10мл в п/э фл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296630	4788341	Фастум гель 30г	Фастум гель 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296631	4788342	ФДП Медлак лиоф. д/ин. 5г №1	ФДП Медлак лиоф. д/ин. 5г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296632	4788343	Феброфид гель 2,5% 30 г.	Феброфид гель 2,5% 30 г.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296633	4788344	Феварин 100мг №15	Феварин 100мг №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296634	4788345	Феварин 50мг таб №15	Феварин 50мг таб №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296635	4788346	Феварин таб 100мг №30	Феварин таб 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296636	4788347	Фекрон крем 30гр	Фекрон крем 30гр	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296637	4788348	Фексоник таб.180мг№10 Антиаллергическое средство	Фексоник таб.180мг№10 Антиаллергическое средство	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296638	4788349	Феларан Нео р-р д/ин 100мг/2мл №3	Феларан Нео р-р д/ин 100мг/2мл №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296639	4788350	Фемостон 1/10 таб. №28	Фемостон 1/10 таб. №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296640	4788351	Фемостон 2/10 №28 ABBOTT	Фемостон 2/10 №28 ABBOTT	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296641	4788352	Фемостон1/5 таб. №28	Фемостон1/5 таб. №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296642	4788353	Фенасал пор.0.25мг№10 Антигельминт	Фенасал пор.0.25мг№10 Антигельминт	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296643	4788354	Фенибут 250мг таб. №20 Усолье	Фенибут 250мг таб. №20 Усолье	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296644	4788355	Фенибут таб. 250мг №20 МР МР	Фенибут таб. 250мг №20 МР МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296645	4788356	Фенкарол 10мг/мл 2мл. №10	Фенкарол 10мг/мл 2мл. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296646	4788357	Фенкарол таб. 10мг №20	Фенкарол таб. 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296647	4788358	Фенкарол таб. 50 мг. №30	Фенкарол таб. 50 мг. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296648	4788359	Ферамил капс №30	Ферамил капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296649	4788360	Ферамин кидс 50мл	Ферамин кидс 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296650	4788361	Ферамин Таблетки №30	Ферамин Таблетки №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296651	4788362	Ферверк порош. д/приг р-ра 13.1г №10	Ферверк порош. д/приг р-ра 13.1г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296652	4788363	Ферекс р-р д/ин 20мг/5мл №5 Ультра	Ферекс р-р д/ин 20мг/5мл №5 Ультра	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296653	4788364	Феркайл амп. 100мг/2мл №10	Феркайл амп. 100мг/2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296654	4788365	Феркайл МР амп 100мг/2мл №5 МР	Феркайл МР амп 100мг/2мл №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296655	4788366	Феромакс капс.№30	Феромакс капс.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296656	4788367	Ферофер-ф (железа) 5мг/5мл №5	Ферофер-ф (железа) 5мг/5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296657	4788368	Ферретаб Комп капс. №30	Ферретаб Комп капс. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296658	4788369	Ферро Фол капс №30	Ферро Фол капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296659	4788370	Феррум Лек жеват. таб. 100мг №30	Феррум Лек жеват. таб. 100мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296660	4788371	Феррум Лек МР 50мг/5мл сироп 100мл МР	Феррум Лек МР 50мг/5мл сироп 100мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296661	4788372	Феррум Лек р-р д/ин. в/м 100мг/2мл №10!!!	Феррум Лек р-р д/ин. в/м 100мг/2мл №10!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296662	4788373	Феррум Лек сироп 50мг/5мл, 100мл	Феррум Лек сироп 50мг/5мл, 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296663	4788374	Ферсикард кидс 100мл	Ферсикард кидс 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296664	4788375	Ферсинол капли 50мг/л 30мл №1	Ферсинол капли 50мг/л 30мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296665	4788376	Ферсинол р-р д/и 100мг/2мл амп. №5	Ферсинол р-р д/и 100мг/2мл амп. №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296666	4788377	Ферсинол-Z капсулы №30	Ферсинол-Z капсулы №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296667	4788378	Фестал драже №20	Фестал драже №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296668	4788379	Филокацин-500 амикацин сульфат №1	Филокацин-500 амикацин сульфат №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296669	4788380	Фильтрум таб.400мг№50	Фильтрум таб.400мг№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296670	4788381	Финалгон мазь 20г	Финалгон мазь 20г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296671	4788382	Фитин таб. 0,25г №40	Фитин таб. 0,25г №40	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296672	4788383	Фитолизин 100г паста	Фитолизин 100г паста	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296673	4788384	Фламадекс р-р 25мг/мл 2мл №5	Фламадекс р-р 25мг/мл 2мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296674	4788385	Флебодиа 600мг №30 таб.	Флебодиа 600мг №30 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296675	4788386	Флебодиа таб 600мг №60  №60	Флебодиа таб 600мг №60  №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296676	4788387	Фленокс 4000 0,4мл №1	Фленокс 4000 0,4мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296677	4788388	Фленокс 6000 0,6мл №1	Фленокс 6000 0,6мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296678	4788389	Флоксадекс сусп. глазная/ушная 10мл	Флоксадекс сусп. глазная/ушная 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296679	4788390	Флоксимед г/л капли0,3% 5мл 1%	Флоксимед г/л капли0,3% 5мл 1%	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296680	4788391	Флузамед глаз капли 0,3% 5мл №1	Флузамед глаз капли 0,3% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296681	4788392	Флуимуцил таб. шипучие 600мг №10 (Ацц 600)	Флуимуцил таб. шипучие 600мг №10 (Ацц 600)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296682	4788393	Флуканазол капс 150мг №1 МР	Флуканазол капс 150мг №1 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296683	4788394	Флуканазол капс 150мг №3	Флуканазол капс 150мг №3	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296684	4788395	Флуканазол капс 50мг №4 Индия (Флунизол)	Флуканазол капс 50мг №4 Индия (Флунизол)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296685	4788396	Флунол 150мг капс №1 Нобел	Флунол 150мг капс №1 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296686	4788397	Флунол 150мг капс №2 Нобел	Флунол 150мг капс №2 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296687	4788398	Флутел Плюс спрей 137мкг/120доз №1	Флутел Плюс спрей 137мкг/120доз №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296688	4788399	Флуцинар мазь 15г Полша	Флуцинар мазь 15г Полша	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296689	4788400	Флю-Кейр гран №5	Флю-Кейр гран №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296690	4788401	Флю-Кейр гран №5 без сахара	Флю-Кейр гран №5 без сахара	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296691	4788402	Флю-Кейр гран №5 вкусом Лимона	Флю-Кейр гран №5 вкусом Лимона	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296692	4788403	Флю-Кейр гран №5 вкусом мёда	Флю-Кейр гран №5 вкусом мёда	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296693	4788404	Флю-Кейр гран №5 вкусом шоколада	Флю-Кейр гран №5 вкусом шоколада	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296694	4788405	Флюдар р-р для инф 100мл	Флюдар р-р для инф 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296695	4788406	Флюдитек 20мг/мл 125мл Детс	Флюдитек 20мг/мл 125мл Детс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296696	4788407	Флюдитек 50мг/мл 125мл Взрослый	Флюдитек 50мг/мл 125мл Взрослый	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296697	4788408	Флюколд N таб. №4!!!	Флюколд N таб. №4!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296698	4788409	Фолемикс таб 0,1г №50	Фолемикс таб 0,1г №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296699	4788410	Фолликулина 0,05% в масле 1мл №10	Фолликулина 0,05% в масле 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296700	4788411	Фонипар таб. №100	Фонипар таб. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296701	4788412	Форалес капсулы с порошком для ингаляций 12мкг №60	Форалес капсулы с порошком для ингаляций 12мкг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296702	4788413	Форинекс спрей назальн. 140доз №1	Форинекс спрей назальн. 140доз №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296703	4788414	Форсига таб.10мг №28	Форсига таб.10мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296704	4788415	Фортрестин №30 таб	Фортрестин №30 таб	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296705	4788416	Фосфоглив д/приг. р-ра 2,5г №5	Фосфоглив д/приг. р-ра 2,5г №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296706	4788417	Фосфоглив капс. №50	Фосфоглив капс. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296707	4788418	Фосфоглив Форте капс. №50	Фосфоглив Форте капс. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296708	4788419	Фосфолипиале амп.250мг/5мл№5	Фосфолипиале амп.250мг/5мл№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296709	4788420	Фосфомед саше (пакетики) 3г №1	Фосфомед саше (пакетики) 3г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296710	4788421	Фосфорал гранулы 3г./8г.№1 пакетики	Фосфорал гранулы 3г./8г.№1 пакетики	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296711	4788422	Фосфоцинео амп .для р-р д/и 4г №5	Фосфоцинео амп .для р-р д/и 4г №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296712	4788423	Фосфоцинео пор.для р-р д/и 1г №10	Фосфоцинео пор.для р-р д/и 1г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296713	4788424	Фотил гл. капли 5мл	Фотил гл. капли 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296714	4788425	Фрамидекс г/л и ушные 5мл	Фрамидекс г/л и ушные 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296715	4788426	Фринол спрей наз 15мл №1	Фринол спрей наз 15мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296716	4788427	Фромилид 500мг №14	Фромилид 500мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296717	4788428	Фромилид Уно 500мг №7	Фромилид Уно 500мг №7	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296718	4788429	Фронза спрей 27,5мкг 120 доз 10мл	Фронза спрей 27,5мкг 120 доз 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296719	4788430	Фторокорт мазь 0,1% 15г	Фторокорт мазь 0,1% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296720	4788431	Фузол 150мг таб №1	Фузол 150мг таб №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296721	4788432	Фузол 200мг таб №4	Фузол 200мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296722	4788433	Фузол 50мг таб №4	Фузол 50мг таб №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296723	4788434	Фукорцин-ZNF 10мл№1	Фукорцин-ZNF 10мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296724	4788435	Фунистатин пор сусп 48доз	Фунистатин пор сусп 48доз	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296725	4788436	Фурадонин таб. 0,05г №10	Фурадонин таб. 0,05г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296726	4788437	Фуразолидон таб. 50мг №10 Русс	Фуразолидон таб. 50мг №10 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296727	4788438	Фурамаг кап. 50 мг. №30	Фурамаг кап. 50 мг. №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296728	4788439	Фурасол пор. д/приг. р-ра 1000мг №5 (пакетики)	Фурасол пор. д/приг. р-ра 1000мг №5 (пакетики)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296729	4788440	Фурацилин таб.0.02г.№10 Зуннур Фарм	Фурацилин таб.0.02г.№10 Зуннур Фарм	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296730	4788441	Фурациллин таб. 0,02г №10	Фурациллин таб. 0,02г №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296731	4788442	Фуросемид 1% 2мл №10!!!	Фуросемид 1% 2мл №10!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296732	4788443	Фуросемид МР 1% 2мл №10	Фуросемид МР 1% 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296733	4788444	Фуроталгин уш.капли 5мл	Фуроталгин уш.капли 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296734	4788445	Фуцис таб.100мг№4 Флуконазол	Фуцис таб.100мг№4 Флуконазол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296735	4788446	Фуцис таб.150мг№4 Флуконазол	Фуцис таб.150мг№4 Флуконазол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296736	4788447	Фуцис таб.200мг№4 Флуконазол	Фуцис таб.200мг№4 Флуконазол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296737	4788448	Фуцис таб.50мг№4 Флуконазол	Фуцис таб.50мг№4 Флуконазол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296738	4788449	Фуцис-ДТ таб.50мг№4 Флуконазол	Фуцис-ДТ таб.50мг№4 Флуконазол	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296739	4788450	Хартил 10мг таб №28	Хартил 10мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296740	4788451	Хартил 5мг таб №28	Хартил 5мг таб №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296741	4788452	Хелподик 75мг/3мл амп №5	Хелподик 75мг/3мл амп №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296742	4788453	Хемани Дахн Зайтун (Бальзам) 50г	Хемани Дахн Зайтун (Бальзам) 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296743	4788454	Хемани Дахн Ханзал (Бальзам) 50г	Хемани Дахн Ханзал (Бальзам) 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296744	4788455	Хепилор спрей 20мл	Хепилор спрей 20мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296745	4788456	Хиконцил сусп, 250мг/5мл 100мл,	Хиконцил сусп, 250мг/5мл 100мл,	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296746	4788457	Хил крем 50г №1!!!	Хил крем 50г №1!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296747	4788458	Хилора глаз капли 0,15% 10мл №1	Хилора глаз капли 0,15% 10мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296748	4788459	Хлоргексидин-LIK р-р.0.05%.90мл№1	Хлоргексидин-LIK р-р.0.05%.90мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296749	4788460	Хлорная Известь 100гр.№1 (отбел)	Хлорная Известь 100гр.№1 (отбел)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296750	4788461	Хлорофиллипт 15мл спрей Ревулет	Хлорофиллипт 15мл спрей Ревулет	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296751	4788462	Холензим таб. №50	Холензим таб. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296752	4788463	Холисал 10г гель стоматол.	Холисал 10г гель стоматол.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296753	4788464	Хондрогард амп 100мг/мл 2мл №25	Хондрогард амп 100мг/мл 2мл №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296754	4788465	Хондролон амп. №10	Хондролон амп. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296755	4788466	Хофитол раствор 120мл	Хофитол раствор 120мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296756	4788467	Хофитол таб.№180	Хофитол таб.№180	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296757	4788468	Це-ноотроп амп. 10мл №10	Це-ноотроп амп. 10мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296758	4788469	Цевекид капли 10мл (Nutri-Med)	Цевекид капли 10мл (Nutri-Med)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296759	4788470	Цевикап 10 мл. (Витамин С)	Цевикап 10 мл. (Витамин С)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296760	4788471	Целектодерм мазь 25г	Целектодерм мазь 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296761	4788472	Целестадерм мазь 15гр МР	Целестадерм мазь 15гр МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296762	4788473	Целестодерм-В с гарамицином крем 30г	Целестодерм-В с гарамицином крем 30г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296763	4788474	Цераксон амп 4мл №5	Цераксон амп 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296764	4788475	Цераксон р-р 100мг 30мл	Цераксон р-р 100мг 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296765	4788476	Цераксон саше 1000мг №10	Цераксон саше 1000мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296766	4788477	Церебролизин 10мл №5	Церебролизин 10мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296767	4788478	Церебролизин 2 мл №10	Церебролизин 2 мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296768	4788479	Церебролизин 20мл №5	Церебролизин 20мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296769	4788480	Церебролизин 5 мл №5	Церебролизин 5 мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296770	4788481	Церуглан 0,5% 2мл №5 №5 М Р	Церуглан 0,5% 2мл №5 №5 М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296771	4788482	Церукал 10мг таб №50 Teva	Церукал 10мг таб №50 Teva	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296772	4788483	Цеф-ОД 200мг №10	Цеф-ОД 200мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296773	4788484	Цеф-ОД капс. 400мг №5	Цеф-ОД капс. 400мг №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296774	4788485	Цеф-ОД пор для приг. сусп. 100мг/5мл 30мл	Цеф-ОД пор для приг. сусп. 100мг/5мл 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296775	4788486	Цефазолин нат соль  1,0г	Цефазолин нат соль  1,0г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296776	4788487	Цефазолин нат соль 0,1г М Р	Цефазолин нат соль 0,1г М Р	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296777	4788488	Цефвин 250мг таб №10	Цефвин 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296778	4788489	Цефвин 500мг таб №10	Цефвин 500мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296779	4788490	Цефивел ДТ таб. 200мг №10	Цефивел ДТ таб. 200мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296780	4788491	Цефолаб инек 1000 пор №1	Цефолаб инек 1000 пор №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296781	4788492	Цефолаб инек 250 пор №1	Цефолаб инек 250 пор №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296782	4788493	Цефолаб инек 500 пор №1	Цефолаб инек 500 пор №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296783	4788494	Цефоперазон и Сульбактам 1,5 г 500мг №1 Никазон	Цефоперазон и Сульбактам 1,5 г 500мг №1 Никазон	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296784	4788495	Цефотаксим DF пор. д/ин. р-р 1г №1	Цефотаксим DF пор. д/ин. р-р 1г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296785	4788496	Цефотаксим МР нат соль 1,0г	Цефотаксим МР нат соль 1,0г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296786	4788497	Цефотаксим нат соль 1,0г	Цефотаксим нат соль 1,0г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296787	4788498	Цефраз  таб. 100мг №10	Цефраз  таб. 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296788	4788499	Цефраз  таб. 200мг №10	Цефраз  таб. 200мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296789	4788500	Цефтазидим-Акос пор. д/приг р-ра 1г №1	Цефтазидим-Акос пор. д/приг р-ра 1г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296790	4788501	Цефтарид нат соль 0,1г №1	Цефтарид нат соль 0,1г №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296791	4788502	Цефтраксон нат соль 1,0г	Цефтраксон нат соль 1,0г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296792	4788503	Цефтриаксон и Сульбактам 1,5г 500мг №1 (Гарсид-с) Индия	Цефтриаксон и Сульбактам 1,5г 500мг №1 (Гарсид-с) Индия	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296793	4788504	Цефтриаксон и Сульбактам 1,5г 500мг №1 МР	Цефтриаксон и Сульбактам 1,5г 500мг №1 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296794	4788505	Цефтриаксон нат соль 0,1г Биохимик	Цефтриаксон нат соль 0,1г Биохимик	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296795	4788506	Цефтриаксон нат соль 0,1г МР	Цефтриаксон нат соль 0,1г МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296796	4788507	Цефтриаксон нат соль 1г Биосинтез	Цефтриаксон нат соль 1г Биосинтез	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296797	4788508	Цефуроксим лиоф. д/пр. р-ра 0,75мг №1	Цефуроксим лиоф. д/пр. р-ра 0,75мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296798	4788509	Цикловал таб. 500мг №10	Цикловал таб. 500мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296799	4788510	Циклон DX таб. 100мг №4	Циклон DX таб. 100мг №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296800	4788511	Циклон таб.100мг№4	Циклон таб.100мг№4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296801	4788512	Циклон таб.50мг№4	Циклон таб.50мг№4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296802	4788513	Циклоферон  12,5%  2мл №5 МР	Циклоферон  12,5%  2мл №5 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296803	4788514	Циклоферон  12,5%  2мл №5!!!	Циклоферон  12,5%  2мл №5!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296804	4788515	Цикол р-р 100мг/30мл	Цикол р-р 100мг/30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296805	4788516	Цинакс таб 310мг №30	Цинакс таб 310мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296806	4788517	Цинка таб. 20мг №10	Цинка таб. 20мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296807	4788518	Цинкавит А таб №50	Цинкавит А таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296808	4788519	Цинкарбин №20 капсула	Цинкарбин №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296809	4788520	Цинковая мазь 10% 25г	Цинковая мазь 10% 25г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296810	4788521	Цинковая мазь 10%.20г.№1 Ziyo	Цинковая мазь 10%.20г.№1 Ziyo	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296811	4788522	Цинкорич-ДТ таб. 20мг №10 (ZINCORICH-DT)	Цинкорич-ДТ таб. 20мг №10 (ZINCORICH-DT)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296812	4788523	Цинкорот таб 25мг №50	Цинкорот таб 25мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296813	4788524	Циннаризин таб 25мг №50	Циннаризин таб 25мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296814	4788525	Циннаризин таб. 25мг №50	Циннаризин таб. 25мг №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296815	4788526	Циннаризин таб. 25мг №50 Ревулет	Циннаризин таб. 25мг №50 Ревулет	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296816	4788527	Ципраксол р-р для инф 100мл Журабек	Ципраксол р-р для инф 100мл Журабек	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296817	4788528	Ципрокцин  100мл МR	Ципрокцин  100мл МR	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296818	4788529	Ципролет таб.500мг.№10	Ципролет таб.500мг.№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296819	4788530	Ципрофлаксацин 250мг таб №10	Ципрофлаксацин 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296820	4788531	Ципрофлаксацин 500мг таб №10	Ципрофлаксацин 500мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296821	4788532	Ципроцин 250 №10 (Ципрофлоксацин)	Ципроцин 250 №10 (Ципрофлоксацин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296822	4788533	Ципроцин 500 №10 (Ципрофлоксацин)	Ципроцин 500 №10 (Ципрофлоксацин)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296823	4788534	Цисто макс таб №60 (Канеферон)  06,23	Цисто макс таб №60 (Канеферон)  06,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296824	4788535	Цитеал р-р 250мл	Цитеал р-р 250мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296825	4788536	Цитиколин (Цитобрейн) р-р. 250мг/4мл №5	Цитиколин (Цитобрейн) р-р. 250мг/4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296826	4788537	Цитиколин амп.1000мг/4мл.4мл№5	Цитиколин амп.1000мг/4мл.4мл№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296827	4788538	Цитиколин амп.500мг/4мл.4мл№5	Цитиколин амп.500мг/4мл.4мл№5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296828	4788539	Цитрамон П  таб №10 №10	Цитрамон П  таб №10 №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296829	4788540	Цитрамон-Боримед №6	Цитрамон-Боримед №6	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296830	4788541	Цуклогест Пессарии вагин. или рект 200мг №15	Цуклогест Пессарии вагин. или рект 200мг №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296831	4788542	Цунами капс №60	Цунами капс №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296832	4788543	ЧАЙ Коробка ЗВЕРАБОЙ" 40гр МУНИС	ЧАЙ Коробка ЗВЕРАБОЙ" 40гр МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296833	4788544	ЧАЙ Коробка КОРА ДУБА 40гр Мунис	ЧАЙ Коробка КОРА ДУБА 40гр Мунис	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296834	4788545	ЧАЙ Коробка КРАПИВА" (40 гр.) МУНИС	ЧАЙ Коробка КРАПИВА" (40 гр.) МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296835	4788546	ЧАЙ Коробка Кукурузные столбики.1.5г№15	ЧАЙ Коробка Кукурузные столбики.1.5г№15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296836	4788547	ЧАЙ Коробка ПИЖМА" (40гр.) МУНИС	ЧАЙ Коробка ПИЖМА" (40гр.) МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296837	4788548	ЧАЙ Коробка ПОЛ-ПОЛА" (30 гр.) МУНИС	ЧАЙ Коробка ПОЛ-ПОЛА" (30 гр.) МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296838	4788549	ЧАЙ Коробка ПОЧЕЧНЫЙ (40 гр.) МУНИС	ЧАЙ Коробка ПОЧЕЧНЫЙ (40 гр.) МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296839	4788550	ЧАЙ Коробка РАСТОРОПША 40гр. Мунис	ЧАЙ Коробка РАСТОРОПША 40гр. Мунис	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296840	4788551	ЧАЙ Коробка РАСТОРОПША ЗЕЛЁНАЯ №25 (AT TAbib)	ЧАЙ Коробка РАСТОРОПША ЗЕЛЁНАЯ №25 (AT TAbib)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296841	4788552	ЧАЙ Коробка РАСТОРОПША ЧЁРНАЯ №25 (AT TAbib)	ЧАЙ Коробка РАСТОРОПША ЧЁРНАЯ №25 (AT TAbib)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296842	4788553	ЧАЙ Коробка РОМАШКА"  40гр. МУНИС	ЧАЙ Коробка РОМАШКА"  40гр. МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296843	4788554	ЧАЙ Коробка УСПОКОИТЕЛЬНЫЙ " 40гр МУНИС	ЧАЙ Коробка УСПОКОИТЕЛЬНЫЙ " 40гр МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296844	4788555	ЧАЙ Коробка ШИПОВНИК"  (40 гр.) МУНИС	ЧАЙ Коробка ШИПОВНИК"  (40 гр.) МУНИС	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296845	4788556	Черного Тмина "LIK" с вит. Е 0,78г кап. №50	Черного Тмина "LIK" с вит. Е 0,78г кап. №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296846	4788557	Чесночное масло "LIK" капс.0.78г.№50	Чесночное масло "LIK" капс.0.78г.№50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296847	4788558	Чёрный тмин капс №50 Novatio	Чёрный тмин капс №50 Novatio	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296848	4788559	Шампун  детский DALIN 200мл(оригинал)	Шампун  детский DALIN 200мл(оригинал)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296849	4788560	Шампун "Clear Men Women" 400мл Оргинал	Шампун "Clear Men Women" 400мл Оргинал	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296850	4788561	Шампун "Эклаир"  Exxper Men 400мл	Шампун "Эклаир"  Exxper Men 400мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296851	4788562	Шампун SPUMA Perfume 300мл	Шампун SPUMA Perfume 300мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296852	4788563	Шампун Жонсон САРИК 100мл	Шампун Жонсон САРИК 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296853	4788564	Шиповник пор пакетики 2г №20	Шиповник пор пакетики 2г №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296854	4788565	Шотут Сиркаси 250мл (Шишалик)	Шотут Сиркаси 250мл (Шишалик)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296855	4788566	Шпатель медицинский стерильный.№1	Шпатель медицинский стерильный.№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296856	4788567	Шприц 10мл	Шприц 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296857	4788568	Шприц 1мл (Уз-Корея)	Шприц 1мл (Уз-Корея)	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296858	4788569	Шприц 20мл№1	Шприц 20мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296859	4788570	Шприц 2мл!!!	Шприц 2мл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296860	4788571	Шприц 50мл с иглой Хитой	Шприц 50мл с иглой Хитой	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296861	4788572	Шприц 5мл!!!	Шприц 5мл!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296862	4788573	Шприц INSULIN U-100" 1мл Uz Korea Medical	Шприц INSULIN U-100" 1мл Uz Korea Medical	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296863	4788574	Эбуфин сусп для детей 100мл МР	Эбуфин сусп для детей 100мл МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296864	4788575	Эвказолин Аква спрей назальный 10мл	Эвказолин Аква спрей назальный 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296865	4788576	Эгилок 100мг №60	Эгилок 100мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296866	4788577	Эгилок 25мг №60	Эгилок 25мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296867	4788578	Эгилок 50мг №60	Эгилок 50мг №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296868	4788579	Эдарби таб. 40мг №28	Эдарби таб. 40мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296869	4788580	Эдарби таб. 80мг №28	Эдарби таб. 80мг №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296870	4788581	Эдем сироп 0,5мг 60 мл	Эдем сироп 0,5мг 60 мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296871	4788582	Эдем таб. 5мг №30	Эдем таб. 5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296872	4788583	Экватор таб. 10мг/5мг №30	Экватор таб. 10мг/5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296873	4788584	Эквиликс таб №80	Эквиликс таб №80	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296874	4788585	Экзодерил крем 15 г.	Экзодерил крем 15 г.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296875	4788586	Экзодерил ЛАК лак д/ногтей 5% 2,5мл	Экзодерил ЛАК лак д/ногтей 5% 2,5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296876	4788587	Экзодерил р-р 1% 10мл	Экзодерил р-р 1% 10мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296877	4788588	ЭкоДрай Кзил Extra Effect 35мл№1	ЭкоДрай Кзил Extra Effect 35мл№1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296878	4788589	ЭкоДрай Кук спрей 35мл№1 Universal	ЭкоДрай Кук спрей 35мл№1 Universal	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296879	4788590	Экофурил 100мг капс №30	Экофурил 100мг капс №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296880	4788591	Эксперт таб волос №60	Эксперт таб волос №60	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296881	4788592	Экстум пор 0,375г р-р для инек №1	Экстум пор 0,375г р-р для инек №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296882	4788593	Элевит Планирование и первый триместр таб. № 30	Элевит Планирование и первый триместр таб. № 30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296883	4788594	Элевит Пронаталь таб. №100	Элевит Пронаталь таб. №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296884	4788595	Элевит Пронаталь таб. №100 Малика	Элевит Пронаталь таб. №100 Малика	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296885	4788596	Элевит Пронаталь №30	Элевит Пронаталь №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296886	4788597	Электро Кидс р-р д/инф. 100мл	Электро Кидс р-р д/инф. 100мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296887	4788598	Элоком 01% крем 15г	Элоком 01% крем 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296888	4788599	Элоком мазь 0,1% 15г	Элоком мазь 0,1% 15г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296889	4788600	Элтризин 5мг таб №10 Нобел	Элтризин 5мг таб №10 Нобел	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296890	4788601	Элфунат амп. 50мг/мл 2мл №10	Элфунат амп. 50мг/мл 2мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296891	4788602	Элфунат амп. 50мг/мл 5мл №5	Элфунат амп. 50мг/мл 5мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296892	4788603	Элькар 300мг капли 25мл	Элькар 300мг капли 25мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296893	4788604	Элькар 300мг капли 50мл	Элькар 300мг капли 50мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296894	4788605	Эмерон гель. 2% 50г	Эмерон гель. 2% 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296895	4788606	Эмерон таб. 100мг №20	Эмерон таб. 100мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296896	4788607	Эмистоп р-р д/ин 2мг/мл 4мл №5	Эмистоп р-р д/ин 2мг/мл 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296897	4788608	Эмкор 10 таб. 10мг №30	Эмкор 10 таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296898	4788609	Эмокси-Оптик кап. глазн. 1% 5мл	Эмокси-Оптик кап. глазн. 1% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296899	4788610	Эмоксидант 50мг/2мл амп, №10 07,23	Эмоксидант 50мг/2мл амп, №10 07,23	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296900	4788611	Эмопрокс гл. капли 1% 5мл №1	Эмопрокс гл. капли 1% 5мл №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296901	4788612	Эмотроп глазной капли 1% 5мл	Эмотроп глазной капли 1% 5мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296902	4788613	Эмотроп р-р инек 10мг 1мл №10	Эмотроп р-р инек 10мг 1мл №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296903	4788614	Эналаприл таб. 10мг №20 Русс	Эналаприл таб. 10мг №20 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296904	4788615	Эналаприл таб.10мг№20	Эналаприл таб.10мг№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296905	4788616	Эналозид 12,5 табл. 10мг/12,5 №20	Эналозид 12,5 табл. 10мг/12,5 №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296906	4788617	Эналозид 25 таб. 10мг/25мг №20	Эналозид 25 таб. 10мг/25мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296907	4788618	Энам таб. 10мг №100 №100	Энам таб. 10мг №100 №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296908	4788619	Энам таб. 10мг №30	Энам таб. 10мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296909	4788620	Энам таб. 2,5мг №30	Энам таб. 2,5мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296910	4788621	Энап 10мг №20	Энап 10мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296911	4788622	Энап 2,5мг №20	Энап 2,5мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296912	4788623	Энап 20мг №20	Энап 20мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296913	4788624	Энап 5мг №20	Энап 5мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296914	4788625	Энап HL 10мг/12,5мг №20	Энап HL 10мг/12,5мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296915	4788626	Энап-Н 10мг/25мг №20	Энап-Н 10мг/25мг №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296916	4788627	Энгивир (Энтакавир) 0,5мг таб №30	Энгивир (Энтакавир) 0,5мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296917	4788628	Энзофен вагинал. капсулы 1000мг №2	Энзофен вагинал. капсулы 1000мг №2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296918	4788629	Эноп-Н 10мг/25мг таб №20 МР	Эноп-Н 10мг/25мг таб №20 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296919	4788630	Энтерожермина капс 2м №12	Энтерожермина капс 2м №12	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296920	4788631	Энтерожермина сусп. 2м/5мл  №10 МР	Энтерожермина сусп. 2м/5мл  №10 МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296921	4788632	Энтерожермина сусп. 2м/5мл  №10!!!	Энтерожермина сусп. 2м/5мл  №10!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296922	4788633	Энтерол капс.250мг№10	Энтерол капс.250мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296923	4788634	Энтерол пор. 250мг №10	Энтерол пор. 250мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296924	4788635	Энтеросгель 22,5г№10 саше	Энтеросгель 22,5г№10 саше	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296925	4788636	Энтобан капс. №20	Энтобан капс. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296926	4788637	Энцефаколин Нео амп. 1000мг/4мл 4мл №5	Энцефаколин Нео амп. 1000мг/4мл 4мл №5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296927	4788638	Эпцин р-р.инф42мг/мл.100мл№1 L-аргинин	Эпцин р-р.инф42мг/мл.100мл№1 L-аргинин	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296928	4788639	Эрбинол крем 1% 20мг №1	Эрбинол крем 1% 20мг №1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296929	4788640	Эрбинол таб 250мг №14	Эрбинол таб 250мг №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296930	4788641	Эргоферон таб. №20 Русс	Эргоферон таб. №20 Русс	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296931	4788642	Эрексил таб 100мг №4	Эрексил таб 100мг №4	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296932	4788643	Эрикон капс №10	Эрикон капс №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296933	4788644	Эринит таб №50	Эринит таб №50	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296934	4788645	Эритрамицин 250мг таб №10	Эритрамицин 250мг таб №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296935	4788646	Эритрамицин 250мг таб №20!!!	Эритрамицин 250мг таб №20!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296936	4788647	Эритрамицин мазь 1% 10г	Эритрамицин мазь 1% 10г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296937	4788648	Эритрамицин таб 100мг №10	Эритрамицин таб 100мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296938	4788649	Эритромакс беби сироп	Эритромакс беби сироп	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296939	4788650	Эритромакс №20 капсула	Эритромакс №20 капсула	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296940	4788651	Эриус таб. 5мг №10	Эриус таб. 5мг №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296941	4788652	Эсзол таб.100мг№10	Эсзол таб.100мг№10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296942	4788653	Эсинсал  Н амп 5мл №5 (Эссенциале) МР	Эсинсал  Н амп 5мл №5 (Эссенциале) МР	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296943	4788654	Эсколан 40 мг таб №30	Эсколан 40 мг таб №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296944	4788655	Эслотин сироп 2.5мг/5мл  60мл	Эслотин сироп 2.5мг/5мл  60мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296945	4788656	Эспиро 25мг №10 таб.	Эспиро 25мг №10 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296946	4788657	Эспиро 50мг №10 таб.	Эспиро 50мг №10 таб.	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296947	4788658	Эспумизан 40мг капс №25	Эспумизан 40мг капс №25	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296948	4788659	Эспумизан капли (Эспумекон) 30мл	Эспумизан капли (Эспумекон) 30мл	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296949	4788660	Эссенциал капс SP №30	Эссенциал капс SP №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296950	4788661	Эссенциале Н 250мг/5мл 5мл №5!!!	Эссенциале Н 250мг/5мл 5мл №5!!!	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296951	4788662	Эссенциале-Н.Форте капс.№30	Эссенциале-Н.Форте капс.№30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296952	4788663	Эссенциале-Н.Форте капс.№90	Эссенциале-Н.Форте капс.№90	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296953	4788664	Эстринорм супп. ваг. 0,5мг №15	Эстринорм супп. ваг. 0,5мг №15	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296954	4788665	Этодилакс таб №14	Этодилакс таб №14	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296955	4788666	Этосепт крем 50г	Этосепт крем 50г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296956	4788667	Эутирокс таб. 75мкг №100	Эутирокс таб. 75мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296957	4788668	Эутирокс таб.100мкг №100	Эутирокс таб.100мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296958	4788669	Эутирокс таб.125мкг №100	Эутирокс таб.125мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296959	4788670	Эутирокс таб.150мкг №100	Эутирокс таб.150мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296960	4788671	Эутирокс таб.50мкг №100	Эутирокс таб.50мкг №100	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296961	4788672	Эуфиллин таб. 150мг №30	Эуфиллин таб. 150мг №30	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296962	4788673	Эфизол таб. №20	Эфизол таб. №20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296963	4788674	Эффект капс.№20	Эффект капс.№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296964	4788675	Эффект сип пор с лимоном №10	Эффект сип пор с лимоном №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296965	4788676	Юниколд  форте  таб. №10	Юниколд  форте  таб. №10	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296966	4788677	Юниэнзим С МПС таб.№20	Юниэнзим С МПС таб.№20	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296967	4788678	Ян-Бур капс №30 (Топинабур курук экс-т 0,250г	Ян-Бур капс №30 (Топинабур курук экс-т 0,250г	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1296968	4788679	Ярина Плюс таб. №28	Ярина Плюс таб. №28	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1297952	\N	Амлесса 4/5 №30 КРКА	Амлесса 4/5 №30 КРКА	\N	\N	\N	box	60	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297953	\N	Амлодипин таб №30 русс	Амлодипин таб №30 русс	\N	\N	\N	box	108	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297954	\N	Амлодипин 5мг таб №30	Амлодипин 5мг таб №30	\N	\N	\N	box	108	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297955	\N	Бонжигар кап №60	Бонжигар кап №60	\N	\N	\N	box	35	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297957	\N	Анаферон Детский таб №20	Анаферон Детский таб №20	\N	\N	\N	box	240	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297958	\N	Парацетамол с/в 250мг №10 дента	Парацетамол с/в 250мг №10 дента	\N	\N	\N	box	40	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297962	\N	Эссенциал амп, №5	Эссенциал амп, №5	\N	\N	\N	box	72	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297964	\N	Пиковит сироп 150мл	Пиковит сироп 150мл	\N	\N	\N	box	24	\N	\N	\N	\N	\N	\N	\N	\N	\N
1299972	\N	Болнол Таб №100	Болнол Таб №100	\N	\N	\N	box	100	\N	\N	\N	\N	\N	\N	\N	\N	\N
1300148	\N	Ампициллин пор. д/ин. 500мг	Ампициллин пор. д/ин. 500мг	\N	\N	\N	box	400	\N	\N	\N	\N	\N	\N	\N	\N	\N
1350992	\N	Бинт стерилний 7*14	Бинт стерилний 7*14	\N	\N	\N	box	300	\N	396	\N	\N	\N	\N	\N	\N	\N
1367468	\N	Кетонал капсулы 50мг N25	Кетонал капсулы 50мг N25	\N	\N	\N	box	1000	\N	\N	\N	\N	\N	\N	\N	\N	\N
1367476	\N	Гербион сироп плюща 150мл	Гербион сироп плюща 150мл	\N	\N	\N	box	24	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376014	\N	L-лизина эсцинат амп 1мг/мл 5мл №10	L-лизина эсцинат амп 1мг/мл 5мл №10	\N	\N	\N	box	30	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376128	\N	Авирол-С капс.№12 Грипп+ОРЗ	Авирол-С капс.№12 Грипп+ОРЗ	\N	\N	\N	box	30	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376129	\N	Пиковит паст. №30	Пиковит паст. №30	\N	\N	\N	box	90	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376150	5345f	Матор м5	Матор м5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1376151	rew432	Кузов BMW M5	Кузов BMW M5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1376152	rwerew23	Салон BMW M5	Салон BMW M5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1376154	rewr	Шины BMW M5	Шины BMW M5	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1376159	rewdew	Готовый кузов с мотором	Готовый кузов с мотором	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1376164	gdft34	Краска	Краска	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1376305	\N	Hydrolife Eco 0.5	Hydrolife Eco 0.5	\N	\N	\N	block	10	\N	\N	\N	\N	\N	04640091920430	02402001001026009	\N	\N
1376306	\N	Сигареты с фильтром MILANO LO	Сигареты с фильтром MILANO LO	\N	\N	\N	block	10	\N	\N	\N	\N	\N	04640091920458	\N	\N	3
1376316	\N	Пиковит форте №30	Пиковит форте №30	\N	\N	\N	box	50	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376343	\N	Канефрон Н драже №60	Канефрон Н драже №60	\N	\N	\N	box	100	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376403	\N	Мастодинон таб. №60	Мастодинон таб. №60	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376513	\N	Пиковит форте	Пиковит форте	\N	\N	\N	box	96	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376964	\N	Урсосан 250 мг капс №50	Урсосан 250 мг капс №50	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1376970	\N	ТАЙЛОЛ ХОТ	ТАЙЛОЛ ХОТ	\N	\N	\N	box	30	\N	\N	\N	\N	\N	\N	\N	\N	\N
1377350	2899	Алчеба таб 10мг №30	Алчеба таб 10мг №30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1377365	47859889	Глутион амп.+раств.600мг№10	Глутион амп.+раств.600мг№10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1377442	8018	Картан д/пр. внутрь 1г/10мл №10	Картан д/пр. внутрь 1г/10мл №10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1377462	122	Coca Cola 0.5	Coca Cola 0.5	2	2	\N	block	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1377464	77777777	Fanta 0.5	Fanta 0.5	\N	\N	\N	block	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1377797	\N	Никсар таб. 20мг №10	Никсар таб. 20мг №10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1382265	\N	UGUR	UGUR	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1396520	\N	Eclair жидкий мыло 500мл	Eclair жидкий мыло 500мл	\N	\N	\N	box	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
1402389	2121	Eclair Infra shampun 900ml	Eclair Infra shampun 900ml	\N	\N	\N	box	8	\N	\N	1063	\N	\N	\N	\N	\N	\N
1403884	\N	New Sprite 5L	New Sprite 5L	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1405627	\N	Glock	Glock	\N	\N	\N	\N	\N	\N	396	\N	\N	\N	\N	\N	\N	\N
1406570	\N	ANOR 5L	ANOR 5L	\N	\N	\N	box	15	\N	\N	\N	\N	\N	\N	\N	\N	\N
1437149	\N	CISLINK	CISLINK	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1442349	\N	Сигареты с фильтром MILANO LONDON	Сигареты с фильтром MILANO LONDON	\N	\N	\N	block	10	\N	109	\N	\N	\N	\N	\N	\N	\N
1443599	\N	Hydrolife Eco 1.0	Hydrolife Eco 1.0	\N	\N	\N	block	10	\N	109	\N	\N	\N	04640091920431	02402001001026004	\N	\N
1443907	\N	Cигареты с фильтром MILANO VENTO (QS)	Cигареты с фильтром MILANO VENTO (QS)	\N	\N	\N	block	10	\N	\N	\N	\N	4670125222180	04670125222180	\N	\N	3
1501824	113002	Минеральная газированная вода Набеглави 0.5 л ПЭТ	Минеральная газированная вода Набеглави 0.5 л ПЭТ	\N	\N	\N	block	12	\N	109	\N	\N	4865602000058	04865602000058	02201002001007002	\N	13
1508857	\N	Минеральная газированная вода Набеглави 0.5 л стекло	Минеральная газированная вода Набеглави 0.5 л стекло	\N	\N	\N	block	12	\N	\N	\N	\N	4865602000010	04865602000010	02201002001007003	\N	13
1508859	\N	Минеральная газированная вода Набеглави 1 л ПЭТ	Минеральная газированная вода Набеглави 1 л ПЭТ	\N	\N	\N	\N	\N	\N	\N	\N	\N	4865602000027	04865602000027	02201002001007004	\N	13
1509444	\N	Сигареты с фильтром MILANO TECH LOCK BLACK	Сигареты с фильтром MILANO TECH LOCK BLACK	\N	\N	\N	block	10	\N	109	\N	\N	0815082006075	00815082006075	\N	\N	3
1515576	\N	qum	qum	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1515577	\N	Suv	Suv	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1515578	\N	SEMENT	SEMENT	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1526907	\N	TANS	TANS	\N	\N	\N	\N	\N	\N	kilo3	\N	\N	\N	\N	\N	\N	\N
1528296	\N	x7	x7 competetion	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1528297	\N	x5	x5 competetion	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1528298	\N	m5	m5 competetion	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1528299	\N	m8	m8 competetion	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1528300	\N	m4	m4 competetion	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1567680	\N	Coca Cola 1.5L Test	Coca Cola 1.5L Test	\N	\N	\N	block	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
1575658	\N	TEST AKSIYA UCHUN	TEST AKSIYA UCHUN	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1704715	00-00001116	Берлинер Red Heart с малиновой начинкой 88 гр_12 шт, шт	Берлинер Red Heart с малиновой начинкой 88 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	0000001116	\N	\N	\N	\N
1704716	1000093414	Донат Blueberry Donut 70 гр_12 шт, шт	Донат Blueberry Donut 70 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966089022	\N	\N	\N	\N
1704717	00-00001115	Донат Bubble Gum с начинкой 68 гр_12 шт, шт	Донат Bubble Gum с начинкой 68 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	46000	\N	\N	\N	\N
1704718	5904966081019	Донат Caramel Donut 67 гр_12 шт, шт	Донат Caramel Donut 67 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966081019	\N	\N	\N	\N
1704719	5904966081538	Донат Caramelova с карамельной начинкой 67 гр_12 шт, шт	Донат Caramelova с карамельной начинкой 67 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966081538	\N	\N	\N	\N
1704720	5904966088988	Донат Choc cream с начинкой из крема с шоколадом 67 гр_12 шт, шт	Донат Choc cream с начинкой из крема с шоколадом 67 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966088988	\N	\N	\N	\N
1704721	1000093415	Донат Choco Deco Donut 67 гр_12 шт, шт	Донат Choco Deco Donut 67 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966081606	\N	\N	\N	\N
1704722	117010102-00255	Донат Cinnamon с начинкой яблоко-корица 61 гр_12 шт, шт	Донат Cinnamon с начинкой яблоко-корица 61 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5905745451450	\N	\N	\N	\N
1704723	1000093416	Донат Cola Donut 70 гр_12 шт, шт	Донат Cola Donut 70 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966081682	\N	\N	\N	\N
1704724	5904966081002	Донат Cookies с кремовой начинкой 75 гр_12 шт, шт	Донат Cookies с кремовой начинкой 75 гр_12 шт, шт	\N	\N	\N	\N	\N	\N	109	\N	\N	5904966081002	\N	\N	\N	\N
1704725	4607963220078	Арахисовый крамбл со сливочным кремом и брусникой, 0,14кг_ИНТЕР, кг	Арахисовый крамбл со сливочным кремом и брусникой, 0,14кг_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	4607963220078	\N	\N	\N	\N
1704726	4607963220061	Пирог "Шоколадный Брауни " с мягкой начинкой, 0,52кг_ИНТЕР, кг	Пирог "Шоколадный Брауни " с мягкой начинкой, 0,52кг_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	4607963220061	\N	\N	\N	\N
1704727	4607963220047	Пирог "Шоколадный Брауни" с мягкой начинкой 0,1кг_ИНТЕР, кг	Пирог "Шоколадный Брауни" с мягкой начинкой 0,1кг_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	4607963220047	\N	\N	\N	\N
1704728	00-00001244	Пирог "Шоколадный Брауни" с мягкой начинкой, 1,2кг, 12 порций_ИНТЕР, кг	Пирог "Шоколадный Брауни" с мягкой начинкой, 1,2кг, 12 порций_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	0000001244	\N	\N	\N	\N
1704729	4607963220122	Пирог с лимонной начинкой "Лимонный пай ", 0,65кг_ИНТЕР, кг	Пирог с лимонной начинкой "Лимонный пай ", 0,65кг_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	4607963220122	\N	\N	\N	\N
1704730	00-00001245	Пирог с лимонной начинкой "Лимонный пай ", 1,32кг, 12 порций_ИНТЕР, кг	Пирог с лимонной начинкой "Лимонный пай ", 1,32кг, 12 порций_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	0000001245	\N	\N	\N	\N
1704731	00-00001242	Пирог со сливочной начинкой "Бразильский кокос и Шоколад", 1,2кг, 12 порций_ИНТЕР, кг	Пирог со сливочной начинкой "Бразильский кокос и Шоколад", 1,2кг, 12 порций_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	0000001242	\N	\N	\N	\N
1704732	4603721535088	Пирог сырный  "Чизкейк Вишня и Шоколад", 0,11кг_ИНТЕР, кг	Пирог сырный  "Чизкейк Вишня и Шоколад", 0,11кг_ИНТЕР, кг	\N	\N	\N	\N	\N	\N	109	\N	\N	4603721535088	\N	\N	\N	\N
1705246	\N	HERMES	HERMES	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1706208	\N	TEST	TEST	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1710370	\N	Olma	Olma	\N	\N	\N	box	100	\N	\N	\N	\N	\N	54313256613325	12345	\N	\N
1713393	\N	product-1	product-1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	12345	\N	\N
1723354	\N	Novey 102	Novey 102	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1724900	\N	test 11111	test 11111	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1728743	\N	test meva	test meva	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1729001	\N	HOLODILNIK22222222222	HOLODILNIK22222222222	\N	\N	\N	\N	\N	\N	109	\N	\N	7327837732632	\N	\N	\N	\N
1731251	\N	Spalniy	Yotoq mebeli	120	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1731258	\N	krovat	Yotoq mebellari	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1737108	\N	Bug'doy (Oliy Nav)	Bug'doy (Oliy Nav)	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1752622	\N	TSSS	TSSS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1767441	\N	olma_test	olma_test	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	12345	\N	\N
1778903	\N	Sarbast Original Can 0,45L	Sarbast Original Can 0,45L	\N	\N	\N	box	24	\N	109	\N	\N	4780015831856	04780015831856	\N	\N	15
1781371	\N	reklama	reklama	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
1781500	\N	картошка	картошка	\N	\N	\N	\N	350	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
1781508	\N	помидор	помидор	\N	\N	\N	box	25	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
1781511	\N	свекла	свекла	\N	\N	\N	\N	12	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
1781519	\N	баклажан	баклажан	\N	\N	\N	\N	50	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
1781520	\N	огурец	огурец	\N	\N	\N	box	45	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
1781524	\N	чеснок	чеснок	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
1781548	4545	ТМЦ-1	ТМЦ-1	15	10	\N	block	10	\N	109	1	\N	\N	\N	\N	\N	\N
1781554	\N	ТМЦ-2	ТМЦ-2	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	12345678912121223545455	\N	\N
1781555	\N	ТМЦ-3	ТМЦ-3	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	12345678912121223545455	\N	\N
1869564	\N	return_uchun	return_uchun	1.2	1.2	0.5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1928392	y45ytr	Apple Juice ASIL ERMA 0,25L	Apple Juice ASIL ERMA 0,25L	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	06977587630910	08543999001077028	\N	13
1929053	sdefrg	Hydrolife Eco 0.5л	Hydrolife Eco 0.5л	\N	\N	\N	block	12	\N	\N	9999	\N	\N	04780012960153	02201001001011003	\N	13
1929055	ertdfg	Hydrolife Eco 1.0л	Hydrolife Eco 1.0л	\N	\N	\N	block	8	\N	\N	999	\N	\N	04780012960177	02201001001011005	\N	13
1936213	\N	Товар 1	Товар 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1936214	\N	Товар 2	Товар 2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970147	\N	ТБ 2сл 8х10 (персик)	ТБ 2сл 8х10 (персик)	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970148	\N	ВС Sunlight (120х12) Универсал EXTRA PACK	ВС Sunlight (120х12) Универсал EXTRA PACK	\N	\N	\N	box	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970252	\N	ВС Rio (100х10) Baby Panda XL	ВС Rio (100х10) Baby Panda XL	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970253	\N	ТБ 2сл 8х10 (роза)	ТБ 2сл 8х10 (роза)	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970254	\N	ТБ 2сл 8х10 (ромашка)	ТБ 2сл 8х10 (ромашка)	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970255	\N	ТБ 2сл 8х10 (яблоко)	ТБ 2сл 8х10 (яблоко)	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970256	\N	ТБ 2сл 8х10 (лайм)	ТБ 2сл 8х10 (лайм)	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970257	\N	ВС Sunlight (120х12) Зайчик EXTRA PACK	ВС Sunlight (120х12) Зайчик EXTRA PACK	\N	\N	\N	box	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970258	\N	ВС Sunlight (120х12) Божья коровка EXTRA PACK	ВС Sunlight (120х12) Божья коровка EXTRA PACK	\N	\N	\N	box	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970259	\N	ВС Sunlight (120х12) бирюзовый EXTRA PACK	ВС Sunlight (120х12) бирюзовый EXTRA PACK	\N	\N	\N	box	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970260	\N	ВС Sunlight (120х12) Butterfly EXTRA PACK	ВС Sunlight (120х12) Butterfly EXTRA PACK	\N	\N	\N	box	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970261	\N	ВС Rio (100х10) Baby Fox XL	ВС Rio (100х10) Baby Fox XL	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
1970262	\N	ВС Nat. Fresh (72х20) mamma ( красный )  EXTRA PACK	ВС Nat. Fresh (72х20) mamma ( красный )  EXTRA PACK	\N	\N	\N	box	20	\N	\N	\N	\N	\N	\N	\N	\N	\N
1975072	32rwervew	Олча нектар 0,25 л ERMAK	Олча нектар 0,25 л	\N	\N	\N	\N	\N	\N	\N	\N	\N	4780099470514	04780099470514	02009001006122001	\N	13
1975073	rewrrewr	Урик нектар 640 мл ASIL	Урик нектар 640 мл ASIL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	04780099470842	02202002005131011	\N	13
1975471	234532	Минеральная вода «Боржоми» газированная в 0,5 л стекл. borjomi	Минеральная вода «Боржоми» газированная в 0,5 л стекл. borjomi	\N	\N	\N	\N	\N	\N	\N	\N	\N	4860019001346	04860019001308	02201002001005007	\N	13
2042208	\N	Водка Отау	Отау	880	750	750	block	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2046238	121	cola2	cola2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2055363	00-00000004	Тест номенклатура 4	Тест номенклатура 4	\N	\N	\N	\N	\N	\N	250	\N	\N	\N	\N	\N	\N	\N
2055364	00-00000005	Тест номенклатура 5	Тест номенклатура 5	\N	\N	\N	\N	\N	\N	250	\N	\N	\N	\N	\N	\N	\N
2055411	00-00000003	Тест номенклатура 2	Тест номенклатура 2	\N	\N	\N	\N	\N	\N	250	\N	\N	\N	\N	\N	\N	\N
2059126	\N	смартап товар1	смартап товар1	\N	\N	\N	\N	10	\N	109	\N	\N	\N	\N	\N	\N	\N
2062847	2344er	Лоток ирригационный ЛИ-5 5000x460x480	Лоток ирригационный ЛИ-5 5000x460x480	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	06810006023000000	\N	\N
2068805	00-00000006	Тест номенклатура 6	Тест номенклатура 6	\N	\N	\N	\N	\N	\N	250	\N	\N	\N	\N	\N	\N	\N
2068807	00-00000008	_Товар №2	_Товар №2	1	1	1	\N	\N	\N	10001001	\N	\N	\N	\N	\N	\N	\N
2129392	\N	Paxta yog'i "Darital" 1лт в Блок 12 шт	Paxta yog'i "Darital" 1лт в Блок 12 шт	0.9	0.91	1	block	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
2129394	\N	Paxta yog'i "Darital" 1лт в Блок 15 шт	Paxta yog'i "Darital" 1лт в Блок 15 шт	0.9	0.91	1	block	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
2129451	\N	Paxta yog'i "Darital" 1лт в Блок 8 шт	Paxta yog'i "Darital" 1лт в Блок 8 шт	0.9	0.91	1	block	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
2129452	\N	Paxta yog'i "Darital" 2лт в Блок 6 шт	Paxta yog'i "Darital" 2лт в Блок 6 шт	1.8	1.82	2	block	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
2129453	\N	Paxta yog'i "Darital" 5лт в Блок 2 шт	Paxta yog'i "Darital" 5лт в Блок 2 шт	4.5	4.55	5	block	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
2129454	\N	Paxta yog'i "Darital" 5лт в Блок 3 шт	Paxta yog'i "Darital" 5лт в Блок 3 шт	4.5	4.55	5	block	3	\N	\N	\N	\N	\N	\N	\N	\N	\N
2130762	45345	I phone 16	pro max I phone 16 tinanium	1	10	\N	box	12	\N	kilo6	11223	\N	197845147365858555470	\N	02201002001005007	\N	\N
2199912	2199912	Televizor Smart Artel MF3300 43", 50" Google tv Full HD	Televizor Smart Artel MF3300 43", 50" Google tv Full HD	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2211294	0252	Щедрое лето	ЩЛ 200гр	10	10	\N	box	50	\N	\N	1	\N	\N	\N	\N	\N	\N
2233363	534543	televizor	televizor	1.5	1	\N	box	1	\N	\N	1	\N	\N	\N	\N	\N	\N
2233369	fdsfwe	kiryuvish mashinasi	avtomat kiryuvish mashinasi	10	10	10	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2233370	trey	chang yutkich	chang yutkich	3	2	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2248751	453534	kompyuter	komp	2	1.5	\N	box	1	\N	\N	1	\N	\N	\N	\N	\N	\N
2271570	\N	Equipment-1	Equipment-1	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
2271571	\N	Equipment-2	Equipment-2	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
2293534	\N	test_end_data	test_end_data	50	60	\N	\N	\N	\N	\N	\N	\N	\N	\N	02202002005010003	\N	\N
2355311	\N	Продукты питания	Продукты питания	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355312	\N	Печенье	Печенье	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355313	\N	Снеки	Снеки	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355314	\N	Семечки	Семечки	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355315	\N	Маршмеллоу	Маршмеллоу	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355316	\N	Бытовая химия	Бытовая химия	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355317	\N	Мыло	Мыло	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355318	\N	Шампунь	Шампунь	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355319	\N	Бальзам	Бальзам	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2355320	\N	Подгузники	Подгузники	\N	\N	\N	\N	\N	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398563	\N	40512 Biskvit pink 2 кг	40512 Biskvit pink 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398564	\N	Gunes 20352 choco 2.5 кг	Gunes 20352 choco 2.5 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398565	\N	Gunes 20362 белый	Gunes 20362 белый	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398566	\N	печенье Coins cherry (Вишневый) 2кг	печенье Coins cherry (Вишневый) 2кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398567	\N	печенье Coins Dark (Темный) 2кг	печенье Coins Dark (Темный) 2кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398568	\N	печенье Coins Choco (Шоколадный) 2 кг	печенье Coins Choco (Шоколадный) 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398569	\N	печенье Coins Pink (Розовый Клубника) 2 кг	печенье Coins Pink (Розовый Клубника) 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398570	\N	печенье Coins White (Молочный) 2 кг	печенье Coins White (Молочный) 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398571	\N	40152 Шамс 2 кг	40152 Шамс 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398572	\N	40162 Шамс молочный 2 кг	40162 Шамс молочный 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398573	\N	40172 Шамс глазированные 2 кг	40172 Шамс глазированные 2 кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398574	\N	40302 Сэндвич шоколад	40302 Сэндвич шоколад	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398575	\N	40312 Сэндвич банан	40312 Сэндвич банан	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398576	\N	40322 Сэндвич клубника	40322 Сэндвич клубника	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398577	\N	40332 Сэндвич Кокос	40332 Сэндвич Кокос	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398578	\N	40372 Сэндвич	40372 Сэндвич	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398579	\N	40502 Biskvit choco 2кг	40502 Biskvit choco 2кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398580	\N	40522 Biskvit White 2кг	40522 Biskvit White 2кг	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398581	\N	Merida 40622 с сахар	Merida 40622 с сахар	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398582	\N	Merida 40632 с кунжут	Merida 40632 с кунжут	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398583	\N	Печенье Ромашка с декором 2кг 40712	Печенье Ромашка с декором 2кг 40712	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2398584	\N	Печенье Ромашка шок 2кг 40702	Печенье Ромашка шок 2кг 40702	\N	\N	\N	\N	6	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2403425	\N	test product	test product	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2452964	\N	Coca Cola 1.5 L	Cola 1.5l	\N	\N	\N	block	1.5	\N	109	\N	\N	\N	\N	\N	\N	\N
2453600	\N	Andalus	Andalus	\N	\N	\N	\N	0.9	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2453728	\N	Sherin Servelat 0.7 gr	Sherin Servelat	\N	\N	\N	\N	0.7	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2453747	\N	Doktorskiy Andalus 0.9 gram	Doktor Andalus	\N	\N	\N	\N	0.9	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2521514	\N	test12321312	test12321312	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2527553	\N	Квартиры	Квартиры	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2527562	\N	Квартира № 1	А блок 2 - этаж	\N	\N	\N	\N	57	\N	\N	1	\N	\N	\N	\N	\N	\N
2568438	00-00000096	Infinix hot pro	Infinix hot pro	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
2593174	00-00000097	Dell 14.48	Dell 14.48	\N	\N	\N	\N	\N	\N	796	\N	\N	\N	\N	\N	\N	\N
2593337	00-00000098	klaviatura RGB	klaviatura RGB	\N	\N	\N	\N	\N	\N	796	\N	\N	\N	\N	\N	\N	\N
2593390	00-00000099	mouse RGB	mouse RGB	\N	\N	\N	\N	\N	\N	796	\N	\N	\N	\N	\N	\N	\N
2789351	\N	Томатный Соус Эвос 5кг (полуфабрикат)	Томатный Соус Эвос 5кг (полуфабрикат)	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789424	\N	Сахар1	Сахар1	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789425	\N	Соль	Соль	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789428	\N	Пюре яблочное 25%	Пюре яблочное 25%	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789429	\N	Томат Китай	Томат Китай	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789431	\N	Черный перец	Черный перец	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789461	\N	Бензоат натрия	Бензоат натрия	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789464	\N	Сорбат калия	Сорбат калия	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789544	\N	Сув1	Сув1	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2789545	\N	Термо пакет 5 кг	Термо пакет 5 кг	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2789577	\N	Термо этикетки	Термо этикетки	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2789618	\N	Потеря(полуфабрикат)	Потеря(полуфабрикат)	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
2890481	\N	Non tayyor mahsulot	Non tayyor mahsulot	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2894391	\N	Положение	Положение	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2894392	\N	Baby Mama	Baby Mama	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2894396	\N	Вечеринка	Вечеринка	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906498	\N	1112 700001204 Краска фасадная белая Универсал 13кг	1112 700001204 Краска фасадная белая Универсал 13кг	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906499	\N	03 Flovell ANATOLIA 72/24	03 Flovell ANATOLIA 72/24	\N	\N	\N	box	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906500	\N	12345455	1 Flovell Baby 15/144	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906503	\N	10 Flovell ANATOLIA 120/12	10 Flovell ANATOLIA 120/12	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906506	\N	1001 Кисть КФ -25*10  Эксперт щп	1001 Кисть КФ -25*10  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906507	\N	1002 Кисть КФ -35*10  Эксперт щп	1002 Кисть КФ -35*10  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906508	\N	1003 Кисть КФ -50*12  Эксперт щп	1003 Кисть КФ -50*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906509	\N	1004 Кисть КФ -70*12  Эксперт щп	1004 Кисть КФ -70*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906510	\N	1005 Кисть КФ-100*12  Эксперт щп	1005 Кисть КФ-100*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906511	\N	101 Киcть  KФ  20*10 Столичная №1	101 Киcть  KФ  20*10 Столичная №1	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906515	\N	102 Киcть  KФ  25*10 Столичная №1	102 Киcть  KФ  25*10 Столичная №1	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906524	\N	103 Киcть  KФ  38*10 Столичная №1	103 Киcть  KФ  38*10 Столичная №1	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906525	\N	104 Киcть  KФ  50*10 Столичная №1	104 Киcть  KФ  50*10 Столичная №1	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906526	\N	1040026 Декоративная краска KRYSTALIA COMP.A LT.2,5	1040026 Декоративная краска KRYSTALIA COMP.A LT.2,5	\N	\N	\N	box	10	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2906528	\N	105 Киcть  KФ  63*12 Столичная №1	105 Киcть  KФ  63*12 Столичная №1	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906544	\N	106 Киcть  KФ  75*12 Столичная №1	106 Киcть  KФ  75*12 Столичная №1	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906551	\N	1060074 Специальный прозрачный воск  ARTHE CERA OLD LT.4	1060074 Специальный прозрачный воск  ARTHE CERA OLD LT.4	\N	\N	\N	box	10	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2906569	\N	107 Киcть  KФ 100*12 Столичная №1	107 Киcть  KФ 100*12 Столичная №1	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906591	\N	10985987 CARAVAGGIO WHITE PEARL LT 4	10985987 CARAVAGGIO WHITE PEARL LT 4	\N	\N	\N	box	10	\N	kilogram2	\N	\N	\N	\N	\N	\N	\N
2906592	\N	11 Flovell RED ROSE 120/24	11 Flovell RED ROSE 120/24	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906593	\N	1111 700001207 Краска фасадная белая Универсал 6,5кг	1111 700001207 Краска фасадная белая Универсал 6,5кг	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906594	\N	1113 700001205 Краска фасадная белая Универсал 25кг	1113 700001205 Краска фасадная белая Универсал 25кг	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906595	\N	12 Flovell MAGIC ROSE 120/24	12 Flovell MAGIC ROSE 120/24	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906596	\N	13 Flovell ALOE 120/24	13 Flovell ALOE 120/24	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906597	\N	1302 Кисть Удлиненная КФУ-35*10  Эксперт щп	1302 Кисть Удлиненная КФУ-35*10  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906598	\N	1303 Кисть Удлиненная КФУ-50*12  Эксперт щп	1303 Кисть Удлиненная КФУ-50*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906599	\N	1304 Кисть Удлиненная КФУ-70*12  Эксперт щп	1304 Кисть Удлиненная КФУ-70*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906600	\N	14 Flovell FLORAL 15/144	14 Flovell FLORAL 15/144	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906601	\N	1402 Кисть Радиаторный КФР-35*10  Эксперт щп	1402 Кисть Радиаторный КФР-35*10  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906602	\N	1403 Кисть Радиаторный  КФР-50*12  Эксперт щп	1403 Кисть Радиаторный  КФР-50*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906603	\N	1404 Кисть Радиаторный КФР-70*12  Эксперт щп	1404 Кисть Радиаторный КФР-70*12  Эксперт щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906604	\N	15 Flovell FRUIT 15/144	15 Flovell FRUIT 15/144	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906605	\N	1580 Кисть КП Макловица 140*50  с	1580 Кисть КП Макловица 140*50  с	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906606	\N	1585 Кисть КП Макловица 170*70  с	1585 Кисть КП Макловица 170*70  с	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906607	\N	16 Flovell ANTIBACTERIAL 15/144	16 Flovell ANTIBACTERIAL 15/144	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906608	\N	1802 Кисть КФ -35*12  Мастер щп	1802 Кисть КФ -35*12  Мастер щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906609	\N	1803 Кисть КФ -50*15  Мастер щп	1803 Кисть КФ -50*15  Мастер щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906610	\N	1804 Кисть КФ -75*17  Мастер щп	1804 Кисть КФ -75*17  Мастер щп	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906611	\N	2 Flovell BIO 72/24	2 Flovell BIO 72/24	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906612	\N	201 Киcть  KФ 25*10 Столичная №2	201 Киcть  KФ 25*10 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906613	\N	202 Киcть  KФ 38*13 Столичная №2	202 Киcть  KФ 38*13 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906614	\N	203 Киcть  KФ 50*14 Столичная №2	203 Киcть  KФ 50*14 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906615	\N	204 Киcть  KФ 63*14 Столичная №2	204 Киcть  KФ 63*14 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906616	\N	205 Киcть  KФ 75*16 Столичная №2	205 Киcть  KФ 75*16 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906617	\N	206 Киcть  KФ 83*18 Столичная №2	206 Киcть  KФ 83*18 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906618	\N	207 Киcть KФ 100*18 Столичная №2	207 Киcть KФ 100*18 Столичная №2	\N	\N	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906716	\N	700000548 Краска в/д МОЮЩАЯСЯ 25кг "Универсал"	700000548 Краска в/д МОЮЩАЯСЯ 25кг "Универсал"	2	1	0.1	packet	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906717	\N	700000556Краска Для потолка УНИВЕРСАЛ 25кг	700000556Краска Для потолка УНИВЕРСАЛ 25кг	25	26	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2906718	\N	700000708 Краска для ванных комнат и кухонь ПРОФИ A 0,9л	700000708 Краска для ванных комнат и кухонь ПРОФИ A 0,9л	0.9	1	\N	box	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
2992064	\N	UN	UN	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2992072	\N	Margarin	Margarin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2992084	\N	Hamir polufabrikat	Hamir polufabrikat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3057661	\N	TEST1234	TEST1234	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3062971	\N	Demo tovar	Demo tovar	\N	\N	\N	block	90	\N	\N	\N	\N	\N	\N	\N	\N	\N
3069998	\N	PET 5 l	PET 5 l	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3070021	\N	Ингредиент 1	Ингредиент 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3070024	\N	Ингредиент 2	Ингредиент 2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3070036	\N	Масло раф OIL MERCY 1 л	Масло раф OIL MERCY 1л	0.935	0.935	1	box	15	\N	\N	\N	\N	\N	\N	\N	\N	\N
3070122	\N	ТМЦ 1	ТМЦ 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3070123	\N	ТМЦ 2	ТМЦ 2	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3074487	\N	tovar bor 2020 degan	tovar bor 2020 degan	\N	\N	\N	\N	\N	l456345	\N	\N	\N	\N	\N	\N	\N	\N
3078327	\N	Demo tovarlar borda o'chiraman	Demo tovarlar borda o'chiraman	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3078329	\N	demo tovar bor aka	demo tovar bor aka	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3154881	\N	testoviy tovar	testoviy tovar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3158654	\N	кола	кола	\N	\N	\N	block	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
3177513	\N	Раф масло	Раф масло	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3252815	\N	demo tovar 100	demo tovar 100	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3252818	\N	demo tovar 101	demo tovar 101	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
3259343	\N	nimadir	nimadir	\N	\N	\N	\N	\N	erger	\N	\N	\N	\N	\N	\N	\N	\N
3272507	\N	Flash cola	Flash cola	\N	\N	\N	block	6	\N	109	\N	\N	\N	\N	\N	\N	\N
3273557	\N	Borofone	Borofone	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3306408	15ace563-a642-11ee-b9c3-0050569eddcc	Dəmir tor 200x200  3 mm 870x3500	Dəmir tor 200x200  3 mm 870x3500	\N	\N	\N	\N	\N	\N	109	\N	123456777	4005900008952	\N	\N	\N	\N
3306419	2d2e27f2-a642-11ee-b9c3-0050569eddcc	Dəmir tor 150x150 3mm 870x3500	Dəmir tor 150x150 3mm 870x3500	\N	\N	\N	\N	\N	\N	109	\N	123456789	4005900008954	\N	\N	\N	\N
3306420	38c8eada-a642-11ee-b9c3-0050569eddcc	Dəmir tor 200x200 4 mm 870x3500	Dəmir tor 200x200 4 mm 870x3500	\N	\N	\N	\N	\N	\N	109	\N	123456766	4005900008951	\N	\N	\N	\N
3306421	86de7b43-a642-11ee-b9c3-0050569eddcc	Dəmir tor 150x150 4mm 870x3500	Dəmir tor 150x150 4mm 870x3500	\N	\N	\N	\N	\N	\N	109	\N	123456788	4005900008953	\N	\N	\N	\N
3382317	b2382d88-2070-11ee-b95e-0050569eddcc	DEKOR 099 TAXTA SAPLI ALÇI MALASI 50 SM	DEKOR 099 TAXTA SAPLI ALÇI MALASI 50 SM	\N	\N	\N	\N	\N	\N	109	\N	\N	0	\N	\N	\N	\N
3382328	d5ec9a52-2070-11ee-b95e-0050569eddcc	DEKOR 097 TAXTA SAPLI ALÇI MALASI 40 SM	DEKOR 097 TAXTA SAPLI ALÇI MALASI 40 SM	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
3382329	ed4a3439-2070-11ee-b95e-0050569eddcc	DEKOR 077 KAUÇUKLU HAMARLAŞDIRICI MALA 15X22 SM	DEKOR 077 KAUÇUKLU HAMARLAŞDIRICI MALA 15X22 SM	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
3382337	8c68ec3f-2070-11ee-b95e-0050569eddcc	DAŞ BALTASI 18*12 SM	DAŞ BALTASI 18*12 SM	\N	\N	\N	\N	\N	\N	796	\N	\N	\N	\N	\N	\N	\N
3407442	\N	Олма нектар 1 л	Олма нектар 1 л	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	04780099470569	02202002005131001	\N	13
3503215	1015	Pepsi Cola 1.5 л PET	Pepsi Cola 1.5 л PET	1.5	1.555	\N	block	6	1005	\N	\N	\N	\N	\N	\N	\N	\N
3503225	1016	Pepsi Cola 1 л PET	Pepsi Cola 1 л PET	1	2	\N	block	8	1005	\N	\N	\N	\N	\N	\N	\N	\N
3503231	1013	Pepsi Cola 0.5 л PET	Pepsi Cola 0.5 л PET	0.5	0.55	\N	block	12	1005	\N	100	\N	\N	\N	\N	\N	\N
3528805	НФ-00002180	Coca-cola	Coca-col	0.5	0.65	0.5	block	12	\N	kilogram2	\N	100	\N	\N	\N	\N	\N
4841010	\N	Новый для теста 28042026	Новый для теста 28042026	\N	\N	\N	\N	\N	\N	109	\N	\N	\N	\N	\N	\N	\N
3552430	\N	700000548 Краска в/д МОЮЩАЯСЯ 25кг "Универсал"	700000548 Краска в/д МОЮЩАЯСЯ 25кг "Универсал"	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3670219	\N	Персел	Персел	\N	\N	\N	box	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
3694398	\N	1233	1233	\N	\N	\N	block	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
3700558	aa1e7d5e-7847-11ec-b916-0050569eb712	Optimal-300	Optimal-300	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3810624	\N	TURON 50kg	TURON 50kg	\N	\N	\N	\N	50	\N	\N	\N	\N	\N	\N	\N	\N	\N
3810635	\N	Turon 3	Turon	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
3850129	Тест 0101	Тест 0102	Тест 0103	104	105	106	block	12	\N	kilogram2	\N	Тест 0107	\N	\N	\N	\N	\N
3976862	101010303-00009	Чорток	Чорток	\N	\N	\N	block	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
3982238	\N	suv ichimlik	suv ichimlik	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3982319	\N	plasmassa	plasmassa	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3982321	\N	baklajka	baklajka	\N	\N	\N	\N	\N	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
3982324	\N	cola suvi	cola suvi	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3986112	\N	kraska jeltaya	kraska jeltaya	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
4097949	\N	olma121	olma12	\N	\N	\N	block	1	\N	kilogramm1	\N	\N	\N	\N	\N	\N	\N
4131704	228	Pen (Black)	Pen (Black)	\N	\N	\N	block	120	\N	\N	\N	\N	\N	\N	\N	\N	\N
4322347	\N	_тестовая	_тестовая	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4322350	\N	_тестоваяBusiness	_тестоваяBusiness	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4438537	10320	BA Test Coca-cola 0.5l	BA Test Coca-cola 0.5l	0.5	0.65	0.5	block	12	\N	kilogram2	\N	100	\N	\N	\N	\N	\N
4438975	00-00000001	BA Coca Cola Test 14.12.2025	BA Coca Cola Test 14.12.2025	1	1	1	\N	\N	\N	10001001	\N	\N	ABC123	\N	\N	\N	\N
4439705	110022	BA Test Timur 1234	BA Test Timur 1234	0.5	0.65	0.5	\N	\N	\N	10001001	\N	100	\N	\N	\N	\N	\N
4439992	1100223	BA Test Timur 12345	BA Test Timur 12345	0.5	0.65	0.5	\N	\N	\N	10001001	\N	100	\N	\N	\N	\N	\N
4439997	1100227	BA Test Timur 12347	BA Test Timur 12347	0.5	0.65	0.5	\N	\N	\N	10001001	\N	100	\N	\N	\N	\N	\N
4439998	1100228	BA Test Timur 12348 Sanjar	BA Test Timur 12348 Sanjar	0.5	0.65	0.5	\N	\N	\N	10001001	\N	100	\N	\N	\N	\N	\N
4441190	00-00000002	Nomenklatura iz 1c	Nomenklatura iz 1c	1	1	1	\N	\N	\N	10001001	\N	\N	\N	\N	\N	\N	\N
4442895	\N	Картошка уруги	Картошка уруги	\N	\N	\N	\N	\N	\N	KILO	\N	\N	\N	\N	\N	\N	\N
4457414	00-00000155	_Тест товар 1	_Тест товар 1	1	1	1	\N	\N	\N	10001001	\N	\N	\N	\N	\N	\N	\N
4457691	00-00000009	_Номенклатура 2212	_Номенклатура 2212	1	1	1	\N	\N	\N	10001001	\N	\N	\N	\N	\N	\N	\N
4496024	\N	fuse tea 0.5 L shaftoli	fuse tea 0.5 L shaftoli	\N	\N	\N	block	12	\N	1000010	\N	\N	\N	\N	\N	\N	13
4519922	00-00000013	_Тестовый товар 0701	_Тестовый товар 0701	1	1	1	\N	\N	\N	10001001	\N	\N	\N	\N	\N	\N	\N
4529596	00-00000014	_товар № 100	_товар № 100	1	1	1	\N	\N	\N	10001001	\N	\N	\N	\N	\N	\N	\N
4569872	Cola cola 1,5l	Shakarsiz Coca Cola 1,5 l Qora qop qoqli 1кор 6шт	Coca cola 1,5l shakarsiz	0.0031	0.0213	0.0031	2	6	\N	12	\N	\N	\N	\N	\N	\N	\N
4569876	Fanta 1,5l	Fanta 1,5l  1кор 6шт	Fanta 1,5l  1кор 6шт	0.0154	0.145	0.0154	2	6	\N	12	\N	\N	\N	\N	\N	\N	\N
4572802	Spride	Spride	Spride	0.0031	0.0321	0.0031	2	9	\N	12	\N	\N	\N	\N	\N	\N	\N
4608988	12345678	gastro test product	gastro test product	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4635879	ALU 1L	ALU 1L suv Shaftoli	ALU 1L	0.0031	0.025	0.0031	box	9	\N	12	\N	\N	\N	\N	\N	\N	\N
4648387	\N	Hydrolife 10L	Hydrolife 10L	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N
4670859	\N	Un 50kg TURON 1 sort	Un 50kg TURON 1 sort	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4709633	\N	Coca-Cola 1L	Coca-Cola 1L	\N	\N	\N	\N	\N	\N	109	1	\N	\N	\N	\N	\N	\N
4709634	\N	Coca-Cola 1.5L	Coca-Cola 1.5L	\N	\N	\N	\N	\N	\N	109	2	\N	\N	\N	\N	\N	\N
4709635	\N	Fanta 1L	Fanta 1L	\N	\N	\N	\N	\N	\N	109	4	\N	\N	\N	\N	\N	\N
4709636	\N	Fanta 1.5L	Fanta 1.5L	\N	\N	\N	\N	\N	\N	109	5	\N	\N	\N	\N	\N	\N
4709637	\N	Sprite 0.5L	Sprite 0.5L	\N	\N	\N	\N	\N	\N	109	6	\N	\N	\N	\N	\N	\N
4709638	\N	Sprite 1L	Sprite 1L	\N	\N	\N	\N	\N	\N	109	7	\N	\N	\N	\N	\N	\N
4709639	\N	Sprite 1.5L	Sprite 1.5L	\N	\N	\N	\N	\N	\N	109	8	\N	\N	\N	\N	\N	\N
4709640	\N	Tip Top Абрикос	Tip Top Абрикос	\N	\N	\N	\N	\N	\N	109	9	\N	\N	\N	\N	\N	\N
4709641	\N	Tip Top Апельсин	Tip Top Апельсин	\N	\N	\N	\N	\N	\N	109	10	\N	\N	\N	\N	\N	\N
4709642	\N	Tip Top Вишня	Tip Top Вишня	\N	\N	\N	\N	\N	\N	109	11	\N	\N	\N	\N	\N	\N
4709643	\N	Tip Top Гранат	Tip Top Гранат	\N	\N	\N	\N	\N	\N	109	12	\N	\N	\N	\N	\N	\N
4709644	\N	Tip Top Персик	Tip Top Персик	\N	\N	\N	\N	\N	\N	109	13	\N	\N	\N	\N	\N	\N
4709645	\N	Tip Top Яблоко	Tip Top Яблоко	\N	\N	\N	\N	\N	\N	109	14	\N	\N	\N	\N	\N	\N
4709646	\N	Tip Top Ягодный Микс	Tip Top Ягодный Микс	\N	\N	\N	\N	\N	\N	109	15	\N	\N	\N	\N	\N	\N
4709647	\N	Red Bull Classic 250ml	Red Bull Classic 250ml	\N	\N	\N	\N	\N	\N	109	16	\N	\N	\N	\N	\N	\N
4709648	\N	Red Bull Classic 450ml	Red Bull Classic 450ml	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N
4709649	\N	Red Bull Red Edition 250ml	Red Bull Red Edition 250ml	\N	\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N	\N	\N
4709650	\N	Flash Up Energy ж/б 0,45	Flash Up Energy ж/б 0,45	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N
4709651	\N	Flash Up Ultra Energy ж/б 0,45	Flash Up Ultra Energy ж/б 0,45	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N
4709652	\N	Snickers (кг)	Snickers (кг)	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N
4709653	\N	Kit kat (кг)	Kit kat (кг)	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N
4709654	\N	Bounty (кг)	Bounty (кг)	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N
4709655	\N	Turon Мука высший сорт 1кг	Turon Мука высший сорт 1кг	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N
4709656	\N	Turon Мука высший сорт 2кг	Turon Мука высший сорт 2кг	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N
4709657	\N	Упаковочный пакет Турон 1кг	Упаковочный пакет Турон 1кг	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N
4709658	\N	Упаковочный пакет Турон 2кг	Упаковочный пакет Турон 2кг	\N	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N
4709659	\N	Un (сыре)	Un (сыре)	\N	\N	\N	\N	\N	\N	kilogram2	28	\N	\N	\N	\N	\N	\N
4709660	\N	Shelf 1x4	Shelf 1x4	\N	\N	\N	\N	\N	\N	kilogram2	29	\N	\N	\N	\N	\N	\N
4709661	\N	Xolodilnik (1 door)	Xolodilnik (1 door)	\N	\N	\N	\N	\N	\N	kilogram2	30	\N	\N	\N	\N	\N	\N
4709662	\N	Xolodilnik (2 door)	Xolodilnik (2 door)	\N	\N	\N	\N	\N	\N	kilogram2	31	\N	\N	\N	\N	\N	\N
4709663	\N	Pustoy Kega 30L	Pustoy Kega 30L	\N	\N	\N	\N	\N	\N	kilogram2	32	\N	\N	\N	\N	\N	\N
4709664	\N	Зап.части для ХО	Зап.части для ХО	\N	\N	\N	\N	\N	\N	109	33	\N	\N	\N	\N	\N	\N
4731878	\N	Свеча зажигания OE199/T10 Spark 1,25; Cobalt; Nexia R3; Gentra	Свеча зажигания OE199/T10 Spark 1,25; Cobalt; Nexia R3; Gentra	\N	\N	\N	box	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
4753929	\N	SHAFTOLI 1L	SHAFTOLI 1L	0.93	0.93	\N	box	15	\N	\N	\N	\N	\N	\N	\N	\N	\N
4794131	XT-0001	Кетмон (дастасиз)	Кетмон (дастасиз)	\N	\N	\N	\N	\N	\N	\N	\N	\N	1234567890	\N	\N	\N	\N
4916483	TE-0158	Мастерок Оптимус	Мастерок Оптимус	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4916484	MG-0284	Металл щетка Магнус	Металл щетка Магнус	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4927870	\N	Winston Caster	Winston Caster	\N	\N	\N	\N	\N	\N	\N	\N	\N	47802049	\N	\N	\N	\N
4934472	DEMO-GEPARD-001	Gepard dema2 mahsulot	Gepard demo	1	1.2	\N	\N	\N	\N	kilogram2	1	DEMO-GEPARD-001	8901234567890	\N	\N	\N	\N
4952841	MACBOOK-WMS-TEST-001	MacBook WMS Test	MacBook WMS Test	1	1	1	box	12	\N	109	1	MACBOOK-WMS-TEST-001	MACBOOK-WMS-TEST-001-BC	\N	\N	\N	\N
4953117	MACBOOK-WMS-TEST-002	MacBook WMS Test 2	MacBook Test 2	1	1	1	box	12	\N	109	1	MACBOOK-WMS-TEST-002	MACBOOK-WMS-TEST-002-BC	\N	\N	\N	\N
4993427	\N	Lipton limon	Lipton limon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4993428	\N	Lipton malina	Lipton malina	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4999071	\N	Apple	Apple meva mebel	\N	\N	\N	\N	\N	\N	KILO	\N	\N	\N	\N	\N	\N	\N
4999073	\N	Olma_1	Olma_1	\N	\N	\N	\N	\N	\N	KILO	\N	\N	\N	\N	\N	\N	\N
\.


-- Completed on 2026-06-01 23:09:10

--
-- PostgreSQL database dump complete
--

\unrestrict HdqG08I7mxsVNRRRkSXgoicsbE1GbqI97AZA7bhwQczUbsSa7CcNGy1MhFVxHx3

