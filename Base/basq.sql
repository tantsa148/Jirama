
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8
-- Dumped by pg_dump version 12.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = ON;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = FALSE;
SET xmloption = CONTENT;
SET client_min_messages = WARNING;
SET row_security = OFF;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: absence; Type: TABLE; Schema: public; Owner: postgres
--
CREATE DATABASE ecolage_s4;
\c ecolage_s4;

CREATE TABLE public.absence (
    id integer NOT NULL,
    dateabsence date,
    idanneescolaire integer,
    idetudiant integer
);


ALTER TABLE public.absence OWNER TO postgres;

--
-- Name: absence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.absence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.absence_id_seq OWNER TO postgres;

--
-- Name: absence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.absence_id_seq OWNED BY public.absence.id;


--
-- Name: absenceeleve; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.absenceeleve (
    id integer NOT NULL,
    idetudiantecole integer,
    dateabsdebut date,
    dateabsfin date,
    motif text,
    dateajout date,
    profilexpediteur integer
);


ALTER TABLE public.absenceeleve OWNER TO postgres;

--
-- Name: absenceeleve_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.absenceeleve_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.absenceeleve_id_seq OWNER TO postgres;

--
-- Name: absenceeleve_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.absenceeleve_id_seq OWNED BY public.absenceeleve.id;


--
-- Name: academy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academy (
    id integer NOT NULL,
    nom character varying,
    adresse text,
    description text,
    numtel character varying,
    email character varying,
    datecreationecole date,
    dateinscriptionecole date,
    prefixe character varying,
    logo text,
    idtype integer,
    users_id integer
);


ALTER TABLE public.academy OWNER TO postgres;

--
-- Name: academy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.academy_id_seq OWNER TO postgres;

--
-- Name: academy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academy_id_seq OWNED BY public.academy.id;


--
-- Name: academyprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academyprof (
    id integer NOT NULL,
    academyid integer,
    profid integer
);


ALTER TABLE public.academyprof OWNER TO postgres;

--
-- Name: academyprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academyprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.academyprof_id_seq OWNER TO postgres;

--
-- Name: academyprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academyprof_id_seq OWNED BY public.academyprof.id;


--
-- Name: academyusers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academyusers (
    id integer NOT NULL,
    users_id integer,
    academy_id integer
);


ALTER TABLE public.academyusers OWNER TO postgres;

--
-- Name: academyusers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academyusers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.academyusers_id_seq OWNER TO postgres;

--
-- Name: academyusers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academyusers_id_seq OWNED BY public.academyusers.id;


--
-- Name: anneescolaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.anneescolaire (
    id integer NOT NULL,
    idecole integer,
    debutanneescolaire date,
    finanneescolaire date
);


ALTER TABLE public.anneescolaire OWNER TO postgres;

--
-- Name: anneescolaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.anneescolaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anneescolaire_id_seq OWNER TO postgres;

--
-- Name: anneescolaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.anneescolaire_id_seq OWNED BY public.anneescolaire.id;


--
-- Name: calendrierscolaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calendrierscolaire (
    id integer NOT NULL,
    idecole integer,
    motif text,
    descriptions text,
    datedebut date,
    datefin date,
    statut integer
);


ALTER TABLE public.calendrierscolaire OWNER TO postgres;

--
-- Name: calendrierscolaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calendrierscolaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calendrierscolaire_id_seq OWNER TO postgres;

--
-- Name: calendrierscolaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calendrierscolaire_id_seq OWNED BY public.calendrierscolaire.id;


--
-- Name: carneteleve; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carneteleve (
    id integer NOT NULL,
    idetudiant integer,
    datecarnet date,
    descriptions text,
    profilexpediteur integer
);


ALTER TABLE public.carneteleve OWNER TO postgres;

--
-- Name: carneteleve_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carneteleve_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carneteleve_id_seq OWNER TO postgres;

--
-- Name: carneteleve_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carneteleve_id_seq OWNED BY public.carneteleve.id;


--
-- Name: carnettout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carnettout (
    id integer NOT NULL,
    idecoleclasse integer,
    idanneescolaire integer,
    datecreation timestamp without time zone DEFAULT now(),
    descriptions text
);


ALTER TABLE public.carnettout OWNER TO postgres;

--
-- Name: carnettout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carnettout_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carnettout_id_seq OWNER TO postgres;

--
-- Name: carnettout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carnettout_id_seq OWNED BY public.carnettout.id;


--
-- Name: classe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classe (
    id integer NOT NULL,
    classe character varying(50)
);


ALTER TABLE public.classe OWNER TO postgres;

--
-- Name: classe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classe_id_seq OWNER TO postgres;

--
-- Name: classe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classe_id_seq OWNED BY public.classe.id;


--
-- Name: classeniveau; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classeniveau (
    id integer NOT NULL,
    idniveau integer,
    idclasse integer
);


ALTER TABLE public.classeniveau OWNER TO postgres;

--
-- Name: classeniveau_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classeniveau_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classeniveau_id_seq OWNER TO postgres;

--
-- Name: classeniveau_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classeniveau_id_seq OWNED BY public.classeniveau.id;


--
-- Name: commentaires; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaires (
    id integer NOT NULL,
    programmescolaireid integer NOT NULL,
    userid integer NOT NULL,
    nom text,
    prenom text,
    commentaire text NOT NULL,
    datecreation timestamp without time zone DEFAULT now(),
    parent_comment_id integer
);


ALTER TABLE public.commentaires OWNER TO postgres;

--
-- Name: commentaires_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commentaires_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commentaires_id_seq OWNER TO postgres;

--
-- Name: commentaires_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commentaires_id_seq OWNED BY public.commentaires.id;


--
-- Name: critereprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.critereprof (
    id integer NOT NULL,
    idprof integer,
    matiere text,
    classe text
);


ALTER TABLE public.critereprof OWNER TO postgres;

--
-- Name: critereprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.critereprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.critereprof_id_seq OWNER TO postgres;

--
-- Name: critereprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.critereprof_id_seq OWNED BY public.critereprof.id;


--
-- Name: csvmatiereclasse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.csvmatiereclasse (
    id integer NOT NULL,
    matiere character varying(150),
    matricule character varying(250),
    coefficient integer,
    jour character varying(50),
    heuredebut time without time zone,
    heurefin time without time zone,
    idanneescolaire integer
);


ALTER TABLE public.csvmatiereclasse OWNER TO postgres;

--
-- Name: csvmatiereclasse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.csvmatiereclasse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.csvmatiereclasse_id_seq OWNER TO postgres;

--
-- Name: csvmatiereclasse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.csvmatiereclasse_id_seq OWNED BY public.csvmatiereclasse.id;


--
-- Name: csvnoteeleveecole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.csvnoteeleveecole (
    id integer NOT NULL,
    matricule text,
    notes numeric
);


ALTER TABLE public.csvnoteeleveecole OWNER TO postgres;

--
-- Name: csvnoteeleveecole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.csvnoteeleveecole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.csvnoteeleveecole_id_seq OWNER TO postgres;

--
-- Name: csvnoteeleveecole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.csvnoteeleveecole_id_seq OWNED BY public.csvnoteeleveecole.id;


--
-- Name: demandeajoutprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandeajoutprof (
    id integer NOT NULL,
    idacademy integer,
    idprof integer,
    dateajout date,
    statut integer
);


ALTER TABLE public.demandeajoutprof OWNER TO postgres;

--
-- Name: demandeajoutprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandeajoutprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandeajoutprof_id_seq OWNER TO postgres;

--
-- Name: demandeajoutprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandeajoutprof_id_seq OWNED BY public.demandeajoutprof.id;


--
-- Name: demandeprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandeprof (
    id integer NOT NULL,
    cv character varying(255),
    dateenvoye date,
    descriptions character varying(255),
    ecole_id integer,
    matiere character varying(255),
    niveau character varying(255),
    professeur_id integer,
    statut integer
);


ALTER TABLE public.demandeprof OWNER TO postgres;

--
-- Name: demandeprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandeprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandeprof_id_seq OWNER TO postgres;

--
-- Name: demandeprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandeprof_id_seq OWNED BY public.demandeprof.id;


--
-- Name: ecoleclasse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ecoleclasse (
    id integer NOT NULL,
    idecole integer,
    idclasse integer
);


ALTER TABLE public.ecoleclasse OWNER TO postgres;

--
-- Name: ecoleclasse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ecoleclasse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecoleclasse_id_seq OWNER TO postgres;

--
-- Name: ecoleclasse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ecoleclasse_id_seq OWNED BY public.ecoleclasse.id;


--
-- Name: edtclasse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.edtclasse (
    id integer NOT NULL,
    ecoleclasse_id integer,
    matiere_id integer,
    jourid integer,
    heuredebut time without time zone,
    heurefin time without time zone,
    idanneescolaire integer
);


ALTER TABLE public.edtclasse OWNER TO postgres;

--
-- Name: edtclasse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.edtclasse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.edtclasse_id_seq OWNER TO postgres;

--
-- Name: edtclasse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.edtclasse_id_seq OWNED BY public.edtclasse.id;


--
-- Name: eleveecole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eleveecole (
    id integer NOT NULL,
    idetudiant integer,
    idecole integer,
    prefixe text
);


ALTER TABLE public.eleveecole OWNER TO postgres;

--
-- Name: eleveecole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.eleveecole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eleveecole_id_seq OWNER TO postgres;

--
-- Name: eleveecole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.eleveecole_id_seq OWNED BY public.eleveecole.id;


--
-- Name: etudiant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etudiant (
    id integer NOT NULL,
    nom character varying,
    prenom character varying,
    datenaissance date,
    adresse character varying,
    email character varying,
    contact character varying,
    photo text
);


ALTER TABLE public.etudiant OWNER TO postgres;

--
-- Name: etudiant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.etudiant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etudiant_id_seq OWNER TO postgres;

--
-- Name: etudiant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.etudiant_id_seq OWNED BY public.etudiant.id;


--
-- Name: etudiantecole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etudiantecole (
    id integer NOT NULL,
    idecoleclasse integer,
    idanneescolaire integer,
    idetudiant integer,
    prefixe text
);


ALTER TABLE public.etudiantecole OWNER TO postgres;

--
-- Name: etudiantecole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.etudiantecole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etudiantecole_id_seq OWNER TO postgres;

--
-- Name: etudiantecole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.etudiantecole_id_seq OWNED BY public.etudiantecole.id;


--
-- Name: ficheecolage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ficheecolage (
    id integer NOT NULL,
    idetudiant integer,
    mois character varying,
    frais numeric,
    statut integer
);


ALTER TABLE public.ficheecolage OWNER TO postgres;

--
-- Name: ficheecolage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ficheecolage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ficheecolage_id_seq OWNER TO postgres;

--
-- Name: ficheecolage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ficheecolage_id_seq OWNED BY public.ficheecolage.id;


--
-- Name: fraisdescolarite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fraisdescolarite (
    id integer NOT NULL,
    idecole integer,
    idecoleclasse integer,
    frais numeric DEFAULT 0
);


ALTER TABLE public.fraisdescolarite OWNER TO postgres;

--
-- Name: fraisdescolarite_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fraisdescolarite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fraisdescolarite_id_seq OWNER TO postgres;

--
-- Name: fraisdescolarite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fraisdescolarite_id_seq OWNED BY public.fraisdescolarite.id;


--
-- Name: horaireprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horaireprof (
    id integer NOT NULL,
    profid integer,
    jourid integer,
    heuredebut time without time zone,
    heurefin time without time zone,
    idanneescolaire integer,
    academy text,
    adresse text,
    classe text
);


ALTER TABLE public.horaireprof OWNER TO postgres;

--
-- Name: horaireprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horaireprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horaireprof_id_seq OWNER TO postgres;

--
-- Name: horaireprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horaireprof_id_seq OWNED BY public.horaireprof.id;


--
-- Name: jours; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jours (
    id integer NOT NULL,
    jour character varying(50)
);


ALTER TABLE public.jours OWNER TO postgres;

--
-- Name: jours_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jours_id_seq OWNER TO postgres;

--
-- Name: jours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jours_id_seq OWNED BY public.jours.id;


--
-- Name: matiere; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matiere (
    id integer NOT NULL,
    matiere character varying(50)
);


ALTER TABLE public.matiere OWNER TO postgres;

--
-- Name: matiere_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matiere_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matiere_id_seq OWNER TO postgres;

--
-- Name: matiere_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matiere_id_seq OWNED BY public.matiere.id;


--
-- Name: matiereclasse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matiereclasse (
    id integer NOT NULL,
    ecoleclasse_id integer,
    matiere_id integer,
    coefficient numeric(10,2),
    professeur_id integer,
    idanneescolaire integer
);


ALTER TABLE public.matiereclasse OWNER TO postgres;

--
-- Name: matiereclasse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matiereclasse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matiereclasse_id_seq OWNER TO postgres;

--
-- Name: matiereclasse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matiereclasse_id_seq OWNED BY public.matiereclasse.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media (
    id integer NOT NULL,
    idecoleclasse integer,
    idanneescolaire integer,
    titre character varying,
    photo text
);


ALTER TABLE public.media OWNER TO postgres;

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_id_seq OWNER TO postgres;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: niveau; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.niveau (
    id integer NOT NULL,
    niveau text
);


ALTER TABLE public.niveau OWNER TO postgres;

--
-- Name: niveau_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.niveau_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niveau_id_seq OWNER TO postgres;

--
-- Name: niveau_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.niveau_id_seq OWNED BY public.niveau.id;


--
-- Name: noteetudiantecole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noteetudiantecole (
    id integer NOT NULL,
    idtrimestre integer,
    idmatiereclasse integer,
    idetudiant integer,
    notes numeric
);


ALTER TABLE public.noteetudiantecole OWNER TO postgres;

--
-- Name: noteetudiantecole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noteetudiantecole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noteetudiantecole_id_seq OWNER TO postgres;

--
-- Name: noteetudiantecole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noteetudiantecole_id_seq OWNED BY public.noteetudiantecole.id;


--
-- Name: offreecole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offreecole (
    id integer NOT NULL,
    dateenvoye date,
    descriptions character varying(255),
    ecole_id integer,
    poste character varying(255)
);


ALTER TABLE public.offreecole OWNER TO postgres;

--
-- Name: offreecole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.offreecole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offreecole_id_seq OWNER TO postgres;

--
-- Name: offreecole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.offreecole_id_seq OWNED BY public.offreecole.id;


--
-- Name: parentetudiant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parentetudiant (
    id integer NOT NULL,
    idetudiant integer,
    idparent integer
);


ALTER TABLE public.parentetudiant OWNER TO postgres;

--
-- Name: parentetudiant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parentetudiant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parentetudiant_id_seq OWNER TO postgres;

--
-- Name: parentetudiant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parentetudiant_id_seq OWNED BY public.parentetudiant.id;


--
-- Name: professeur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professeur (
    id integer NOT NULL,
    users_id integer,
    nomprenom text,
    numtel character varying(20),
    matricule character varying(50),
    photo text,
    cv text
);


ALTER TABLE public.professeur OWNER TO postgres;

--
-- Name: professeur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professeur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professeur_id_seq OWNER TO postgres;

--
-- Name: professeur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professeur_id_seq OWNED BY public.professeur.id;


--
-- Name: profil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profil (
    id integer NOT NULL,
    profil character varying(50)
);


ALTER TABLE public.profil OWNER TO postgres;

--
-- Name: profil_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profil_id_seq OWNER TO postgres;

--
-- Name: profil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profil_id_seq OWNED BY public.profil.id;


--
-- Name: programmescolaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programmescolaire (
    id integer NOT NULL,
    datecreation date,
    idmatiereclasse integer,
    titre text,
    cours text,
    statut integer
);


ALTER TABLE public.programmescolaire OWNER TO postgres;

--
-- Name: programmescolaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.programmescolaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.programmescolaire_id_seq OWNER TO postgres;

--
-- Name: programmescolaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.programmescolaire_id_seq OWNED BY public.programmescolaire.id;


--
-- Name: reponseoffre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reponseoffre (
    id integer NOT NULL,
    dateenvoye date,
    offreecoleid integer,
    professeur_id integer
);


ALTER TABLE public.reponseoffre OWNER TO postgres;

--
-- Name: reponseoffre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reponseoffre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reponseoffre_id_seq OWNER TO postgres;

--
-- Name: reponseoffre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reponseoffre_id_seq OWNED BY public.reponseoffre.id;


--
-- Name: retard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.retard (
    id integer NOT NULL,
    dateretard date,
    idanneescolaire integer,
    idetudiant integer
);


ALTER TABLE public.retard OWNER TO postgres;

--
-- Name: retard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.retard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retard_id_seq OWNER TO postgres;

