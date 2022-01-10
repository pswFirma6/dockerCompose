CREATE USER root WITH PASSWORD 'root';

CREATE TABLE public."Feedbacks" (
    "Id" integer NOT NULL,
    "Content" text,
    "FeedbackDate" text,
    "PharmacyName" text
);
--
-- TOC entry 210 (class 1259 OID 117980)
-- Name: Feedbacks_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."Feedbacks" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Feedbacks_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 117989)
-- Name: MedicationConsumptions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."MedicationConsumptions" (
    "Id" integer NOT NULL,
    "MedicationName" text,
    "MedicationId" integer NOT NULL,
    "Date" timestamp without time zone NOT NULL,
    "AmountConsumed" integer NOT NULL
);
--
-- TOC entry 212 (class 1259 OID 117988)
-- Name: MedicationConsumptions_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."MedicationConsumptions" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."MedicationConsumptions_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 117997)
-- Name: Medicines; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."Medicines" (
    "Id" integer NOT NULL,
    "Name" text,
    "Quantity" integer NOT NULL,
    "Intensity" double precision NOT NULL
);
--
-- TOC entry 214 (class 1259 OID 117996)
-- Name: Medicines_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."Medicines" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Medicines_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 118005)
-- Name: Notifications; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."Notifications" (
    "Id" integer NOT NULL,
    "Title" text,
    "Content" text,
    "Date" timestamp without time zone NOT NULL,
    "FileName" text,
    "Read" boolean NOT NULL
);
--
-- TOC entry 216 (class 1259 OID 118004)
-- Name: Notifications_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."Notifications" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Notifications_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 118013)
-- Name: Offers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."Offers" (
    "Id" integer NOT NULL,
    "Title" text,
    "Content" text,
    "OfferDateRange_StartDate" timestamp without time zone,
    "OfferDateRange_EndDate" timestamp without time zone,
    "PharmacyName" text,
    "Posted" boolean NOT NULL
);
--
-- TOC entry 218 (class 1259 OID 118012)
-- Name: Offers_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."Offers" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Offers_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 118021)
-- Name: Pharmacies; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."Pharmacies" (
    "Id" integer NOT NULL,
    "PharmacyName" text,
    "PharmacyPicture" text,
    "PharmacyAddress_Street" text,
    "PharmacyAddress_City" text,
    "PharmacyConnectionInfo_ApiKey" text,
    "PharmacyConnectionInfo_FileProtocol" text,
    "PharmacyConnectionInfo_Url" text
);
--
-- TOC entry 220 (class 1259 OID 118020)
-- Name: Pharmacies_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."Pharmacies" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Pharmacies_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 118029)
-- Name: PharmacyComments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."PharmacyComments" (
    "Id" integer NOT NULL,
    "PharmacyName" text,
    "Content" text,
    "CommentDate" timestamp without time zone NOT NULL
);
--
-- TOC entry 222 (class 1259 OID 118028)
-- Name: PharmacyComments_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."PharmacyComments" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."PharmacyComments_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 118059)
-- Name: TenderItems; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."TenderItems" (
    "Id" integer NOT NULL,
    "Name" text,
    "Quantity" integer NOT NULL,
    "TenderId" integer NOT NULL
);
--
-- TOC entry 230 (class 1259 OID 118058)
-- Name: TenderItems_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."TenderItems" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."TenderItems_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 118037)
-- Name: TenderOfferItems; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."TenderOfferItems" (
    "Id" integer NOT NULL,
    "Name" text,
    "Quantity" integer NOT NULL,
    "Price" double precision NOT NULL,
    "TenderOfferId" integer NOT NULL
);
--
-- TOC entry 224 (class 1259 OID 118036)
-- Name: TenderOfferItems_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."TenderOfferItems" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."TenderOfferItems_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 118045)
-- Name: TenderOffers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."TenderOffers" (
    "Id" integer NOT NULL,
    "TenderId" integer NOT NULL,
    "PharmacyName" text,
    "isWinner" boolean NOT NULL
);
--
-- TOC entry 226 (class 1259 OID 118044)
-- Name: TenderOffers_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."TenderOffers" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."TenderOffers_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 118053)
-- Name: Tenders; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."Tenders" (
    "Id" integer NOT NULL,
    "CreationDate" timestamp without time zone NOT NULL,
    "StartDate" timestamp without time zone NOT NULL,
    "EndDate" timestamp without time zone NOT NULL,
    "Opened" boolean NOT NULL
);
--
-- TOC entry 228 (class 1259 OID 118052)
-- Name: Tenders_Id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public."Tenders" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Tenders_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 117975)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);

--
-- TOC entry 3385 (class 0 OID 117981)
-- Dependencies: 211
-- Data for Name: Feedbacks; Type: TABLE DATA; Schema: public; Owner: root
--
GRANT ALL ON DATABASE integrationdb TO root;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO root;

INSERT INTO public."Notifications"(
	"Id", "Title", "Content", "Date", "FileName", "Read")
	VALUES (1, 'New specification', 'You have new specification', '2021-12-10 09:49:25', 'medicineSpecification(Aspirin).pdf', true);

INSERT INTO public."Notifications"(
	"Id", "Title", "Content", "Date", "FileName", "Read")
	VALUES (2, 'New specification', 'You have new specification', 
'2021-12-12 19:39:55', 'medicineSpecification(Brufen).pdf', false);