--
-- Name: retard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.retard_id_seq OWNED BY public.retard.id;


--
-- Name: retardeleve; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.retardeleve (
    id integer NOT NULL,
    idetudiantecole integer,
    dateretard date,
    heuredebutcours time without time zone,
    heurearrive time without time zone,
    motif text
);


ALTER TABLE public.retardeleve OWNER TO postgres;

--
-- Name: retardeleve_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.retardeleve_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retardeleve_id_seq OWNER TO postgres;

--
-- Name: retardeleve_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.retardeleve_id_seq OWNED BY public.retardeleve.id;


--
-- Name: salaireprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaireprof (
    id integer NOT NULL,
    idecole integer,
    idecoleclasse integer,
    salaire numeric DEFAULT 0
);


ALTER TABLE public.salaireprof OWNER TO postgres;

--
-- Name: salaireprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salaireprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salaireprof_id_seq OWNER TO postgres;

--
-- Name: salaireprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salaireprof_id_seq OWNED BY public.salaireprof.id;


--
-- Name: semestre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.semestre (
    id bigint NOT NULL,
    semestre character varying(255),
    universite_id bigint
);


ALTER TABLE public.semestre OWNER TO postgres;

--
-- Name: semestre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.semestre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.semestre_id_seq OWNER TO postgres;

--
-- Name: semestre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.semestre_id_seq OWNED BY public.semestre.id;


--
-- Name: token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.token (
    id integer NOT NULL,
    token text NOT NULL,
    cle text NOT NULL,
    datecreation timestamp without time zone NOT NULL,
    dateexpiration timestamp without time zone NOT NULL
);


ALTER TABLE public.token OWNER TO postgres;

--
-- Name: token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_id_seq OWNER TO postgres;

--
-- Name: token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.token_id_seq OWNED BY public.token.id;


--
-- Name: trimestre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trimestre (
    id integer NOT NULL,
    idanneescolaire integer,
    idecole integer,
    nom text,
    debuttrimestre date,
    fintrimestre date
);


ALTER TABLE public.trimestre OWNER TO postgres;

--
-- Name: trimestre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trimestre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trimestre_id_seq OWNER TO postgres;

--
-- Name: trimestre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trimestre_id_seq OWNED BY public.trimestre.id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    types character varying(50)
);


ALTER TABLE public.types OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nom character varying(50),
    prenom character varying,
    adresse character varying,
    datenaissance date,
    adminnom character varying(50),
    email character varying(50),
    mdp character varying(50),
    profil_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: v_academyannee; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_academyannee AS
 SELECT row_number() OVER () AS row_num,
    academyprof.profid,
    academy.id AS academyid,
    academy.nom,
    academy.logo,
    anneescolaire.id AS idanneescolaire,
    anneescolaire.debutanneescolaire,
    anneescolaire.finanneescolaire
   FROM ((public.academyprof
     JOIN public.academy ON ((academyprof.academyid = academy.id)))
     JOIN public.anneescolaire ON ((anneescolaire.idecole = academy.id)));


ALTER TABLE public.v_academyannee OWNER TO postgres;

--
-- Name: v_academyprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_academyprof AS
 SELECT row_number() OVER () AS row_num,
    users.email,
    academyprof.id AS idacademyprof,
    academyprof.academyid,
    professeur.id AS profid,
    professeur.nomprenom,
    professeur.numtel,
    professeur.matricule,
    professeur.photo
   FROM ((public.academyprof
     JOIN public.professeur ON ((academyprof.profid = professeur.id)))
     JOIN public.users ON ((professeur.users_id = users.id)));


ALTER TABLE public.v_academyprof OWNER TO postgres;

--
-- Name: v_classeinecole; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_classeinecole AS
 SELECT row_number() OVER () AS row_num,
    ecoleclasse.idecole,
    ecoleclasse.id AS ecoleclasseid,
    classe.classe
   FROM (public.ecoleclasse
     JOIN public.classe ON ((classe.id = ecoleclasse.idclasse)));


ALTER TABLE public.v_classeinecole OWNER TO postgres;

--
-- Name: v_demandeajoutprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_demandeajoutprof AS
 SELECT row_number() OVER () AS row_num,
    demandeajoutprof.idprof,
    professeur.nomprenom,
    academy.id AS idacademy,
    users.email,
    academy.nom,
    academy.logo,
    demandeajoutprof.id AS iddemandeajout,
    demandeajoutprof.dateajout,
    demandeajoutprof.statut
   FROM ((((public.demandeajoutprof
     JOIN public.academy ON ((demandeajoutprof.idacademy = academy.id)))
     JOIN public.academyusers ON ((academy.id = academyusers.academy_id)))
     JOIN public.users ON ((academyusers.users_id = users.id)))
     JOIN public.professeur ON ((professeur.id = demandeajoutprof.idprof)));


ALTER TABLE public.v_demandeajoutprof OWNER TO postgres;

--
-- Name: v_demandeprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.v_demandeprof (
    row_num integer NOT NULL,
    adresse character varying(255),
    cv character varying(255),
    dateenvoye date,
    description character varying(255),
    descriptions character varying(255),
    academy_id integer,
    email character varying(255),
    iddemande integer,
    logo character varying(255),
    matiere character varying(255),
    niveau character varying(255),
    nom character varying(255),
    nomprenom character varying(255),
    numtel character varying(255),
    professeur_id integer,
    statut integer
);


ALTER TABLE public.v_demandeprof OWNER TO postgres;

--
-- Name: v_ecolageparannee; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_ecolageparannee AS
 SELECT etudiantecole.idanneescolaire,
    anneescolaire.debutanneescolaire,
    anneescolaire.finanneescolaire,
    sum(ficheecolage.frais) AS somme
   FROM ((public.ficheecolage
     JOIN public.etudiantecole ON ((ficheecolage.idetudiant = etudiantecole.id)))
     JOIN public.anneescolaire ON ((etudiantecole.idanneescolaire = anneescolaire.id)))
  GROUP BY etudiantecole.idanneescolaire, anneescolaire.debutanneescolaire, anneescolaire.finanneescolaire;


ALTER TABLE public.v_ecolageparannee OWNER TO postgres;

--
-- Name: v_ecoleclasse; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_ecoleclasse AS
 SELECT row_number() OVER () AS row_num,
    ecoleclasse.id AS ecoleclasseid,
    anneescolaire.id AS idannee,
    anneescolaire.debutanneescolaire,
    anneescolaire.finanneescolaire,
    academy.id AS idecole,
    academyusers.users_id AS iduser,
    academy.nom,
    academy.adresse,
    academy.description,
    classe.id AS idclasse,
    classe.classe,
    niveau.id AS idniveau,
    niveau.niveau
   FROM ((((((public.ecoleclasse
     JOIN public.classe ON ((ecoleclasse.idclasse = classe.id)))
     JOIN public.classeniveau ON ((classeniveau.idclasse = classe.id)))
     JOIN public.niveau ON ((classeniveau.idniveau = niveau.id)))
     JOIN public.academy ON ((ecoleclasse.idecole = academy.id)))
     JOIN public.anneescolaire ON ((anneescolaire.idecole = academy.id)))
     JOIN public.academyusers ON ((academyusers.academy_id = academy.id)));


ALTER TABLE public.v_ecoleclasse OWNER TO postgres;

--
-- Name: v_edtclasse; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_edtclasse AS
 SELECT row_number() OVER () AS row_num,
    edtclasse.id,
    edtclasse.ecoleclasse_id AS classeid,
    edtclasse.idanneescolaire,
    jours.jour,
    edtclasse.heuredebut,
    edtclasse.heurefin,
    matiere.matiere
   FROM ((public.edtclasse
     JOIN public.matiere ON ((edtclasse.matiere_id = matiere.id)))
     JOIN public.jours ON ((edtclasse.jourid = jours.id)));


ALTER TABLE public.v_edtclasse OWNER TO postgres;

--
-- Name: v_eleveecole; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_eleveecole AS
 SELECT row_number() OVER () AS row_num,
    eleveecole.prefixe,
    eleveecole.idecole,
    etudiant.id AS idetudiant,
    etudiant.nom,
    etudiant.prenom,
    etudiant.photo
   FROM (public.eleveecole
     JOIN public.etudiant ON ((eleveecole.idetudiant = etudiant.id)));


ALTER TABLE public.v_eleveecole OWNER TO postgres;

--
-- Name: v_etudiantecole; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_etudiantecole AS
 SELECT row_number() OVER () AS row_num,
    etudiantecole.id AS idetudiantecole,
    academy.id AS idacademy,
    academy.logo,
    academy.nom AS nomecole,
    etudiantecole.idecoleclasse,
    etudiantecole.idanneescolaire,
    anneescolaire.debutanneescolaire,
    anneescolaire.finanneescolaire,
    etudiantecole.idetudiant,
    etudiantecole.prefixe,
    etudiant.nom,
    etudiant.prenom,
    etudiant.datenaissance,
    etudiant.adresse,
    etudiant.email,
    etudiant.contact,
    etudiant.photo
   FROM (((public.etudiantecole
     JOIN public.etudiant ON ((etudiantecole.idetudiant = etudiant.id)))
     JOIN public.anneescolaire ON ((anneescolaire.id = etudiantecole.idanneescolaire)))
     JOIN public.academy ON ((anneescolaire.idecole = academy.id)));


ALTER TABLE public.v_etudiantecole OWNER TO postgres;

--
-- Name: v_fraisscolarite; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_fraisscolarite AS
 SELECT row_number() OVER () AS row_num,
    fraisdescolarite.id AS idfrais,
    fraisdescolarite.idecole,
    classe.classe,
    fraisdescolarite.frais
   FROM ((public.fraisdescolarite
     JOIN public.ecoleclasse ON ((fraisdescolarite.idecoleclasse = ecoleclasse.id)))
     JOIN public.classe ON ((ecoleclasse.idclasse = classe.id)));


ALTER TABLE public.v_fraisscolarite OWNER TO postgres;

--
-- Name: v_horaireprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_horaireprof AS
 SELECT row_number() OVER () AS row_num,
    professeur.id AS idprof,
    professeur.matricule,
    jours.id AS jourid,
    jours.jour,
    horaireprof.heuredebut,
    horaireprof.heurefin,
    horaireprof.idanneescolaire,
    horaireprof.academy,
    horaireprof.adresse,
    horaireprof.classe
   FROM ((public.horaireprof
     JOIN public.jours ON ((horaireprof.jourid = jours.id)))
     JOIN public.professeur ON ((professeur.id = horaireprof.profid)));


ALTER TABLE public.v_horaireprof OWNER TO postgres;

--
-- Name: v_infoetudiant; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_infoetudiant AS
 SELECT row_number() OVER () AS row_num,
    classe.classe,
    etudiantecole.idecoleclasse,
    etudiantecole.idanneescolaire,
    etudiantecole.id AS idetudiant,
    etudiantecole.prefixe,
    etudiant.nom,
    etudiant.prenom,
    etudiant.datenaissance,
    etudiant.adresse,
    etudiant.email,
    etudiant.contact,
    etudiant.photo
   FROM (((public.etudiantecole
     JOIN public.etudiant ON ((etudiantecole.idetudiant = etudiant.id)))
     JOIN public.ecoleclasse ON ((ecoleclasse.id = etudiantecole.idecoleclasse)))
     JOIN public.classe ON ((ecoleclasse.idclasse = classe.id)));


ALTER TABLE public.v_infoetudiant OWNER TO postgres;

--
-- Name: v_infoprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_infoprof AS
 SELECT row_number() OVER () AS row_num,
    professeur.id AS idprofesseur,
    professeur.photo,
    professeur.cv,
    professeur.nomprenom,
    professeur.numtel,
    professeur.matricule,
    users.email
   FROM (public.professeur
     JOIN public.users ON ((professeur.users_id = users.id)));


ALTER TABLE public.v_infoprof OWNER TO postgres;

--
-- Name: v_matiereandprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_matiereandprof AS
 SELECT row_number() OVER () AS row_num,
    matiereclasse.id,
    matiereclasse.ecoleclasse_id,
    matiere.matiere,
    professeur.nomprenom,
    matiereclasse.coefficient,
    matiereclasse.idanneescolaire
   FROM ((public.matiereclasse
     JOIN public.matiere ON ((matiereclasse.matiere_id = matiere.id)))
     JOIN public.professeur ON ((matiereclasse.professeur_id = professeur.id)));


ALTER TABLE public.v_matiereandprof OWNER TO postgres;

--
-- Name: v_matiereclasse; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_matiereclasse AS
 SELECT row_number() OVER () AS row_num,
    matiereclasse.ecoleclasse_id AS ecoleclasseid,
    matiereclasse.id AS idmatiereclasse,
    matiereclasse.idanneescolaire,
    matiereclasse.professeur_id AS idprof,
    professeur.nomprenom,
    professeur.numtel,
    professeur.photo,
    classe.id AS idclasse,
    classe.classe,
    matiereclasse.matiere_id AS idmatiere,
    matiere.matiere,
    matiereclasse.coefficient
   FROM ((((public.matiereclasse
     JOIN public.matiere ON ((matiereclasse.matiere_id = matiere.id)))
     JOIN public.ecoleclasse ON ((matiereclasse.ecoleclasse_id = ecoleclasse.id)))
     JOIN public.classe ON ((ecoleclasse.idclasse = classe.id)))
     JOIN public.professeur ON ((professeur.id = matiereclasse.professeur_id)));


ALTER TABLE public.v_matiereclasse OWNER TO postgres;

--
-- Name: v_month; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_month AS
 SELECT row_number() OVER () AS row_num,
    a.id,
    to_char(gs.gs, 'TMMonth'::text) AS mois
   FROM public.anneescolaire a,
    LATERAL generate_series((a.debutanneescolaire)::timestamp with time zone, (a.finanneescolaire)::timestamp with time zone, '1 mon'::interval) gs(gs)
  ORDER BY a.id, gs.gs;


ALTER TABLE public.v_month OWNER TO postgres;

--
-- Name: v_moyenne; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_moyenne AS
 SELECT row_number() OVER () AS row_num,
    classe.classe,
    trimestre.idanneescolaire,
    avg(noteetudiantecole.notes) AS moyenne_annuelle_classe
   FROM ((((public.noteetudiantecole
     JOIN public.etudiantecole ON ((etudiantecole.id = noteetudiantecole.idetudiant)))
     JOIN public.ecoleclasse ON ((ecoleclasse.id = etudiantecole.idecoleclasse)))
     JOIN public.classe ON ((ecoleclasse.idclasse = classe.id)))
     JOIN public.trimestre ON ((noteetudiantecole.idtrimestre = trimestre.id)))
  GROUP BY classe.classe, trimestre.idanneescolaire;


ALTER TABLE public.v_moyenne OWNER TO postgres;

--
-- Name: v_noteparannee; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_noteparannee AS
 SELECT row_number() OVER () AS row_num,
    noteetudiantecole.id AS idnoteetudiantecole,
    matiereclasse.id AS idmatiereclasse,
    trimestre.idanneescolaire,
    noteetudiantecole.idetudiant,
    etudiant.nom AS nometudiant,
    etudiant.prenom,
    noteetudiantecole.idtrimestre,
    trimestre.nom,
    matiere.matiere,
    matiereclasse.coefficient,
    noteetudiantecole.notes
   FROM (((((public.noteetudiantecole
     JOIN public.trimestre ON ((noteetudiantecole.idtrimestre = trimestre.id)))
     JOIN public.matiereclasse ON ((matiereclasse.id = noteetudiantecole.idmatiereclasse)))
     JOIN public.matiere ON ((matiereclasse.matiere_id = matiere.id)))
     JOIN public.etudiantecole ON ((etudiantecole.id = noteetudiantecole.idetudiant)))
     JOIN public.etudiant ON ((etudiant.id = etudiantecole.idetudiant)));


ALTER TABLE public.v_noteparannee OWNER TO postgres;

--
-- Name: v_parentetudiant; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_parentetudiant AS
 SELECT row_number() OVER () AS row_num,
    users.email AS parentemail,
    parentetudiant.idparent,
    parentetudiant.idetudiant,
    etudiant.nom,
    etudiant.prenom,
    etudiant.photo
   FROM ((public.parentetudiant
     JOIN public.etudiant ON ((parentetudiant.idetudiant = etudiant.id)))
     JOIN public.users ON ((parentetudiant.idparent = users.id)));


ALTER TABLE public.v_parentetudiant OWNER TO postgres;

--
-- Name: v_profilprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_profilprof AS
 SELECT row_number() OVER () AS row_num,
    users.id AS iduser,
    professeur.id AS idprofesseur,
    users.nom,
    users.prenom,
    users.datenaissance,
    users.adresse,
    users.email,
    users.mdp,
    professeur.nomprenom,
    professeur.numtel,
    professeur.cv,
    professeur.photo,
    professeur.matricule,
    users.adminnom
   FROM (public.users
     JOIN public.professeur ON ((professeur.users_id = users.id)));


ALTER TABLE public.v_profilprof OWNER TO postgres;

--
-- Name: v_profnotinacademy; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_profnotinacademy AS
 SELECT row_number() OVER () AS row_num,
    critereprof.matiere,
    professeur.photo,
    critereprof.classe,
    users.email,
    academyprof.academyid,
    professeur.id AS idprof,
    professeur.matricule,
    professeur.nomprenom,
    professeur.numtel,
    professeur.cv
   FROM (((public.professeur
     LEFT JOIN public.academyprof ON ((academyprof.profid = professeur.id)))
     JOIN public.users ON ((professeur.users_id = users.id)))
     JOIN public.critereprof ON ((critereprof.idprof = professeur.id)))
  WHERE (academyprof.academyid IS NULL);


ALTER TABLE public.v_profnotinacademy OWNER TO postgres;

--
-- Name: v_reponseoffre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.v_reponseoffre (
    row_num integer NOT NULL,
    dateenvoye date,
    descriptions character varying(255),
    id integer,
    nom character varying(255),
    poste character varying(255),
    professeur_id integer
);


ALTER TABLE public.v_reponseoffre OWNER TO postgres;

--
-- Name: v_salaireparannee; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_salaireparannee AS
 SELECT row_number() OVER () AS row_num,
    horaireprof.idanneescolaire,
    anneescolaire.debutanneescolaire,
    anneescolaire.finanneescolaire,
    ecoleclasse.id,
    academy.id AS idacademy,
    horaireprof.profid,
    count(*) AS nombre_de_fois,
    floor(sum((date_part('epoch'::text, (horaireprof.heurefin - horaireprof.heuredebut)) / (3600)::double precision))) AS total_heures,
    salaireprof.salaire,
    ((date_part('year'::text, age((anneescolaire.finanneescolaire)::timestamp with time zone, (anneescolaire.debutanneescolaire)::timestamp with time zone)) * (12)::double precision) + date_part('month'::text, age((anneescolaire.finanneescolaire)::timestamp with time zone, (anneescolaire.debutanneescolaire)::timestamp with time zone))) AS difference_mois
   FROM (((((public.horaireprof
     JOIN public.classe ON ((horaireprof.classe = (classe.classe)::text)))
     JOIN public.ecoleclasse ON ((ecoleclasse.idclasse = classe.id)))
     JOIN public.academy ON ((horaireprof.academy = (academy.nom)::text)))
     JOIN public.salaireprof ON ((salaireprof.idecoleclasse = ecoleclasse.id)))
     JOIN public.anneescolaire ON ((anneescolaire.id = horaireprof.idanneescolaire)))
  GROUP BY horaireprof.profid, horaireprof.academy, ecoleclasse.id, academy.id, salaireprof.salaire, horaireprof.idanneescolaire, anneescolaire.debutanneescolaire, anneescolaire.finanneescolaire;


ALTER TABLE public.v_salaireparannee OWNER TO postgres;

--
-- Name: v_totalsalairepannee; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_totalsalairepannee AS
 SELECT row_number() OVER () AS row_num,
    v_salaireparannee.idanneescolaire,
    v_salaireparannee.debutanneescolaire,
    v_salaireparannee.finanneescolaire,
    v_salaireparannee.profid,
    sum((((v_salaireparannee.total_heures * (v_salaireparannee.salaire)::double precision) * (4)::double precision) * v_salaireparannee.difference_mois)) AS total_final
   FROM public.v_salaireparannee
  GROUP BY v_salaireparannee.idanneescolaire, v_salaireparannee.profid, v_salaireparannee.debutanneescolaire, v_salaireparannee.finanneescolaire;


ALTER TABLE public.v_totalsalairepannee OWNER TO postgres;

--
-- Name: v_salaireannuel; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_salaireannuel AS
 SELECT row_number() OVER () AS row_num,
    v_totalsalairepannee.idanneescolaire,
    v_totalsalairepannee.debutanneescolaire,
    v_totalsalairepannee.finanneescolaire,
    sum(v_totalsalairepannee.total_final) AS sum
   FROM public.v_totalsalairepannee
  GROUP BY v_totalsalairepannee.idanneescolaire, v_totalsalairepannee.debutanneescolaire, v_totalsalairepannee.finanneescolaire;


ALTER TABLE public.v_salaireannuel OWNER TO postgres;

--
-- Name: v_salaireprof; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_salaireprof AS
 SELECT row_number() OVER () AS row_num,
    salaireprof.id AS idsalaireprof,
    salaireprof.idecole,
    classe.classe,
    salaireprof.salaire
   FROM ((public.salaireprof
     JOIN public.ecoleclasse ON ((salaireprof.idecoleclasse = ecoleclasse.id)))
     JOIN public.classe ON ((ecoleclasse.idclasse = classe.id)));


ALTER TABLE public.v_salaireprof OWNER TO postgres;

--
-- Name: v_voirdemande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.v_voirdemande (
    row_num integer NOT NULL,
    cv character varying(255),
    dateenvoye date,
    demandeid integer,
    descriptions character varying(255),
    ecole_id integer,
    email character varying(255),
    matiere character varying(255),
    niveau character varying(255),
    nomprenom character varying(255),
    professeur_id integer
);


ALTER TABLE public.v_voirdemande OWNER TO postgres;

--
-- Name: verifemail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verifemail (
    id integer NOT NULL,
    email character varying(50),
    token text
);


ALTER TABLE public.verifemail OWNER TO postgres;

--
-- Name: verifemail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.verifemail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.verifemail_id_seq OWNER TO postgres;

--
-- Name: verifemail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.verifemail_id_seq OWNED BY public.verifemail.id;


--
-- Name: absence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absence ALTER COLUMN id SET DEFAULT nextval('public.absence_id_seq'::regclass);


--
-- Name: absenceeleve id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absenceeleve ALTER COLUMN id SET DEFAULT nextval('public.absenceeleve_id_seq'::regclass);


--
-- Name: academy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academy ALTER COLUMN id SET DEFAULT nextval('public.academy_id_seq'::regclass);


--
-- Name: academyprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyprof ALTER COLUMN id SET DEFAULT nextval('public.academyprof_id_seq'::regclass);


--
-- Name: academyusers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyusers ALTER COLUMN id SET DEFAULT nextval('public.academyusers_id_seq'::regclass);


--
-- Name: anneescolaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anneescolaire ALTER COLUMN id SET DEFAULT nextval('public.anneescolaire_id_seq'::regclass);


--
-- Name: calendrierscolaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendrierscolaire ALTER COLUMN id SET DEFAULT nextval('public.calendrierscolaire_id_seq'::regclass);


--
-- Name: carneteleve id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carneteleve ALTER COLUMN id SET DEFAULT nextval('public.carneteleve_id_seq'::regclass);


--
-- Name: carnettout id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carnettout ALTER COLUMN id SET DEFAULT nextval('public.carnettout_id_seq'::regclass);


--
-- Name: classe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classe ALTER COLUMN id SET DEFAULT nextval('public.classe_id_seq'::regclass);


--
-- Name: classeniveau id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classeniveau ALTER COLUMN id SET DEFAULT nextval('public.classeniveau_id_seq'::regclass);


--
-- Name: commentaires id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaires ALTER COLUMN id SET DEFAULT nextval('public.commentaires_id_seq'::regclass);


--
-- Name: critereprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.critereprof ALTER COLUMN id SET DEFAULT nextval('public.critereprof_id_seq'::regclass);


--
-- Name: csvmatiereclasse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.csvmatiereclasse ALTER COLUMN id SET DEFAULT nextval('public.csvmatiereclasse_id_seq'::regclass);


--
-- Name: csvnoteeleveecole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.csvnoteeleveecole ALTER COLUMN id SET DEFAULT nextval('public.csvnoteeleveecole_id_seq'::regclass);


--
-- Name: demandeajoutprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandeajoutprof ALTER COLUMN id SET DEFAULT nextval('public.demandeajoutprof_id_seq'::regclass);


--
-- Name: demandeprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandeprof ALTER COLUMN id SET DEFAULT nextval('public.demandeprof_id_seq'::regclass);


--
-- Name: ecoleclasse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ecoleclasse ALTER COLUMN id SET DEFAULT nextval('public.ecoleclasse_id_seq'::regclass);


--
-- Name: edtclasse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edtclasse ALTER COLUMN id SET DEFAULT nextval('public.edtclasse_id_seq'::regclass);


--
-- Name: eleveecole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eleveecole ALTER COLUMN id SET DEFAULT nextval('public.eleveecole_id_seq'::regclass);


--
-- Name: etudiant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiant ALTER COLUMN id SET DEFAULT nextval('public.etudiant_id_seq'::regclass);


--
-- Name: etudiantecole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiantecole ALTER COLUMN id SET DEFAULT nextval('public.etudiantecole_id_seq'::regclass);


--
-- Name: ficheecolage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficheecolage ALTER COLUMN id SET DEFAULT nextval('public.ficheecolage_id_seq'::regclass);


--
-- Name: fraisdescolarite id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fraisdescolarite ALTER COLUMN id SET DEFAULT nextval('public.fraisdescolarite_id_seq'::regclass);


--
-- Name: horaireprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaireprof ALTER COLUMN id SET DEFAULT nextval('public.horaireprof_id_seq'::regclass);


--
-- Name: jours id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jours ALTER COLUMN id SET DEFAULT nextval('public.jours_id_seq'::regclass);


--
-- Name: matiere id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiere ALTER COLUMN id SET DEFAULT nextval('public.matiere_id_seq'::regclass);


--
-- Name: matiereclasse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiereclasse ALTER COLUMN id SET DEFAULT nextval('public.matiereclasse_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: niveau id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.niveau ALTER COLUMN id SET DEFAULT nextval('public.niveau_id_seq'::regclass);


--
-- Name: noteetudiantecole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noteetudiantecole ALTER COLUMN id SET DEFAULT nextval('public.noteetudiantecole_id_seq'::regclass);


--
-- Name: offreecole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offreecole ALTER COLUMN id SET DEFAULT nextval('public.offreecole_id_seq'::regclass);


--
-- Name: parentetudiant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parentetudiant ALTER COLUMN id SET DEFAULT nextval('public.parentetudiant_id_seq'::regclass);


--
-- Name: professeur id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professeur ALTER COLUMN id SET DEFAULT nextval('public.professeur_id_seq'::regclass);


--
-- Name: profil id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profil ALTER COLUMN id SET DEFAULT nextval('public.profil_id_seq'::regclass);


--
-- Name: programmescolaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programmescolaire ALTER COLUMN id SET DEFAULT nextval('public.programmescolaire_id_seq'::regclass);


--
-- Name: reponseoffre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponseoffre ALTER COLUMN id SET DEFAULT nextval('public.reponseoffre_id_seq'::regclass);


--
-- Name: retard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retard ALTER COLUMN id SET DEFAULT nextval('public.retard_id_seq'::regclass);


--
-- Name: retardeleve id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retardeleve ALTER COLUMN id SET DEFAULT nextval('public.retardeleve_id_seq'::regclass);


--
-- Name: salaireprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaireprof ALTER COLUMN id SET DEFAULT nextval('public.salaireprof_id_seq'::regclass);


--
-- Name: semestre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semestre ALTER COLUMN id SET DEFAULT nextval('public.semestre_id_seq'::regclass);


--
-- Name: token id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token ALTER COLUMN id SET DEFAULT nextval('public.token_id_seq'::regclass);


--
-- Name: trimestre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trimestre ALTER COLUMN id SET DEFAULT nextval('public.trimestre_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: verifemail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifemail ALTER COLUMN id SET DEFAULT nextval('public.verifemail_id_seq'::regclass);


--
-- Data for Name: absence; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: absenceeleve; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.absenceeleve VALUES (1, 1, '2024-10-02', '2024-10-03', ' Mon enfant a été absente pour des raisons familiales exceptionnelles.', '2024-11-02', 0);
INSERT INTO public.absenceeleve VALUES (2, 1, '2024-10-10', '2024-10-15', 'Mon enfant a été absente en raison d une maladie nécessitant du repos et un suivi médical.', '2024-11-02', 0);
INSERT INTO public.absenceeleve VALUES (3, 1, '2024-12-15', '2024-12-16', 'Mon enfant a été absent à cause d un maux de ventre', '2024-11-02', 0);


--
-- Data for Name: academy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.academy VALUES (1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Une école catholique', '0341245678', 'lyceesaintpierremalaza@gmail.com', '1990-04-12', '2024-11-02', 'LSPM', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/48f7f182-f561-41b9-b150-21f3359104a0-creation-logo-ecole-education_586739-4446.avif?alt=media', 1, NULL);


--
-- Data for Name: academyprof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.academyprof VALUES (1, 1, 1);
INSERT INTO public.academyprof VALUES (2, 1, 2);
INSERT INTO public.academyprof VALUES (3, 1, 6);


--
-- Data for Name: academyusers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.academyusers VALUES (1, 1, 1);


--
-- Data for Name: anneescolaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.anneescolaire VALUES (1, 1, '2024-10-03', '2025-03-15');


--
-- Data for Name: calendrierscolaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.calendrierscolaire VALUES (41, 1, 'Examen', 'Examen de mathematiques pour la classe de 3eme', '2024-05-10', '2024-05-10', 0);
INSERT INTO public.calendrierscolaire VALUES (42, 1, 'Vacance', 'Vacances de printemps pour tous les eleves', '2024-04-15', '2024-04-29', 0);
INSERT INTO public.calendrierscolaire VALUES (43, 1, 'Jour férie', 'Fete de la musique, pas de cours', '2024-06-21', '2024-06-21', 0);
INSERT INTO public.calendrierscolaire VALUES (44, 1, 'Evenement', 'Journee portes ouvertes ecole', '2024-03-15', '2024-03-15', 0);
INSERT INTO public.calendrierscolaire VALUES (45, 1, 'Vaccance', 'Vacances de Noel', '2024-12-20', '2025-01-05', 0);
INSERT INTO public.calendrierscolaire VALUES (46, 1, 'Evenement', 'Formation des enseignants sur les nouvelles methodes pedagogiques', '2024-09-01', '2024-09-01', 1);
INSERT INTO public.calendrierscolaire VALUES (48, 1, 'Jour férie', 'Reunion des administrateurs pour planifier annee scolaire', '2024-08-30', '2024-08-30', 1);
INSERT INTO public.calendrierscolaire VALUES (49, 1, 'Evenement', 'Audit de securite des locaux', '2024-11-01', '2024-11-01', 1);
INSERT INTO public.calendrierscolaire VALUES (50, 1, 'Examen', 'Conseil de classe pour faire le bilan des resultats', '2024-07-10', '2024-07-10', 1);


--
-- Data for Name: carneteleve; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carneteleve VALUES (1, 1, '2024-11-02', 'Madame, Monsieur,
Nous souhaitons vous informer que nous aimerions vous rencontrer pour discuter au sujet de votre enfant ici le 10 Novembre à 10 heures au bureau du directeur.', 1);


--
-- Data for Name: carnettout; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carnettout VALUES (1, 7, 1, '2024-11-02 00:00:00', 'Journée de la Découverte des Talents : Une journée dédiée aux performances artistiques et sportives des élèves, avec des spectacles, des démonstrations et des expositions de leurs créations.');
INSERT INTO public.carnettout VALUES (2, 7, 1, '2024-11-02 00:00:00', 'Semaine de la Lecture et de la Culture : Une série d activités visant à promouvoir la lecture, avec des ateliers d écriture, des rencontres avec des auteurs et des sessions de lecture.');
INSERT INTO public.carnettout VALUES (3, 7, 1, '2024-11-02 00:00:00', 'Forum des Métiers et de l Orientation : Une journée d information pour les élèves et les parents sur les métiers, les filières et les possibilités d orientation, avec des interventions de professionnels et des anciens élèves.');
INSERT INTO public.carnettout VALUES (4, 7, 1, '2024-11-02 00:00:00', E'Festival de l''Ecologie et du Developpement Durable : Un evenement pour sensibiliser les eleves aux enjeux ecologiques, avec des ateliers, des conferences et des projets sur le developpement durable.');

--
-- Data for Name: classe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.classe VALUES (1, 'Classe1');
INSERT INTO public.classe VALUES (2, '12Šme');
INSERT INTO public.classe VALUES (3, '11Šme');
INSERT INTO public.classe VALUES (4, '10Šme');
INSERT INTO public.classe VALUES (5, '9Šme');
INSERT INTO public.classe VALUES (6, '8Šme');
INSERT INTO public.classe VALUES (7, '7Šme');
INSERT INTO public.classe VALUES (8, '6Šme');
INSERT INTO public.classe VALUES (9, '5Šme');
INSERT INTO public.classe VALUES (10, '4Šme');
INSERT INTO public.classe VALUES (11, '3Šme');
INSERT INTO public.classe VALUES (12, '2nde');
INSERT INTO public.classe VALUES (13, '1ere S');
INSERT INTO public.classe VALUES (14, '1ere L');
INSERT INTO public.classe VALUES (15, 'Terminale S');
INSERT INTO public.classe VALUES (16, 'Terminale L');


--
-- Data for Name: classeniveau; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.classeniveau VALUES (1, 1, 1);
INSERT INTO public.classeniveau VALUES (2, 1, 2);
INSERT INTO public.classeniveau VALUES (3, 1, 3);
INSERT INTO public.classeniveau VALUES (4, 1, 4);
INSERT INTO public.classeniveau VALUES (5, 1, 5);
INSERT INTO public.classeniveau VALUES (6, 1, 6);
INSERT INTO public.classeniveau VALUES (7, 1, 7);
INSERT INTO public.classeniveau VALUES (8, 2, 8);
INSERT INTO public.classeniveau VALUES (9, 2, 9);
INSERT INTO public.classeniveau VALUES (10, 2, 10);
INSERT INTO public.classeniveau VALUES (11, 2, 11);
INSERT INTO public.classeniveau VALUES (12, 3, 12);
INSERT INTO public.classeniveau VALUES (13, 3, 13);
INSERT INTO public.classeniveau VALUES (14, 3, 14);
INSERT INTO public.classeniveau VALUES (15, 3, 15);
INSERT INTO public.classeniveau VALUES (16, 3, 16);


--
-- Data for Name: commentaires; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commentaires VALUES (4, 17, 11, 'RAJAONARIVONY', 'Olivarilala', 'Comment la déforestation contribue-t-elle au changement climatique ?', '2024-11-02 18:23:15.655212', NULL);
INSERT INTO public.commentaires VALUES (5, 17, 3, 'ANDRIAMALALA', 'Fanantenana', 'À cause des activités humaines, comme la pollution et la déforestation.', '2024-11-02 18:23:24.732027', 4);
INSERT INTO public.commentaires VALUES (6, 17, 11, 'RAJAONARIVONY', 'Olivarilala', 'Comment la déforestation contribue-t-elle au changement climatique ?', '2024-11-02 18:23:39.127318', 5);
INSERT INTO public.commentaires VALUES (7, 17, 12, 'RABE', 'Gerard', 'Quel est le lien entre le changement climatique et les catastrophes naturelles ?', '2024-11-02 18:25:36.74377', NULL);
INSERT INTO public.commentaires VALUES (8, 17, 3, 'ANDRIAMALALA', 'Fanantenana', 'Le changement climatique augmente la fréquence et l intensité de certaines catastrophes naturelles, comme les inondations, les sécheresses, les vagues de chaleur et les tempêtes, rendant ces événements plus graves et plus fréquents.', '2024-11-02 18:25:51.667617', 7);
INSERT INTO public.commentaires VALUES (9, 17, 12, 'RABE', 'Gerard', 'Je comprends mieux merci', '2024-11-02 18:26:09.770413', 8);
INSERT INTO public.commentaires VALUES (10, 17, 3, 'ANDRIAMALALA', 'Fanantenana', 'Le changement climatique augmente la fréquence et l intensité de certaines catastrophes naturelles, comme les inondations, les sécheresses, les vagues de chaleur et les tempêtes, rendant ces événements plus graves et plus fréquents.', '2024-11-02 18:27:24.941096', 6);


--
-- Data for Name: critereprof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.critereprof VALUES (1, 1, 'Histoire,Mathematique', '5ème, 4ème, 3ème');
INSERT INTO public.critereprof VALUES (2, 2, 'Anglais', '2nde, 3ème, 4ème, 5ème');
INSERT INTO public.critereprof VALUES (3, 3, 'Français', '8ème, 9ème, 7ème');
INSERT INTO public.critereprof VALUES (4, 4, 'Physique-chimie,Mathematique', '1ere S, Terminale S, 2nde');
INSERT INTO public.critereprof VALUES (5, 5, 'Malagasy,Français,Anglais', '5ème, 4ème, 3ème');
INSERT INTO public.critereprof VALUES (6, 6, 'Philosophie,Malagasy', '1ere S, 1ere L, Terminale S, Terminale L');
INSERT INTO public.critereprof VALUES (7, 7, 'Mathematiques, Physique-chimie', '5ème, 6ème, 3ème');
INSERT INTO public.critereprof VALUES (8, 8, 'Francais,Anglais,Malagasy', 'Maternelle, 11ème, 12ème, 10ème');
INSERT INTO public.critereprof VALUES (9, 9, 'Philosophie,Français', '1ere L, Terminale L');
INSERT INTO public.critereprof VALUES (10, 1, 'Philosophie', '1ere S, Terminale S');


--
-- Data for Name: csvmatiereclasse; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: csvnoteeleveecole; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: demandeajoutprof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.demandeajoutprof VALUES (1, 1, 1, '2024-11-02', 1);
INSERT INTO public.demandeajoutprof VALUES (2, 1, 2, '2024-11-02', 1);
INSERT INTO public.demandeajoutprof VALUES (3, 1, 5, '2024-11-02', 0);
INSERT INTO public.demandeajoutprof VALUES (4, 1, 6, '2024-11-02', 1);


--
-- Data for Name: demandeprof; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: ecoleclasse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ecoleclasse VALUES (1, 1, 1);
INSERT INTO public.ecoleclasse VALUES (2, 1, 2);
INSERT INTO public.ecoleclasse VALUES (3, 1, 3);
INSERT INTO public.ecoleclasse VALUES (4, 1, 4);
INSERT INTO public.ecoleclasse VALUES (5, 1, 5);
INSERT INTO public.ecoleclasse VALUES (6, 1, 6);
INSERT INTO public.ecoleclasse VALUES (7, 1, 7);
INSERT INTO public.ecoleclasse VALUES (8, 1, 8);
INSERT INTO public.ecoleclasse VALUES (9, 1, 9);
INSERT INTO public.ecoleclasse VALUES (10, 1, 10);
INSERT INTO public.ecoleclasse VALUES (11, 1, 11);
INSERT INTO public.ecoleclasse VALUES (12, 1, 12);


--
-- Data for Name: edtclasse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.edtclasse VALUES (1, 7, 7, 1, '13:59:59', '15:29:59', 1);
INSERT INTO public.edtclasse VALUES (2, 7, 4, 1, '07:00:00', '09:00:00', 1);
INSERT INTO public.edtclasse VALUES (3, 7, 3, 1, '16:00:00', '16:59:59', 1);
INSERT INTO public.edtclasse VALUES (4, 7, 1, 1, '10:00:00', '12:00:00', 1);
INSERT INTO public.edtclasse VALUES (5, 7, 8, 2, '16:00:00', '16:59:59', 1);
INSERT INTO public.edtclasse VALUES (6, 7, 7, 2, '10:00:00', '12:00:00', 1);
INSERT INTO public.edtclasse VALUES (7, 7, 1, 2, '07:00:00', '09:00:00', 1);
INSERT INTO public.edtclasse VALUES (8, 7, 1, 2, '13:59:59', '15:29:59', 1);
INSERT INTO public.edtclasse VALUES (9, 7, 8, 3, '16:00:00', '16:59:59', 1);
INSERT INTO public.edtclasse VALUES (10, 7, 6, 3, '07:00:00', '09:00:00', 1);
INSERT INTO public.edtclasse VALUES (11, 7, 3, 3, '10:00:00', '12:00:00', 1);
INSERT INTO public.edtclasse VALUES (12, 7, 2, 3, '13:59:59', '15:29:59', 1);
INSERT INTO public.edtclasse VALUES (13, 7, 4, 4, '13:59:59', '15:29:59', 1);
INSERT INTO public.edtclasse VALUES (14, 7, 3, 4, '07:00:00', '09:00:00', 1);
INSERT INTO public.edtclasse VALUES (15, 7, 2, 4, '10:00:00', '12:00:00', 1);
INSERT INTO public.edtclasse VALUES (16, 7, 1, 4, '16:00:00', '16:59:59', 1);
INSERT INTO public.edtclasse VALUES (17, 7, 8, 5, '16:00:00', '16:59:59', 1);
INSERT INTO public.edtclasse VALUES (18, 7, 7, 5, '07:00:00', '09:00:00', 1);
INSERT INTO public.edtclasse VALUES (19, 7, 6, 5, '13:59:59', '15:29:59', 1);
INSERT INTO public.edtclasse VALUES (20, 7, 5, 5, '10:00:00', '12:00:00', 1);


--
-- Data for Name: eleveecole; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.eleveecole VALUES (1, 1, 1, 'LSPM-RABENJA-1');
INSERT INTO public.eleveecole VALUES (2, 2, 1, 'LSPM-RANDRIA-2');
INSERT INTO public.eleveecole VALUES (3, 3, 1, 'LSPM-ANDRIANARIVELO-3');
INSERT INTO public.eleveecole VALUES (4, 4, 1, 'LSPM-MIANDRISON-4');
INSERT INTO public.eleveecole VALUES (5, 5, 1, 'LSPM-RABEMANANTSOA-5');


--
-- Data for Name: etudiant; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.etudiant (id, nom, prenom) VALUES
(1, 'ETU001', NULL),
(2, 'ETU002', NULL),
(3, 'ETU003', NULL),
(4, 'ETU004', NULL),
(5, 'ETU005', NULL);


--
-- Data for Name: etudiantecole; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.etudiantecole (id, idecoleclasse, idanneescolaire, idetudiant, prefixe) VALUES
(1, 1, 1, 1, NULL),
(2, 1, 1, 2, NULL),
(3, 1, 1, 3, NULL),
(4, 1, 1, 4, NULL),
(5, 1, 1, 5, NULL);


--
-- Data for Name: ficheecolage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ficheecolage VALUES (3, 1, 'Décembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (4, 1, 'Janvier', 0, 0);
INSERT INTO public.ficheecolage VALUES (5, 1, 'Février', 0, 0);
INSERT INTO public.ficheecolage VALUES (6, 1, 'Mars', 0, 0);
INSERT INTO public.ficheecolage VALUES (7, 2, 'Octobre', 0, 0);
INSERT INTO public.ficheecolage VALUES (8, 2, 'Novembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (9, 2, 'Décembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (10, 2, 'Janvier', 0, 0);
INSERT INTO public.ficheecolage VALUES (11, 2, 'Février', 0, 0);
INSERT INTO public.ficheecolage VALUES (12, 2, 'Mars', 0, 0);
INSERT INTO public.ficheecolage VALUES (13, 3, 'Octobre', 0, 0);
INSERT INTO public.ficheecolage VALUES (14, 3, 'Novembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (15, 3, 'Décembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (16, 3, 'Janvier', 0, 0);
INSERT INTO public.ficheecolage VALUES (17, 3, 'Février', 0, 0);
INSERT INTO public.ficheecolage VALUES (18, 3, 'Mars', 0, 0);
INSERT INTO public.ficheecolage VALUES (19, 4, 'Octobre', 0, 0);
INSERT INTO public.ficheecolage VALUES (20, 4, 'Novembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (21, 4, 'Décembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (22, 4, 'Janvier', 0, 0);
INSERT INTO public.ficheecolage VALUES (23, 4, 'Février', 0, 0);
INSERT INTO public.ficheecolage VALUES (24, 4, 'Mars', 0, 0);
INSERT INTO public.ficheecolage VALUES (25, 5, 'Octobre', 0, 0);
INSERT INTO public.ficheecolage VALUES (26, 5, 'Novembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (27, 5, 'Décembre', 0, 0);
INSERT INTO public.ficheecolage VALUES (28, 5, 'Janvier', 0, 0);
INSERT INTO public.ficheecolage VALUES (29, 5, 'Février', 0, 0);
INSERT INTO public.ficheecolage VALUES (30, 5, 'Mars', 0, 0);
INSERT INTO public.ficheecolage VALUES (2, 1, 'Novembre', 23000, 1);
INSERT INTO public.ficheecolage VALUES (1, 1, 'Octobre', 23000, 1);


--
-- Data for Name: fraisdescolarite; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fraisdescolarite (id, idecole, idecoleclasse, frais) VALUES
(1, 1, 1, 3500000), -- Ecolage
(2, 1, 1, 550000),  -- Frais Generaux
(3, 1, 1, 100000),  -- Materiel
(4, 1, 1, 60000);   -- Assurance


--
-- Data for Name: horaireprof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.horaireprof VALUES (1, 1, 2, '13:59:59', '15:29:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (2, 1, 1, '07:00:00', '09:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (3, 1, 2, '07:00:00', '09:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (4, 1, 1, '13:59:59', '15:29:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (5, 2, 5, '16:00:00', '16:59:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (6, 1, 1, '10:00:00', '12:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (7, 2, 5, '10:00:00', '12:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (8, 2, 1, '16:00:00', '16:59:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (9, 2, 3, '10:00:00', '12:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (10, 2, 3, '16:00:00', '16:59:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (11, 1, 4, '16:00:00', '16:59:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (12, 1, 4, '13:59:59', '15:29:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (13, 2, 4, '07:00:00', '09:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (14, 1, 3, '13:59:59', '15:29:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (15, 1, 2, '10:00:00', '12:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (16, 2, 2, '16:00:00', '16:59:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (17, 2, 5, '13:59:59', '15:29:59', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (18, 1, 4, '10:00:00', '12:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (19, 1, 5, '07:00:00', '09:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');
INSERT INTO public.horaireprof VALUES (20, 2, 3, '07:00:00', '09:00:00', 1, 'Lycée Saint Pierre Malaza', 'Andoharanofotsy', 'Maternelle');


--
-- Data for Name: jours; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.jours VALUES (1, 'Lundi');
INSERT INTO public.jours VALUES (2, 'Mardi');
INSERT INTO public.jours VALUES (3, 'Mercredi');
INSERT INTO public.jours VALUES (4, 'Jeudi');
INSERT INTO public.jours VALUES (5, 'Vendredi');
INSERT INTO public.jours VALUES (6, 'Samedi');
INSERT INTO public.jours VALUES (7, 'Dimanche');


--
-- Data for Name: matiere; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.matiere VALUES (1, 'INF001');
INSERT INTO public.matiere VALUES (2, 'INF002');
INSERT INTO public.matiere VALUES (3, 'MAT101');
INSERT INTO public.matiere VALUES (4, 'MAT102');



--
-- Data for Name: matiereclasse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.matiereclasse (id, ecoleclasse_id, matiere_id, coefficient, professeur_id, idanneescolaire) VALUES
(1, 1, 1, 3, NULL, NULL), -- INF001
(2, 1, 2, 2, NULL, NULL), -- INF002
(3, 1, 3, 1, NULL, NULL), -- MAT101
(4, 1, 4, 1, NULL, NULL); -- MAT102


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.media VALUES (1, 7, 1, 'Photo de classe des Maternelles', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/ee9f3212-4055-46fc-8368-f89f9b8a7a90-6B-scaled.jpg?alt=media');
INSERT INTO public.media VALUES (2, 7, 1, 'Travail manuel de peinture', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/5933d007-38f2-4564-81cc-21dd92a20c4f-392dfb3bd5945fb3281bc9a07945a856.jpg?alt=media');
INSERT INTO public.media VALUES (3, 7, 1, 'Cours d informatique', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/463da899-baac-4c52-b9eb-0a9499186df6-Capture-2.jpg?alt=media');
INSERT INTO public.media VALUES (4, 7, 1, 'Journée carnaval du 23 Décembre', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/37682242-a62a-4cb8-9d95-ce116c8ca8e9-unnamed.jpg?alt=media');
INSERT INTO public.media VALUES (5, 7, 1, 'Salle de classe des maternelles', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/27a81f8f-ffa9-478e-9a5d-a0b6fc30d490-ecole-scolaire-collectivite-service-e1634810710566.jpg?alt=media');
INSERT INTO public.media VALUES (6, 7, 1, 'Cours de mathématiques', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/99c0cc63-b498-486a-ab88-357c070eeac1-professeur-des-ecoles.jpg?alt=media');


--
-- Data for Name: niveau; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.niveau VALUES (1, 'Primaire');
INSERT INTO public.niveau VALUES (2, 'CollŠge');
INSERT INTO public.niveau VALUES (3, 'Lycée');


--
-- Data for Name: noteetudiantecole; Type: TABLE DATA; Schema: public; Owner: postgres
--
-- INF001
INSERT INTO public.noteetudiantecole (id, idtrimestre, idmatiereclasse, idetudiant, notes) VALUES
(1, 1, 1, 1, 7),  -- ETU001
(2, 1, 1, 2, 5),  -- ETU002
(3, 1, 1, 3, 16), -- ETU003
(4, 1, 1, 4, 10),  -- ETU004
(5, 1, 1, 5, 20); -- ETU005

-- INF002
INSERT INTO public.noteetudiantecole (id, idtrimestre, idmatiereclasse, idetudiant, notes) VALUES
(6, 1, 2, 1, 8),
(7, 1, 2, 2, 3),
(8, 1, 2, 3, 14),
(9, 1, 2, 4, 7),
(10, 1, 2, 5, 15);

-- MAT101
INSERT INTO public.noteetudiantecole (id, idtrimestre, idmatiereclasse, idetudiant, notes) VALUES
(11, 1, 3, 1, 1),
(12, 1, 3, 2, 1),
(13, 1, 3, 3, 15),
(14, 1, 3, 4, 8),
(15, 1, 3, 5, 16);

-- MAT102
INSERT INTO public.noteetudiantecole (id, idtrimestre, idmatiereclasse, idetudiant, notes) VALUES
(16, 1, 4, 1, 12),
(17, 1, 4, 2, 4),
(18, 1, 4, 3, 12),
(19, 1, 4, 4, 7),
(20, 1, 4, 5, 16);



--
-- Data for Name: offreecole; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: parentetudiant; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parentetudiant VALUES (1, 1, 11);
INSERT INTO public.parentetudiant VALUES (2, 2, 11);
INSERT INTO public.parentetudiant VALUES (3, 3, 11);
INSERT INTO public.parentetudiant VALUES (4, 4, 12);
INSERT INTO public.parentetudiant VALUES (5, 5, 12);


--
-- Data for Name: professeur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.professeur VALUES (1, 2, 'RAKOTOMALALA Andriniaina', '0341245645', 'PF_AndriniainaAdmin2', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/5d9b0ac3-cff6-49a1-b254-0cf54919610f-depositphotos_128156098-stock-photo-african-man-with-no-expression.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/1d0de738-c8e8-4a84-976a-d65bbdf4702b-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (2, 3, 'ANDRIAMALALA Fanantenana', '0341623574', 'PF_FanantenanaAdmin3', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/56ccb359-7ed8-4bd3-b64c-f93dc0a1ac97-depositphotos_94278920-stock-photo-passport-picture-of-a-blonde.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/201821b1-8459-4f28-a59e-28963faf8b2f-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (3, 4, 'ANDRIAMAMONJISOA Alain', '0341256374', 'PF_AlainAdmin4', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/7d8e9891-9238-4d8a-abd9-e80ee907655d-198757009-passport-photo-of-serious-mexican-man-with-beard-and-black-hair-isolated-on-white-background-to-cut.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/16fc1c53-1ab4-4bf1-83aa-19b0fe883348-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (4, 5, 'RAKOTOMAMONJY Manovosoa', '0345639875', 'PF_ManovosoaAdmin5', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/437e93e6-1711-4d9f-8402-aa1744207fc9-depositphotos_661619094-stock-photo-passport-photo-serious-young-adult.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/7a69ac99-d754-4a47-99d4-2b7232356d65-depositphotos_662391610-stock-photo-face-smile-black-woman-studio.jpg?alt=media');
INSERT INTO public.professeur VALUES (5, 6, 'RAKOTOARISON Jonathan', '0347895124', 'PF_Jonathan6', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/d7abba5d-71eb-4e15-bf88-fd383df043ea-D196136-copie.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/73eccc9f-f568-494d-aa1d-5d9a44d9a4a2-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (6, 7, 'ANDRIAMANALY Pierre', '0341263547', 'PF_PierreAdmin7', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/9053160f-68b7-481c-b94a-563ac30e02f6-istockphoto-1069992524-612x612.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/b45326c8-25e6-4506-9e86-9e7f1148e16b-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (7, 8, 'MIANDRISON Hasinjo', '0341252147', 'PF_HasinjoAdmin8', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/ac62d8f9-8a33-4af6-a026-bff01200eab0-198757009-passport-photo-of-serious-mexican-man-with-beard-and-black-hair-isolated-on-white-background-to-cut.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/8fabc1dc-4a0c-4f9e-8db2-2efae8175076-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (8, 9, 'ANDRIAMANANTENA Liana', '0341245678', 'PF_LianaAdmin9', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/5dcd583f-c6ce-4171-b125-028339338ebb-istockphoto-1691969118-612x612.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/403b1419-0074-405c-af04-8055a1cd7883-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');
INSERT INTO public.professeur VALUES (9, 10, 'RANDRIAMAHAZO Navaloniaina', '0341256347', 'PF_NiainaAdmin10', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/b925e77e-9bb6-4253-a0bd-e77a53bb7ca4-198757009-passport-photo-of-serious-mexican-man-with-beard-and-black-hair-isolated-on-white-background-to-cut.jpg?alt=media', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/f4fd5673-cb07-4c7c-af78-aaf698d2c801-266-exemple-cv-gratuit-a-telecharger.pdf?alt=media');


--
-- Data for Name: profil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.profil VALUES (1, 'Ecole');
INSERT INTO public.profil VALUES (2, 'Universite');
INSERT INTO public.profil VALUES (3, 'Professeur');
INSERT INTO public.profil VALUES (4, 'Parent');
INSERT INTO public.profil VALUES (5, 'Eleve');


--
-- Data for Name: programmescolaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.programmescolaire VALUES (13, '2025-01-05', 3, 'Les Écosystemes et leurs Composantes', NULL, 0);
INSERT INTO public.programmescolaire VALUES (14, '2025-02-05', 3, 'Les Chaînes Alimentaires', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/0ecb523d-ef58-43c1-b471-6352432fa629-guide_histoire_6e.pdf?alt=media', 0);
INSERT INTO public.programmescolaire VALUES (15, '2025-03-05', 3, 'Les Cycles de la Vie', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/affc1c25-a44d-49b2-8c19-6b0c2fc561bc-guide_histoire_6e.pdf?alt=media', 0);
INSERT INTO public.programmescolaire VALUES (16, '2025-03-05', 3, 'Les Ressources Naturelles', NULL, 0);
INSERT INTO public.programmescolaire VALUES (17, '2024-11-02', 3, 'Les Changements Climatiques', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/d7b80a68-3a33-4883-ba62-677f9511f62d-guide_histoire_6e.pdf?alt=media', 1);
INSERT INTO public.programmescolaire VALUES (10, '2024-10-05', 3, 'La Cellule : Unite de Base de la Vie', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/d9cedd08-78eb-4e18-94bd-63b88ccd6295-guide_histoire_6e.pdf?alt=media', 1);
INSERT INTO public.programmescolaire VALUES (11, '2024-11-05', 3, 'Les Systèmes du Corps Humain', NULL, 1);
INSERT INTO public.programmescolaire VALUES (12, '2024-12-05', 3, 'La Diversite du Vivant', 'https://firebasestorage.googleapis.com/v0/b/stage-1b901.appspot.com/o/bc6c1e11-90f0-4937-996f-1a77f6c9c115-guide_histoire_6e.pdf?alt=media', 1);


--
-- Data for Name: reponseoffre; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: retard; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: retardeleve; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.retardeleve VALUES (1, 1, '2024-11-02', '08:00:00', '08:30:00', 'Problème de transport.');
INSERT INTO public.retardeleve VALUES (2, 1, '2024-11-02', '08:00:00', '09:30:00', 'Rendez-vous médical imprévu.');


--
-- Data for Name: salaireprof; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: semestre; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: token; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.token VALUES (1, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDUzMjgzNSwiZXhwIjoxNzMwNTQzNjM1fQ.JrYv5pQONnnq8SgDPZE0cWKepDKv_WBFlvaXv6CsA4-inJPBCTpsoMQmqTCLPxiMR6mK9LCpxTBCRceF5XeMSA', '+OAticMaNfiBjEUBsv7/TN7kKTjUiI7D9Ig6QI8YuIPZyid/JE57AaDnWWjjngdnxL5mleJ3S8GjGKVxgusr+g==', '2024-11-02 10:33:55.95', '2024-11-02 13:33:55.95');
INSERT INTO public.token VALUES (2, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyIiwiaWQiOjIsIm5vbSI6IlJBS09UT01BTEFMQSIsInByZW5vbSI6IkFuZHJpbmlhaW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkFuZHJpbmlhaW5hQWRtaW4iLCJlbWFpbCI6ImFuZHJpbmlhaW5hcmFrb3RvbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJBbmRyaW5pYWluYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlVuaXZlcnNpdGUiOnRydWUsImlhdCI6MTczMDUzMzY2NywiZXhwIjoxNzMwNTQ0NDY3fQ.Uf5Wiji8G94ltQGtQAmkFbM7p-l8xUFygjT9YVv_DSK-dIngGMVY19OD3n808ShV_yqPcRpR3knUQb8CPIRClA', 'dmKU+nJ//ht7bqwRdnT64nDm6tOSg+AzccmLWoN7SjGeeyYiHLgOUz1+2HOwZ+c6KmK/2rS6I3Jibkqk8hrwIA==', '2024-11-02 10:47:47.711', '2024-11-02 13:47:47.711');
INSERT INTO public.token VALUES (3, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiaWQiOjMsIm5vbSI6IkFORFJJQU1BTEFMQSIsInByZW5vbSI6IkZhbmFudGVuYW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MjM0MDAwMDAwLCJhZG1pbk5vbSI6IkZhbmFudGVuYW5hQWRtaW4iLCJlbWFpbCI6ImZhbmFudGVuYW5hYW5kcmlhbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJGYW5hbnRlbmFuYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlByb2Zlc3NldXIiOnRydWUsImlhdCI6MTczMDUzMzY4MiwiZXhwIjoxNzMwNTQ0NDgyfQ.kIZvejPyQv1XsLIL378W_a4TqxSf03lyQjlnNCRl1QHUBvJ5LyvuNRvCEBuqAdrGDC9VHVtm1TTLi6TTRwhj-w', 'egEuAUbX9UKhU0PpCrxRdm1Ko6ZiV3E8gHaWT/MDjhEjoFJb9dak+WC8PE82zR1q7CsSjtH151YDMeEUv73G2w==', '2024-11-02 10:48:02.461', '2024-11-02 13:48:02.461');
INSERT INTO public.token VALUES (4, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI0IiwiaWQiOjQsIm5vbSI6IkFORFJJQU1BTU9OSklTT0EiLCJwcmVub20iOiJBbGFpbiIsImRhdGVuYWlzc2FuY2UiOjY1ODI3MDgwMDAwMCwiYWRtaW5Ob20iOiJBbGFpbkFkbWluIiwiZW1haWwiOiJhbGFpbmFuZHJpYW1hbW9uamlzb2FAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6IkFsYWluQWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W10sInByb2ZpbF9pZCI6Mywicm9sZSI6MywiUGFyZW50Ijp0cnVlLCJpYXQiOjE3MzA1MzM3MDMsImV4cCI6MTczMDU0NDUwM30.3azQCQJbo-fjee_C8mcoPNDiYHMjFxjPd11TI58otSOPiaZrL3DDQtE55LTW8Y9vg2_XBlJ8ia2iTjuSCuZqLg', 'WY/jrckEFmpg1A/DXLTX2jpI4t+HWvoXNzlKwLFPmjD+BTGujV7qr8yIhmXa+D7J22WymzYjoo9EnwoHlMKLYg==', '2024-11-02 10:48:23.467', '2024-11-02 13:48:23.467');
INSERT INTO public.token VALUES (5, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI1IiwiaWQiOjUsIm5vbSI6IlJBS09UT01BTU9OSlkiLCJwcmVub20iOiJNYW5vdm9zb2EiLCJkYXRlbmFpc3NhbmNlIjo3MjMxNTcyMDAwMDAsImFkbWluTm9tIjoiTWFub3Zvc29hQWRtaW4iLCJlbWFpbCI6Im1hbm92b3NvYXJha290b21hbW9uanlAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ik1hbm92b3NvYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIkVsZXZlIjp0cnVlLCJpYXQiOjE3MzA1MzM3MTcsImV4cCI6MTczMDU0NDUxN30.r9IHYiI479dVBQCJD0q1tShlrYlExrUHETgHq8Xmoo3_Cx0Upx2qFi7xZgnhSGI4UNsX7gH8FX9FBfS8f4IiMw', 'eOw7XRahw3Vxn496Bl1iEXRXKngCyOW4vG7QGhsRWwfPoSyivFGIQtk039bPDdof/RKLMsAS6kt9aCro1aQCgQ==', '2024-11-02 10:48:37.908', '2024-11-02 13:48:37.908');
INSERT INTO public.token VALUES (6, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI2IiwiaWQiOjYsIm5vbSI6IlJBS09UT0FSSVNPTiIsInByZW5vbSI6IkpvbmF0aGFuIiwiZGF0ZW5haXNzYW5jZSI6NzAzMDI2MDAwMDAwLCJhZG1pbk5vbSI6IkpvbmF0aGFuIiwiZW1haWwiOiJqb25hdGhhbnJha290b2FyaXNvbkBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSm9uYXRoYW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W10sInByb2ZpbF9pZCI6Mywicm9sZSI6MywiIjp0cnVlLCJpYXQiOjE3MzA1MzM3MzIsImV4cCI6MTczMDU0NDUzMn0.X6y4ksDXV-DRw0NGT7TGwUmTQFRGGVZlhCmWIzEGA937Q_golzGwxyr8FcBiucc6LyMcHs-mTMRz-uCrwNsp0g', '9Un4Bidq00KTiR9upvpaT4z23d1aM03q995bc+11nCQ3Pma3bAPgJfaVxXKSls5Kec+wd7dXLSzH9QR1+6jWjw==', '2024-11-02 10:48:52.213', '2024-11-02 13:48:52.213');
INSERT INTO public.token VALUES (7, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiaWQiOjcsIm5vbSI6IkFORFJJQU1BTkFMWSIsInByZW5vbSI6IlBpZXJyZSIsImRhdGVuYWlzc2FuY2UiOjY1NzIzNDAwMDAwMCwiYWRtaW5Ob20iOiJQaWVycmVBZG1pbiIsImVtYWlsIjoicGllcnJlYW5kcmlhbWFuYWx5QGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJQaWVycmVBZG1pbiIsImFjYWRlbXkiOltdLCJhZG1pbnVzZXJzIjpbXSwicHJvZmlsX2lkIjozLCJyb2xlIjozLCIiOnRydWUsImlhdCI6MTczMDUzMzc0NiwiZXhwIjoxNzMwNTQ0NTQ2fQ.4INYMx8HBZZQfdFQTncLqVC5dg75rxoPxttAp5w3xsLpOLqXU8C4F2kWXH9yUw-vVzpuhCBbLB1Ugm09kk3evA', 'y23mkgjDYZsCmNjhLzAYe/jrRan3Gp2juwGZVl8Vbm0B1ZVhj2hEr8+0EHrvfG1btnrKaQcYOoHDP3EXlf43hA==', '2024-11-02 10:49:06.471', '2024-11-02 13:49:06.471');
INSERT INTO public.token VALUES (8, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDUzMzg0NiwiZXhwIjoxNzMwNTQ0NjQ2fQ.ZTxCFdEx0qyjQoOyY3w_IcVhCkEdEQu80tTpxmvR8ZBCqvbebF9l14P7L9x2tpk1Gh0h3HJ5QNR-ci_0bzUYxA', 'brBwghA7eqg4Sla/be7vnu6IN2E9uBeoa/Uen5k0YWI0vE44sdbJvPxZd7TWqCqUEWxLe+BsE9PHl/4OOj1EZw==', '2024-11-02 10:50:46.633', '2024-11-02 13:50:46.633');
INSERT INTO public.token VALUES (9, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDUzNDE2NCwiZXhwIjoxNzMwNTQ0OTY0fQ.uN3tcAxImLKSpI-ut6x5hbRlRc0gxV4UZGdOHKnJTmkhZCYpkr3YzTD1KnfXfZfQOYRc6-m7x6VAWml-Q26d1Q', 'hVyNqIR79HdckeS+kJb0RIeuDEme+hmYvpV2FLW/xroLqZZQyf7rGuVVY5QpCDs3zOCxPiNpfYfHQw81jRPTWA==', '2024-11-02 10:56:04.508', '2024-11-02 13:56:04.508');
INSERT INTO public.token VALUES (10, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDUzNDkyOCwiZXhwIjoxNzMwNTQ1NzI4fQ.M_f-RVFeTLZ1LoDJUdKPAIMEDZyaxisssuDbUVr57HXz6pXT4PeeBRTIShanqM4pmz0qVnVIkrqqBAnOIK-9KA', 'T/3fd3piB7siXi/g2eLFEd4JYvrP55h6T94R1S32sKRd4UpltYrOKBbn+lcIIwF9qkBW038wwS6duurSBp+v0A==', '2024-11-02 11:08:48.672', '2024-11-02 14:08:48.672');
INSERT INTO public.token VALUES (11, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI4IiwiaWQiOjgsIm5vbSI6Ik1JQU5EUklTT04iLCJwcmVub20iOiJIYXNpbmpvIiwiZGF0ZW5haXNzYW5jZSI6OTQ0NzczMjAwMDAwLCJhZG1pbk5vbSI6Ikhhc2luam9BZG1pbiIsImVtYWlsIjoibWlhbmRyaXNvbmhhc2luam9AZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ikhhc2luam9BZG1pbiIsImFjYWRlbXkiOltdLCJhZG1pbnVzZXJzIjpbXSwicHJvZmlsX2lkIjozLCJyb2xlIjozLCIiOnRydWUsImlhdCI6MTczMDUzNTA3OSwiZXhwIjoxNzMwNTQ1ODc5fQ.1gTWNcF2nPJs00VsVy7UrHqAtL7FfQIGlN9gsZXfW51T5bgbU7vuE6fk4jC9j3N87f_qu_uaJRsrO8NULCrT_g', 't7116MGM8chHezKWeJ1tI1buSKqRhXzVZXpFOs3PwTgMjdIwNnw0bPmZWRxSxCPAV84eWROhKVWgPQS+gZMrEA==', '2024-11-02 11:11:19.558', '2024-11-02 14:11:19.558');
INSERT INTO public.token VALUES (12, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5IiwiaWQiOjksIm5vbSI6IkFORFJJQU1BTkFOVEVOQSIsInByZW5vbSI6IkxpYW5hIiwiZGF0ZW5haXNzYW5jZSI6NjQ2Nzc5NjAwMDAwLCJhZG1pbk5vbSI6IkxpYW5hQWRtaW4iLCJlbWFpbCI6ImxpYW5hbGlhbmFAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6IkxpYW5hQWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W10sInByb2ZpbF9pZCI6Mywicm9sZSI6MywiIjp0cnVlLCJpYXQiOjE3MzA1MzUyNjksImV4cCI6MTczMDU0NjA2OX0.zw0fKWKq_BiPH3JYHCgiIVkt0OEgaUbrdjJR8Ipdug-iNDOwIJK7MVWYQVIanpVuJHoOKJN1slXquDORkIemfw', '78q2pf+lRhPJbabd5ew9tvAB78zrU/poru+iywr0AJf73gsJsE/cyImiPcXiYhR+MlQXauKhbQYGq2FkHUSOyg==', '2024-11-02 11:14:29.492', '2024-11-02 14:14:29.492');
INSERT INTO public.token VALUES (13, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMCIsImlkIjoxMCwibm9tIjoiUkFORFJJQU1BSEFaTyIsInByZW5vbSI6Ik5hdmFsb25pYWluYSIsImRhdGVuYWlzc2FuY2UiOjkxMDEyNjgwMDAwMCwiYWRtaW5Ob20iOiJOaWFpbmFBZG1pbiIsImVtYWlsIjoibmF2YWxvbmlhaW5hcmFuZHJpYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiTmlhaW5hQWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W10sInByb2ZpbF9pZCI6Mywicm9sZSI6MywiIjp0cnVlLCJpYXQiOjE3MzA1MzU0ODAsImV4cCI6MTczMDU0NjI4MH0.CYJpjbbC1xyk0nsK3RydurgSxm6Ic48FgsaZZkzfOyo0VnOSjMV-BzonWL1jTl5Qgl0ngv0a8YpTAI5LowEXYw', 'OOvQmKGzHWTYKbkRJttHvuiyq7NRuIPUNafEOWI5SFeeVUH7rlAGLqcqEfwypd4rIqJF00VO+PvbRHHEILD1HQ==', '2024-11-02 11:18:00.613', '2024-11-02 14:18:00.613');
INSERT INTO public.token VALUES (14, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImlkIjoxMSwibm9tIjoiUkFKQU9OQVJJVk9OWSIsInByZW5vbSI6Ik9saXZhcmlsYWxhIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6Ik9saXZhcmlsYWxhIiwiZW1haWwiOiJvbGl2YXJpbGFsYXJhamFvbmFyaXZvbnlAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ik9saXZhcmlsYWxhIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjQsInJvbGUiOjQsIiI6dHJ1ZSwiaWF0IjoxNzMwNTM3NDU5LCJleHAiOjE3MzA1NDgyNTl9.0SZ1EyCq9sXfQB7M598WGEJx4caHL0WXg6smvzeHXE2eyWKXIsFl7bVU_2iXujMs--zUntfmzgKQ8TohT0g3Ew', 'y8uFqwdDeD59m6XeJ26J88Ipy2OyMqbgg3Oz0S4uXXmFDsrY1rNqv6AOuh0XSqDZt6x4cphjh4PTZOxIoDEMXQ==', '2024-11-02 11:50:59.69', '2024-11-02 14:50:59.69');
INSERT INTO public.token VALUES (15, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyIiwiaWQiOjIsIm5vbSI6IlJBS09UT01BTEFMQSIsInByZW5vbSI6IkFuZHJpbmlhaW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkFuZHJpbmlhaW5hQWRtaW4iLCJlbWFpbCI6ImFuZHJpbmlhaW5hcmFrb3RvbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJBbmRyaW5pYWluYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlVuaXZlcnNpdGUiOnRydWUsImlhdCI6MTczMDUzOTE0NywiZXhwIjoxNzMwNTQ5OTQ3fQ.q_--tMgo1X_hyEFi-5Q9-2TtXbpFbqVj7IaGHgza01Kaf6hwVmQNxTatgNGj3FjeKc69djDNICmD0KcOyB-bZA', 'YEgJ1i6MDbm7lkBltMDr2XTLrq/Lqo/5AQ5MPRrSzRmlp7RdwolQmIEUw/GLhLTHVKWjyocFEYXQkcEZrO80wA==', '2024-11-02 12:19:07.452', '2024-11-02 15:19:07.452');
INSERT INTO public.token VALUES (16, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiaWQiOjMsIm5vbSI6IkFORFJJQU1BTEFMQSIsInByZW5vbSI6IkZhbmFudGVuYW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MjM0MDAwMDAwLCJhZG1pbk5vbSI6IkZhbmFudGVuYW5hQWRtaW4iLCJlbWFpbCI6ImZhbmFudGVuYW5hYW5kcmlhbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJGYW5hbnRlbmFuYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlByb2Zlc3NldXIiOnRydWUsImlhdCI6MTczMDUzOTE5NywiZXhwIjoxNzMwNTQ5OTk3fQ.eDpNeJbD48HbNPJjeQbDQH1NukCAjP_uRCi4o0NZIMV30EKP1VOoIJiMsfQ_9uQVcMLvNsA6MRTmiAs_kz5avw', 'CbEvJTC0EpbDly2owf7B1Dz+KVfFYxbTDynP7VLYZWiHZ+jEBW8rwIOx6aXE/tsX0K+nZydaDpzvB2q4NLheIA==', '2024-11-02 12:19:57.591', '2024-11-02 15:19:57.591');
INSERT INTO public.token VALUES (17, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDU0MTIwNCwiZXhwIjoxNzMwNTUyMDA0fQ.jidOYkrWgBWwBHYrf_peKC0G69z1GoYaZntIRpcvvBJhdYtac-ZaR2Iyd4_WBpGX2iAwZG0qAfbtFXKpQazugQ', 'LrSkD1RtlDFN0n1QEBmg3rylnuOYvyASdBeBKOetanAd3qPIbzks4+ANyawg4sJGv1guvzyuRntnc/3q9c5rZQ==', '2024-11-02 12:53:24.689', '2024-11-02 15:53:24.689');
INSERT INTO public.token VALUES (18, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiaWQiOjcsIm5vbSI6IkFORFJJQU1BTkFMWSIsInByZW5vbSI6IlBpZXJyZSIsImRhdGVuYWlzc2FuY2UiOjY1NzIzNDAwMDAwMCwiYWRtaW5Ob20iOiJQaWVycmVBZG1pbiIsImVtYWlsIjoicGllcnJlYW5kcmlhbWFuYWx5QGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJQaWVycmVBZG1pbiIsImFjYWRlbXkiOltdLCJhZG1pbnVzZXJzIjpbXSwicHJvZmlsX2lkIjozLCJyb2xlIjozLCIiOnRydWUsImlhdCI6MTczMDU0MTQwNywiZXhwIjoxNzMwNTUyMjA3fQ.2zXVpFHl7do0xeEun1_8iuwLXtDF5eOZpEhozmZ_VmUSAoU1Y4JjyR1Oph34mLCkqR6Rv4a0noWuOwTXueYLbw', 'lpsOWepJZFUWVE624UEFtP9csGh3VknB2ufibPzPuPzoAkIIhrRDuF8m1IuaDs/EMdfLOiVyrmcq6gEvuCaCgg==', '2024-11-02 12:56:47.981', '2024-11-02 15:56:47.981');
INSERT INTO public.token VALUES (19, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDU1MzMzMSwiZXhwIjoxNzMwNTY0MTMxfQ.Z8Caskx8BhZ2I-wQb0sz32Ce9DXNvm0VJMk98Wn5GOYrKKvPJRWH04RX_clyQdG-UFDcsbNwCpA6bEBr7RmOOw', '1NQ0+vnc5gfZRpr6InQk1xK+QBNSaVmTNkiaorLg6+f3VbOA0bbEl9ApM0Jq3M1t+wY2XWha0VOJ82BKozgoag==', '2024-11-02 16:15:31.34', '2024-11-02 19:15:31.34');
INSERT INTO public.token VALUES (20, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiaWQiOjcsIm5vbSI6IkFORFJJQU1BTkFMWSIsInByZW5vbSI6IlBpZXJyZSIsImRhdGVuYWlzc2FuY2UiOjY1NzIzNDAwMDAwMCwiYWRtaW5Ob20iOiJQaWVycmVBZG1pbiIsImVtYWlsIjoicGllcnJlYW5kcmlhbWFuYWx5QGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJQaWVycmVBZG1pbiIsImFjYWRlbXkiOltdLCJhZG1pbnVzZXJzIjpbXSwicHJvZmlsX2lkIjozLCJyb2xlIjozLCIiOnRydWUsImlhdCI6MTczMDU1MzQyMywiZXhwIjoxNzMwNTY0MjIzfQ.NiidMAlNHOhkyhu0lhb3ICsiJkhXp1VKakX4bjMluQKUKGwkEeiu_U0xsJp30EEdTi5TdEtm8cVbESw97euGqg', 'rDPKHN4pihaxhEJ4rFtQBVgCJFp4byjSdm5iSUYRkTPXEU0lqlEwhPDWx9LOwnJQoxuEY9RwoGJQGrrJXj4Rww==', '2024-11-02 16:17:03.886', '2024-11-02 19:17:03.886');
INSERT INTO public.token VALUES (21, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiaWQiOjMsIm5vbSI6IkFORFJJQU1BTEFMQSIsInByZW5vbSI6IkZhbmFudGVuYW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MjM0MDAwMDAwLCJhZG1pbk5vbSI6IkZhbmFudGVuYW5hQWRtaW4iLCJlbWFpbCI6ImZhbmFudGVuYW5hYW5kcmlhbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJGYW5hbnRlbmFuYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlByb2Zlc3NldXIiOnRydWUsImlhdCI6MTczMDU1MzQzNywiZXhwIjoxNzMwNTY0MjM3fQ.DsDCYuaUWO16hWwgJNDGnYvyEn9WjHbM6shTSqBY_QIxTVf5YPuY4sZwa1ELBpljNgazxV16sGcQzF0oeOpjIg', 'W/9cWalQM0W/rFqlNChNqJif0P2W/qYpF/Duu9Sq0f5d1Yn+GmKJbtPWVk8eDROTksiE3AP95c9m6Xc7NX2rOw==', '2024-11-02 16:17:17.597', '2024-11-02 19:17:17.597');
INSERT INTO public.token VALUES (22, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyIiwiaWQiOjIsIm5vbSI6IlJBS09UT01BTEFMQSIsInByZW5vbSI6IkFuZHJpbmlhaW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkFuZHJpbmlhaW5hQWRtaW4iLCJlbWFpbCI6ImFuZHJpbmlhaW5hcmFrb3RvbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJBbmRyaW5pYWluYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlVuaXZlcnNpdGUiOnRydWUsImlhdCI6MTczMDU1MzQ1MCwiZXhwIjoxNzMwNTY0MjUwfQ.TMTV6k-dOmYnCm-S6N3KxoABuspzQHd2TLHcsmzqwc-umO9D9lrah1ttsUm0MEormGQhmhoRHq8I06g9WLrC_g', '4dD8aZSTHNLbGBrpxdUf1HyUE7LNHFF2LCTUo5q1zp9Lk6NqMSmVX2bI6i/0cz+jzDFT3R9MmTXz8P49OCWigw==', '2024-11-02 16:17:30.878', '2024-11-02 19:17:30.878');
INSERT INTO public.token VALUES (23, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI3IiwiaWQiOjcsIm5vbSI6IkFORFJJQU1BTkFMWSIsInByZW5vbSI6IlBpZXJyZSIsImRhdGVuYWlzc2FuY2UiOjY1NzIzNDAwMDAwMCwiYWRtaW5Ob20iOiJQaWVycmVBZG1pbiIsImVtYWlsIjoicGllcnJlYW5kcmlhbWFuYWx5QGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJQaWVycmVBZG1pbiIsImFjYWRlbXkiOltdLCJhZG1pbnVzZXJzIjpbXSwicHJvZmlsX2lkIjozLCJyb2xlIjozLCIiOnRydWUsImlhdCI6MTczMDU1NDc4OCwiZXhwIjoxNzMwNTY1NTg4fQ.ODFLQVEglOa5kkDb6lhTGuKWO8v-Z7yJoOkv3lFTTsr-BN-zipJQTscUawRsh2neZrx36_xurm9slrCpNCuagw', 'LW+O2vUejZMV16tPhFwJZ1bGoym8sKEg1cRgYIX3GlZpz3LWGqvi7aWYZwqRlT+inwpGg1q1kyPblk+LXt+KkQ==', '2024-11-02 16:39:48.761', '2024-11-02 19:39:48.761');
INSERT INTO public.token VALUES (24, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImlkIjoxMSwibm9tIjoiUkFKQU9OQVJJVk9OWSIsInByZW5vbSI6Ik9saXZhcmlsYWxhIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6Ik9saXZhcmlsYWxhIiwiZW1haWwiOiJvbGl2YXJpbGFsYXJhamFvbmFyaXZvbnlAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ik9saXZhcmlsYWxhIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjQsInJvbGUiOjQsIiI6dHJ1ZSwiaWF0IjoxNzMwNTU2MTQxLCJleHAiOjE3MzA1NjY5NDF9.y-kBigghsTirMR9lrZudegzZAOFaEersLS47FTItIlqWasv1w7oxU0d4TI9fko15EaB25XV7hTh_gYgelVDFxg', 'Sk1plII+u51qkuSl74KbcXdJ9mojz93zM9AxdZQ+/RqbnkvWelRWzpIzI6PcQ1ege8Xl4iyizvXp9msUBPWjrg==', '2024-11-02 17:02:21.815', '2024-11-02 20:02:21.815');
INSERT INTO public.token VALUES (25, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMiIsImlkIjoxMiwibm9tIjoiUkFCRSIsInByZW5vbSI6IkdlcmFyZCIsImRhdGVuYWlzc2FuY2UiOjY1ODM1NzIwMDAwMCwiYWRtaW5Ob20iOiJHZXJhcmRBZG1pbiIsImVtYWlsIjoiZ2VyYXJkcmFiZUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiR2VyYXJkQWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W10sInByb2ZpbF9pZCI6NCwicm9sZSI6NCwiIjp0cnVlLCJpYXQiOjE3MzA1NjEwOTQsImV4cCI6MTczMDU3MTg5NH0.ZbxDyoSsJrpFHo5whPjPj8I754ZOwyEXO7UVciuIlWyf8QCxA3CWLHLSmwcUAhy4WDs7U3Dchj0-De_0tsJVwQ', 'iA2rOH1lmWQg7dBOYCmWdz+ocJZ45SOAZ5qWdxXjFUc6ePXkhOJhAikxxQbflvLSdKmx6mfm01MQNS1fz7g06A==', '2024-11-02 18:24:54.716', '2024-11-02 21:24:54.716');
INSERT INTO public.token VALUES (26, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIyIiwiaWQiOjIsIm5vbSI6IlJBS09UT01BTEFMQSIsInByZW5vbSI6IkFuZHJpbmlhaW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkFuZHJpbmlhaW5hQWRtaW4iLCJlbWFpbCI6ImFuZHJpbmlhaW5hcmFrb3RvbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJBbmRyaW5pYWluYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlVuaXZlcnNpdGUiOnRydWUsImlhdCI6MTczMDU2MTMyOSwiZXhwIjoxNzMwNTcyMTI5fQ.itYgVreyFCQMC-5yoYwO0UI4ZMJjydN8V7JekPaQe3e7FMSWAcmyoFLMsZenDBs8m3R4C7ksGrdOHV4NdRgqZg', 'Ugwmxz9av6SLmv2iigSr4UdgjbdD8fnfLHycBdrhXiyQUrL7aSUyT4Oydex27sFrEMbu8jAap6qSx8AOLuIceQ==', '2024-11-02 18:28:49.864', '2024-11-02 21:28:49.864');
INSERT INTO public.token VALUES (27, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImlkIjoxMSwibm9tIjoiUkFKQU9OQVJJVk9OWSIsInByZW5vbSI6Ik9saXZhcmlsYWxhIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6Ik9saXZhcmlsYWxhIiwiZW1haWwiOiJvbGl2YXJpbGFsYXJhamFvbmFyaXZvbnlAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ik9saXZhcmlsYWxhIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjQsInJvbGUiOjQsIiI6dHJ1ZSwiaWF0IjoxNzMwNTYyMjY4LCJleHAiOjE3MzA1NzMwNjh9.j2p1LMXKHL9hRMza2NK0kmR0nzdpyA07OxfHtlvgAXXbioRO6NNiSW3R4jO0z0LLd1-MCoP6eSkot2QCSoO70g', 'eZ69rZakXbssvTrX13PrbTWLOxg75geTZXZL+1J2qyQ6yyQQRf0c91bsc3GTJtSq641snLiI+LHYlKNmtTW7FQ==', '2024-11-02 18:44:28.315', '2024-11-02 21:44:28.315');
INSERT INTO public.token VALUES (28, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDU2ODk3MCwiZXhwIjoxNzMwNTc5NzcwfQ.H3M9t4SEF-4tiRaPRsaPmaQv2qACN5fgTRA0w7Zdfq3SPVkiaSs_6eHAGR0Qz7mzwJYuvjxBzt11nufPYqpPyw', 'tzqUxdkr+HDtVMjNQfcu29cUFP5ESQQJOIJQfK3U6yLxf15q0xMLiTeOZeI7ZK+pFxzJma+YLxHV90GVpXS/0A==', '2024-11-02 20:36:10.346', '2024-11-02 23:36:10.346');
INSERT INTO public.token VALUES (29, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImlkIjoxMSwibm9tIjoiUkFKQU9OQVJJVk9OWSIsInByZW5vbSI6Ik9saXZhcmlsYWxhIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6Ik9saXZhcmlsYWxhIiwiZW1haWwiOiJvbGl2YXJpbGFsYXJhamFvbmFyaXZvbnlAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ik9saXZhcmlsYWxhIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjQsInJvbGUiOjQsIiI6dHJ1ZSwiaWF0IjoxNzMwNTY5MTYyLCJleHAiOjE3MzA1Nzk5NjJ9.mlSyb0sPtnVb01n-tN5WPCF-P3QV4PmJCSfx7MU7thlEHJTaXdEsqdvFqls1mcllFL36Fcrc5AixScGxfVnLSg', '5Ioz8KN7mdPEgbUCi5EZVmYvJXaNYvSljCTMLbSI9bE+/KMsrGvr8e631nQjCKO635OJcexwB7MD8MXuaG+/yQ==', '2024-11-02 20:39:22.481', '2024-11-02 23:39:22.481');
INSERT INTO public.token VALUES (30, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDU2OTY0OSwiZXhwIjoxNzMwNTgwNDQ5fQ.5tMmZ1SWx69vkdf-dkAQpihgpf9c5Ta_0qPeby8q6MtktFKrrzo3P13YvhVq7cJ9uR1yGC8lFvmuuB8U4m-B3g', '0KaWRD9Uy/eBqKrrfAkxdQPfOBDN+pgnWLCx0KbKT2g7p8sCbCKxiAh6Q5rQ52QN6xHVkSBcL1nSHVcSqS8qiQ==', '2024-11-02 20:47:29.377', '2024-11-02 23:47:29.377');
INSERT INTO public.token VALUES (31, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzIiwiaWQiOjMsIm5vbSI6IkFORFJJQU1BTEFMQSIsInByZW5vbSI6IkZhbmFudGVuYW5hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MjM0MDAwMDAwLCJhZG1pbk5vbSI6IkZhbmFudGVuYW5hQWRtaW4iLCJlbWFpbCI6ImZhbmFudGVuYW5hYW5kcmlhbWFsYWxhQGdtYWlsLmNvbSIsImFkcmVzc2UiOiJMb3QgSDI1ME0gSXRhb3N5IiwiYWRtaW5ub20iOiJGYW5hbnRlbmFuYUFkbWluIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjMsInJvbGUiOjMsIlByb2Zlc3NldXIiOnRydWUsImlhdCI6MTczMDU3MDY1MiwiZXhwIjoxNzMwNTgxNDUyfQ.EuZBJALwjB_I3RYRr-OXVGvwn70bkv5pfgXldEcAjinpLs18FtHRCAHzn0rHZhRg4uCZI6BnpbMTVp4jKPf32Q', 'E8oiKQEXMcRDwN5YqUBbFp2vCyToGQX/DqjwvKkWHR2if30g7C+VYrAiyr/BKlHmM0Aw0IwPpufaKuTQW+f2RQ==', '2024-11-02 21:04:12.482', '2024-11-03 00:04:12.482');
INSERT INTO public.token VALUES (32, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDU3NTc2NCwiZXhwIjoxNzMwNTg2NTY0fQ.KlFCFeMJJqyIFeqLTmad2fvcNki6PvxtDXPEOnfMpa9tDuIuVbJFoLPL6vwU_28qhyyir485PBSLMPDOGdUtgg', '9tRWVeknyS6tAtEt0C35DVtOvmxEOWwkSeGzLBkuXSommiWu8drjM5Y9Q30mtVM9tS3t9PsMw4rC9cyr4P3W3Q==', '2024-11-02 22:29:24.05', '2024-11-03 01:29:24.05');
INSERT INTO public.token VALUES (33, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWQiOjEsIm5vbSI6IkFORFJJQU5BUklWRUxPIiwicHJlbm9tIjoiSGVuZHJpbmlhaW5hIExpYW50c29hIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6IkhlbmRyeUFkbWluIiwiZW1haWwiOiJoZW5kcmluaWFpbmFsaWFudHNvYUBnbWFpbC5jb20iLCJhZHJlc3NlIjoiTG90IEgyNTBNIEl0YW9zeSIsImFkbWlubm9tIjoiSGVuZHJ5QWRtaW4iLCJhY2FkZW15IjpbXSwiYWRtaW51c2VycyI6W3siaWQiOjEsInVzZXJzIjoxLCJhY2FkZW15X2lkIjoxfV0sInByb2ZpbF9pZCI6MSwicm9sZSI6MSwiRWNvbGUiOnRydWUsImlhdCI6MTczMDU3OTY2NCwiZXhwIjoxNzMwNTkwNDY0fQ.e-Zi8R3mffj_djDNYvyhAeY-WdEIKyhw6ny0qHRexU2777Ri4P_h1Y9eYVlZvGMh8pgoYjms3dWz2_WdvZpz2w', '7s4uVd1813MOCPap7MfAADNd+dMd2jvbtYnN+UTcpJ5QeC/U7AKal9Ncu2uo+T87g5b9E3V/RmRjP2KnZj7VjQ==', '2024-11-02 23:34:24.876', '2024-11-03 02:34:24.876');
INSERT INTO public.token VALUES (34, 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMSIsImlkIjoxMSwibm9tIjoiUkFKQU9OQVJJVk9OWSIsInByZW5vbSI6Ik9saXZhcmlsYWxhIiwiZGF0ZW5haXNzYW5jZSI6NjU3MDYxMjAwMDAwLCJhZG1pbk5vbSI6Ik9saXZhcmlsYWxhIiwiZW1haWwiOiJvbGl2YXJpbGFsYXJhamFvbmFyaXZvbnlAZ21haWwuY29tIiwiYWRyZXNzZSI6IkxvdCBIMjUwTSBJdGFvc3kiLCJhZG1pbm5vbSI6Ik9saXZhcmlsYWxhIiwiYWNhZGVteSI6W10sImFkbWludXNlcnMiOltdLCJwcm9maWxfaWQiOjQsInJvbGUiOjQsIiI6dHJ1ZSwiaWF0IjoxNzMwNTc5NzM0LCJleHAiOjE3MzA1OTA1MzR9.B2UMKWJUZ-hPpEVkMFltpyJFJvmVtdt1hilY0Hlv3rtQU3ImBZx5oL3Gyu_74N8FmS012Zw6M7gVt1ey7wT8mA', 'EI2HGyRpbkBkcTYqPe8qjyPqsfgk9ZviCxwCLvGd52P296y6QyX4CHZhyeUfDznGoe58mPRyZ2rygtQ5FwLmpA==', '2024-11-02 23:35:34.613', '2024-11-03 02:35:34.613');


--
-- Data for Name: trimestre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trimestre VALUES (1, 1, 1, '1er trimestre', '2024-10-03', '2024-11-30');
INSERT INTO public.trimestre VALUES (2, 1, 1, '2eme trimestre', '2024-12-03', '2025-01-30');
INSERT INTO public.trimestre VALUES (3, 1, 1, '3eme trimestre', '2025-02-01', '2025-03-15');


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types VALUES (1, 'Ecole');
INSERT INTO public.types VALUES (2, 'Universite');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'ANDRIANARIVELO', 'Hendriniaina Liantsoa', 'Lot H250M Itaosy', '1990-10-28', 'HendryAdmin', 'hendriniainaliantsoa@gmail.com', 'hendriniaina', 1);
INSERT INTO public.users VALUES (2, 'RAKOTOMALALA', 'Andriniaina', 'Lot H250M Itaosy', '1990-10-28', 'AndriniainaAdmin', 'andriniainarakotomalala@gmail.com', 'andriniaina', 3);
INSERT INTO public.users VALUES (3, 'ANDRIAMALALA', 'Fanantenana', 'Lot H250M Itaosy', '1990-10-30', 'FanantenanaAdmin', 'fanantenanaandriamalala@gmail.com', 'fanantenana', 3);
INSERT INTO public.users VALUES (4, 'ANDRIAMAMONJISOA', 'Alain', 'Lot H250M Itaosy', '1990-11-11', 'AlainAdmin', 'alainandriamamonjisoa@gmail.com', 'alain', 3);
INSERT INTO public.users VALUES (5, 'RAKOTOMAMONJY', 'Manovosoa', 'Lot H250M Itaosy', '1992-12-01', 'ManovosoaAdmin', 'manovosoarakotomamonjy@gmail.com', 'manovosoa', 3);
INSERT INTO public.users VALUES (6, 'RAKOTOARISON', 'Jonathan', 'Lot H250M Itaosy', '1992-04-12', 'Jonathan', 'jonathanrakotoarison@gmail.com', 'jonathan', 3);
INSERT INTO public.users VALUES (7, 'ANDRIAMANALY', 'Pierre', 'Lot H250M Itaosy', '1990-10-30', 'PierreAdmin', 'pierreandriamanaly@gmail.com', 'pierre', 3);
INSERT INTO public.users VALUES (8, 'MIANDRISON', 'Hasinjo', 'Lot H250M Itaosy', '1999-12-10', 'HasinjoAdmin', 'miandrisonhasinjo@gmail.com', 'hasinjo', 3);
INSERT INTO public.users VALUES (9, 'ANDRIAMANANTENA', 'Liana', 'Lot H250M Itaosy', '1990-07-01', 'LianaAdmin', 'lianaliana@gmail.com', 'liana', 3);
INSERT INTO public.users VALUES (10, 'RANDRIAMAHAZO', 'Navaloniaina', 'Lot H250M Itaosy', '1998-11-04', 'NiainaAdmin', 'navaloniainarandria@gmail.com', 'navaloniaina', 3);
INSERT INTO public.users VALUES (11, 'RAJAONARIVONY', 'Olivarilala', 'Lot H250M Itaosy', '1990-10-28', 'Olivarilala', 'olivarilalarajaonarivony@gmail.com', 'olivarilala', 4);
INSERT INTO public.users VALUES (12, 'RABE', 'Gerard', 'Lot H250M Itaosy', '1990-11-12', 'GerardAdmin', 'gerardrabe@gmail.com', 'gerard', 4);


--
-- Data for Name: v_demandeprof; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: v_reponseoffre; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: v_voirdemande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: verifemail; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.verifemail VALUES (18, 'olivarilalarajaonarivony@gmail.com', '5831');


--
-- Name: absence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.absence_id_seq', 1, false);


--
-- Name: absenceeleve_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.absenceeleve_id_seq', 3, true);


--
-- Name: academy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academy_id_seq', 1, true);


--
-- Name: academyprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academyprof_id_seq', 3, true);


--
-- Name: academyusers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academyusers_id_seq', 1, true);


--
-- Name: anneescolaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.anneescolaire_id_seq', 1, true);


--
-- Name: calendrierscolaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calendrierscolaire_id_seq', 50, true);


--
-- Name: carneteleve_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carneteleve_id_seq', 1, true);


--
-- Name: carnettout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carnettout_id_seq', 4, true);


--
-- Name: classe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classe_id_seq', 16, true);


--
-- Name: classeniveau_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classeniveau_id_seq', 16, true);


--
-- Name: commentaires_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commentaires_id_seq', 10, true);


--
-- Name: critereprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.critereprof_id_seq', 10, true);


--
-- Name: csvmatiereclasse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.csvmatiereclasse_id_seq', 20, true);


--
-- Name: csvnoteeleveecole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.csvnoteeleveecole_id_seq', 100, true);


--
-- Name: demandeajoutprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandeajoutprof_id_seq', 4, true);


--
-- Name: demandeprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandeprof_id_seq', 1, false);


--
-- Name: ecoleclasse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ecoleclasse_id_seq', 12, true);


--
-- Name: edtclasse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.edtclasse_id_seq', 20, true);


--
-- Name: eleveecole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.eleveecole_id_seq', 5, true);


--
-- Name: etudiant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.etudiant_id_seq', 5, true);


--
-- Name: etudiantecole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.etudiantecole_id_seq', 5, true);


--
-- Name: ficheecolage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ficheecolage_id_seq', 30, true);


--
-- Name: fraisdescolarite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fraisdescolarite_id_seq', 12, true);


--
-- Name: horaireprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horaireprof_id_seq', 20, true);


--
-- Name: jours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jours_id_seq', 7, true);


--
-- Name: matiere_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matiere_id_seq', 8, true);


--
-- Name: matiereclasse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matiereclasse_id_seq', 8, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.media_id_seq', 6, true);


--
-- Name: niveau_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.niveau_id_seq', 3, true);


--
-- Name: noteetudiantecole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noteetudiantecole_id_seq', 100, true);


--
-- Name: offreecole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offreecole_id_seq', 1, false);


--
-- Name: parentetudiant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parentetudiant_id_seq', 5, true);


--
-- Name: professeur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professeur_id_seq', 9, true);


--
-- Name: profil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profil_id_seq', 5, true);


--
-- Name: programmescolaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programmescolaire_id_seq', 17, true);


--
-- Name: reponseoffre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reponseoffre_id_seq', 1, false);


--
-- Name: retard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.retard_id_seq', 1, false);


--
-- Name: retardeleve_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.retardeleve_id_seq', 2, true);


--
-- Name: salaireprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salaireprof_id_seq', 1, false);


--
-- Name: semestre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.semestre_id_seq', 1, false);


--
-- Name: token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_id_seq', 34, true);


--
-- Name: trimestre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trimestre_id_seq', 3, true);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 12, true);


--
-- Name: verifemail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verifemail_id_seq', 18, true);


--
-- Name: absence absence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absence
    ADD CONSTRAINT absence_pkey PRIMARY KEY (id);


--
-- Name: absenceeleve absenceeleve_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absenceeleve
    ADD CONSTRAINT absenceeleve_pkey PRIMARY KEY (id);


--
-- Name: academy academy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academy
    ADD CONSTRAINT academy_pkey PRIMARY KEY (id);


--
-- Name: academyprof academyprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyprof
    ADD CONSTRAINT academyprof_pkey PRIMARY KEY (id);


--
-- Name: academyusers academyusers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyusers
    ADD CONSTRAINT academyusers_pkey PRIMARY KEY (id);


--
-- Name: anneescolaire anneescolaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anneescolaire
    ADD CONSTRAINT anneescolaire_pkey PRIMARY KEY (id);


--
-- Name: calendrierscolaire calendrierscolaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendrierscolaire
    ADD CONSTRAINT calendrierscolaire_pkey PRIMARY KEY (id);


--
-- Name: carneteleve carneteleve_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carneteleve
    ADD CONSTRAINT carneteleve_pkey PRIMARY KEY (id);


--
-- Name: carnettout carnettout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carnettout
    ADD CONSTRAINT carnettout_pkey PRIMARY KEY (id);


--
-- Name: classe classe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id);


--
-- Name: classeniveau classeniveau_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classeniveau
    ADD CONSTRAINT classeniveau_pkey PRIMARY KEY (id);


--
-- Name: commentaires commentaires_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaires
    ADD CONSTRAINT commentaires_pkey PRIMARY KEY (id);


--
-- Name: critereprof critereprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.critereprof
    ADD CONSTRAINT critereprof_pkey PRIMARY KEY (id);


--
-- Name: csvmatiereclasse csvmatiereclasse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.csvmatiereclasse
    ADD CONSTRAINT csvmatiereclasse_pkey PRIMARY KEY (id);


--
-- Name: csvnoteeleveecole csvnoteeleveecole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.csvnoteeleveecole
    ADD CONSTRAINT csvnoteeleveecole_pkey PRIMARY KEY (id);


--
-- Name: demandeajoutprof demandeajoutprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandeajoutprof
    ADD CONSTRAINT demandeajoutprof_pkey PRIMARY KEY (id);


--
-- Name: demandeprof demandeprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandeprof
    ADD CONSTRAINT demandeprof_pkey PRIMARY KEY (id);


--
-- Name: ecoleclasse ecoleclasse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ecoleclasse
    ADD CONSTRAINT ecoleclasse_pkey PRIMARY KEY (id);


--
-- Name: edtclasse edtclasse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edtclasse
    ADD CONSTRAINT edtclasse_pkey PRIMARY KEY (id);


--
-- Name: eleveecole eleveecole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eleveecole
    ADD CONSTRAINT eleveecole_pkey PRIMARY KEY (id);


--
-- Name: etudiant etudiant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiant
    ADD CONSTRAINT etudiant_pkey PRIMARY KEY (id);


--
-- Name: etudiantecole etudiantecole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiantecole
    ADD CONSTRAINT etudiantecole_pkey PRIMARY KEY (id);


--
-- Name: ficheecolage ficheecolage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficheecolage
    ADD CONSTRAINT ficheecolage_pkey PRIMARY KEY (id);


--
-- Name: fraisdescolarite fraisdescolarite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fraisdescolarite
    ADD CONSTRAINT fraisdescolarite_pkey PRIMARY KEY (id);


--
-- Name: horaireprof horaireprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaireprof
    ADD CONSTRAINT horaireprof_pkey PRIMARY KEY (id);


--
-- Name: jours jours_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jours
    ADD CONSTRAINT jours_pkey PRIMARY KEY (id);


--
-- Name: matiere matiere_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiere
    ADD CONSTRAINT matiere_pkey PRIMARY KEY (id);


--
-- Name: matiereclasse matiereclasse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiereclasse
    ADD CONSTRAINT matiereclasse_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: niveau niveau_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.niveau
    ADD CONSTRAINT niveau_pkey PRIMARY KEY (id);


--
-- Name: noteetudiantecole noteetudiantecole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noteetudiantecole
    ADD CONSTRAINT noteetudiantecole_pkey PRIMARY KEY (id);


--
-- Name: offreecole offreecole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offreecole
    ADD CONSTRAINT offreecole_pkey PRIMARY KEY (id);


--
-- Name: parentetudiant parentetudiant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parentetudiant
    ADD CONSTRAINT parentetudiant_pkey PRIMARY KEY (id);


--
-- Name: professeur professeur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professeur
    ADD CONSTRAINT professeur_pkey PRIMARY KEY (id);


--
-- Name: profil profil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profil
    ADD CONSTRAINT profil_pkey PRIMARY KEY (id);


--
-- Name: programmescolaire programmescolaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programmescolaire
    ADD CONSTRAINT programmescolaire_pkey PRIMARY KEY (id);


--
-- Name: reponseoffre reponseoffre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponseoffre
    ADD CONSTRAINT reponseoffre_pkey PRIMARY KEY (id);


--
-- Name: retard retard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retard
    ADD CONSTRAINT retard_pkey PRIMARY KEY (id);


--
-- Name: retardeleve retardeleve_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retardeleve
    ADD CONSTRAINT retardeleve_pkey PRIMARY KEY (id);


--
-- Name: salaireprof salaireprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaireprof
    ADD CONSTRAINT salaireprof_pkey PRIMARY KEY (id);


--
-- Name: semestre semestre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semestre
    ADD CONSTRAINT semestre_pkey PRIMARY KEY (id);


--
-- Name: token token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token
    ADD CONSTRAINT token_pkey PRIMARY KEY (id);


--
-- Name: trimestre trimestre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trimestre
    ADD CONSTRAINT trimestre_pkey PRIMARY KEY (id);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: v_demandeprof v_demandeprof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_demandeprof
    ADD CONSTRAINT v_demandeprof_pkey PRIMARY KEY (row_num);


--
-- Name: v_reponseoffre v_reponseoffre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_reponseoffre
    ADD CONSTRAINT v_reponseoffre_pkey PRIMARY KEY (row_num);


--
-- Name: v_voirdemande v_voirdemande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v_voirdemande
    ADD CONSTRAINT v_voirdemande_pkey PRIMARY KEY (row_num);


--
-- Name: verifemail verifemail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verifemail
    ADD CONSTRAINT verifemail_pkey PRIMARY KEY (id);


--
-- Name: absence absence_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absence
    ADD CONSTRAINT absence_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: absence absence_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absence
    ADD CONSTRAINT absence_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiantecole(id);


--
-- Name: absenceeleve absenceeleve_idetudiantecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.absenceeleve
    ADD CONSTRAINT absenceeleve_idetudiantecole_fkey FOREIGN KEY (idetudiantecole) REFERENCES public.etudiantecole(id);


--
-- Name: academy academy_idtype_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academy
    ADD CONSTRAINT academy_idtype_fkey FOREIGN KEY (idtype) REFERENCES public.types(id);


--
-- Name: academyprof academyprof_academyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyprof
    ADD CONSTRAINT academyprof_academyid_fkey FOREIGN KEY (academyid) REFERENCES public.academy(id);


--
-- Name: academyprof academyprof_profid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyprof
    ADD CONSTRAINT academyprof_profid_fkey FOREIGN KEY (profid) REFERENCES public.professeur(id);


--
-- Name: academyusers academyusers_academy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyusers
    ADD CONSTRAINT academyusers_academy_id_fkey FOREIGN KEY (academy_id) REFERENCES public.academy(id);


--
-- Name: academyusers academyusers_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academyusers
    ADD CONSTRAINT academyusers_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: anneescolaire anneescolaire_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anneescolaire
    ADD CONSTRAINT anneescolaire_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: calendrierscolaire calendrierscolaire_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calendrierscolaire
    ADD CONSTRAINT calendrierscolaire_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: carneteleve carneteleve_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carneteleve
    ADD CONSTRAINT carneteleve_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiantecole(id);


--
-- Name: carnettout carnettout_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carnettout
    ADD CONSTRAINT carnettout_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: carnettout carnettout_idecoleclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carnettout
    ADD CONSTRAINT carnettout_idecoleclasse_fkey FOREIGN KEY (idecoleclasse) REFERENCES public.ecoleclasse(id);


--
-- Name: classeniveau classeniveau_idclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classeniveau
    ADD CONSTRAINT classeniveau_idclasse_fkey FOREIGN KEY (idclasse) REFERENCES public.classe(id);


--
-- Name: classeniveau classeniveau_idniveau_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classeniveau
    ADD CONSTRAINT classeniveau_idniveau_fkey FOREIGN KEY (idniveau) REFERENCES public.niveau(id);


--
-- Name: commentaires commentaires_parent_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaires
    ADD CONSTRAINT commentaires_parent_comment_id_fkey FOREIGN KEY (parent_comment_id) REFERENCES public.commentaires(id) ON DELETE CASCADE;


--
-- Name: commentaires commentaires_programmescolaireid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaires
    ADD CONSTRAINT commentaires_programmescolaireid_fkey FOREIGN KEY (programmescolaireid) REFERENCES public.programmescolaire(id);


--
-- Name: commentaires commentaires_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaires
    ADD CONSTRAINT commentaires_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);


--
-- Name: critereprof critereprof_idprof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.critereprof
    ADD CONSTRAINT critereprof_idprof_fkey FOREIGN KEY (idprof) REFERENCES public.professeur(id);


--
-- Name: demandeajoutprof demandeajoutprof_idacademy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandeajoutprof
    ADD CONSTRAINT demandeajoutprof_idacademy_fkey FOREIGN KEY (idacademy) REFERENCES public.academy(id);


--
-- Name: demandeajoutprof demandeajoutprof_idprof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandeajoutprof
    ADD CONSTRAINT demandeajoutprof_idprof_fkey FOREIGN KEY (idprof) REFERENCES public.professeur(id);


--
-- Name: ecoleclasse ecoleclasse_idclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ecoleclasse
    ADD CONSTRAINT ecoleclasse_idclasse_fkey FOREIGN KEY (idclasse) REFERENCES public.classe(id);


--
-- Name: ecoleclasse ecoleclasse_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ecoleclasse
    ADD CONSTRAINT ecoleclasse_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: edtclasse edtclasse_ecoleclasse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edtclasse
    ADD CONSTRAINT edtclasse_ecoleclasse_id_fkey FOREIGN KEY (ecoleclasse_id) REFERENCES public.ecoleclasse(id);


--
-- Name: edtclasse edtclasse_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edtclasse
    ADD CONSTRAINT edtclasse_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: edtclasse edtclasse_jourid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edtclasse
    ADD CONSTRAINT edtclasse_jourid_fkey FOREIGN KEY (jourid) REFERENCES public.jours(id);


--
-- Name: edtclasse edtclasse_matiere_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edtclasse
    ADD CONSTRAINT edtclasse_matiere_id_fkey FOREIGN KEY (matiere_id) REFERENCES public.matiere(id);


--
-- Name: eleveecole eleveecole_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eleveecole
    ADD CONSTRAINT eleveecole_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: eleveecole eleveecole_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eleveecole
    ADD CONSTRAINT eleveecole_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiant(id);


--
-- Name: etudiantecole etudiantecole_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiantecole
    ADD CONSTRAINT etudiantecole_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: etudiantecole etudiantecole_idecoleclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiantecole
    ADD CONSTRAINT etudiantecole_idecoleclasse_fkey FOREIGN KEY (idecoleclasse) REFERENCES public.ecoleclasse(id);


--
-- Name: etudiantecole etudiantecole_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etudiantecole
    ADD CONSTRAINT etudiantecole_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiant(id);


--
-- Name: ficheecolage ficheecolage_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficheecolage
    ADD CONSTRAINT ficheecolage_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiantecole(id);


--
-- Name: academy fk8oj97yi06e1c91007mxx40fx5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academy
    ADD CONSTRAINT fk8oj97yi06e1c91007mxx40fx5 FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: fraisdescolarite fraisdescolarite_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fraisdescolarite
    ADD CONSTRAINT fraisdescolarite_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: fraisdescolarite fraisdescolarite_idecoleclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fraisdescolarite
    ADD CONSTRAINT fraisdescolarite_idecoleclasse_fkey FOREIGN KEY (idecoleclasse) REFERENCES public.ecoleclasse(id);


--
-- Name: horaireprof horaireprof_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaireprof
    ADD CONSTRAINT horaireprof_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: horaireprof horaireprof_jourid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaireprof
    ADD CONSTRAINT horaireprof_jourid_fkey FOREIGN KEY (jourid) REFERENCES public.jours(id);


--
-- Name: horaireprof horaireprof_profid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaireprof
    ADD CONSTRAINT horaireprof_profid_fkey FOREIGN KEY (profid) REFERENCES public.professeur(id);


--
-- Name: matiereclasse matiereclasse_ecoleclasse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiereclasse
    ADD CONSTRAINT matiereclasse_ecoleclasse_id_fkey FOREIGN KEY (ecoleclasse_id) REFERENCES public.ecoleclasse(id);


--
-- Name: matiereclasse matiereclasse_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiereclasse
    ADD CONSTRAINT matiereclasse_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: matiereclasse matiereclasse_matiere_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiereclasse
    ADD CONSTRAINT matiereclasse_matiere_id_fkey FOREIGN KEY (matiere_id) REFERENCES public.matiere(id);


--
-- Name: matiereclasse matiereclasse_professeur_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matiereclasse
    ADD CONSTRAINT matiereclasse_professeur_id_fkey FOREIGN KEY (professeur_id) REFERENCES public.professeur(id);


--
-- Name: media media_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: media media_idecoleclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_idecoleclasse_fkey FOREIGN KEY (idecoleclasse) REFERENCES public.ecoleclasse(id);


--
-- Name: noteetudiantecole noteetudiantecole_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noteetudiantecole
    ADD CONSTRAINT noteetudiantecole_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiantecole(id);


--
-- Name: noteetudiantecole noteetudiantecole_idmatiereclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noteetudiantecole
    ADD CONSTRAINT noteetudiantecole_idmatiereclasse_fkey FOREIGN KEY (idmatiereclasse) REFERENCES public.matiereclasse(id);


--
-- Name: noteetudiantecole noteetudiantecole_idtrimestre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noteetudiantecole
    ADD CONSTRAINT noteetudiantecole_idtrimestre_fkey FOREIGN KEY (idtrimestre) REFERENCES public.trimestre(id);


--
-- Name: parentetudiant parentetudiant_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parentetudiant
    ADD CONSTRAINT parentetudiant_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiant(id);


--
-- Name: parentetudiant parentetudiant_idparent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parentetudiant
    ADD CONSTRAINT parentetudiant_idparent_fkey FOREIGN KEY (idparent) REFERENCES public.users(id);


--
-- Name: professeur professeur_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professeur
    ADD CONSTRAINT professeur_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: programmescolaire programmescolaire_idmatiereclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programmescolaire
    ADD CONSTRAINT programmescolaire_idmatiereclasse_fkey FOREIGN KEY (idmatiereclasse) REFERENCES public.matiereclasse(id);


--
-- Name: retard retard_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retard
    ADD CONSTRAINT retard_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: retard retard_idetudiant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retard
    ADD CONSTRAINT retard_idetudiant_fkey FOREIGN KEY (idetudiant) REFERENCES public.etudiantecole(id);


--
-- Name: retardeleve retardeleve_idetudiantecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.retardeleve
    ADD CONSTRAINT retardeleve_idetudiantecole_fkey FOREIGN KEY (idetudiantecole) REFERENCES public.etudiantecole(id);


--
-- Name: salaireprof salaireprof_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaireprof
    ADD CONSTRAINT salaireprof_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: salaireprof salaireprof_idecoleclasse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaireprof
    ADD CONSTRAINT salaireprof_idecoleclasse_fkey FOREIGN KEY (idecoleclasse) REFERENCES public.ecoleclasse(id);


--
-- Name: trimestre trimestre_idanneescolaire_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trimestre
    ADD CONSTRAINT trimestre_idanneescolaire_fkey FOREIGN KEY (idanneescolaire) REFERENCES public.anneescolaire(id);


--
-- Name: trimestre trimestre_idecole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trimestre
    ADD CONSTRAINT trimestre_idecole_fkey FOREIGN KEY (idecole) REFERENCES public.academy(id);


--
-- Name: users users_profil_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_profil_id_fkey FOREIGN KEY (profil_id) REFERENCES public.profil(id);


--
-- PostgreSQL database dump complete
--

-- stageBdd.sql

-- Affichage de stageBdd.sql