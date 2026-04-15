--
-- PostgreSQL database dump
--

-- Dumped from database version 15.14 (Debian 15.14-1.pgdg13+1)
-- Dumped by pg_dump version 17.5

-- Started on 2026-01-14 23:40:37

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
-- TOC entry 237 (class 1259 OID 17078)
-- Name: activation_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activation_tokens (
    id integer NOT NULL,
    token character varying NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone,
    expires_at timestamp without time zone NOT NULL,
    used boolean
);


ALTER TABLE public.activation_tokens OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 17077)
-- Name: activation_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activation_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.activation_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 236
-- Name: activation_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activation_tokens_id_seq OWNED BY public.activation_tokens.id;


--
-- TOC entry 223 (class 1259 OID 16957)
-- Name: gender; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gender (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.gender OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16956)
-- Name: gender_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gender_id_seq OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 222
-- Name: gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gender_id_seq OWNED BY public.gender.id;


--
-- TOC entry 241 (class 1259 OID 17109)
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying NOT NULL,
    message character varying NOT NULL,
    type character varying NOT NULL,
    read boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 17108)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notifications_id_seq OWNER TO postgres;

--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 240
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 227 (class 1259 OID 16977)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    id integer NOT NULL,
    email character varying,
    token character varying,
    expiration timestamp without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16976)
-- Name: password_resets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.password_resets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.password_resets_id_seq OWNER TO postgres;

--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 226
-- Name: password_resets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.password_resets_id_seq OWNED BY public.password_resets.id;


--
-- TOC entry 215 (class 1259 OID 16912)
-- Name: permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permission (
    id integer NOT NULL,
    name character varying,
    description character varying,
    category character varying
);


ALTER TABLE public.permission OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16911)
-- Name: permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permission_id_seq OWNER TO postgres;

--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 214
-- Name: permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permission_id_seq OWNED BY public.permission.id;


--
-- TOC entry 235 (class 1259 OID 17062)
-- Name: pre_register_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pre_register_tokens (
    id integer NOT NULL,
    token character varying NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone,
    expires_at timestamp without time zone NOT NULL,
    used boolean
);


ALTER TABLE public.pre_register_tokens OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 17061)
-- Name: pre_register_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pre_register_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pre_register_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 234
-- Name: pre_register_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pre_register_tokens_id_seq OWNED BY public.pre_register_tokens.id;


--
-- TOC entry 219 (class 1259 OID 16935)
-- Name: revoked_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.revoked_tokens (
    id integer NOT NULL,
    token character varying NOT NULL,
    expires_at timestamp without time zone NOT NULL
);


ALTER TABLE public.revoked_tokens OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16934)
-- Name: revoked_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.revoked_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.revoked_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 218
-- Name: revoked_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.revoked_tokens_id_seq OWNED BY public.revoked_tokens.id;


--
-- TOC entry 229 (class 1259 OID 16989)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id integer NOT NULL,
    name character varying(50),
    description character varying,
    status integer NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16988)
-- Name: rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_id_seq OWNER TO postgres;

--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 228
-- Name: rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_id_seq OWNED BY public.rol.id;


--
-- TOC entry 233 (class 1259 OID 17046)
-- Name: rol_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol_permission (
    rol_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.rol_permission OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17094)
-- Name: social_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_accounts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    provider character varying NOT NULL,
    provider_user_id character varying NOT NULL,
    email character varying NOT NULL,
    access_token character varying,
    refresh_token character varying,
    expires_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.social_accounts OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 17093)
-- Name: social_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_accounts_id_seq OWNER TO postgres;

--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 238
-- Name: social_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_accounts_id_seq OWNED BY public.social_accounts.id;


--
-- TOC entry 225 (class 1259 OID 16967)
-- Name: status_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.status_user (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.status_user OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16966)
-- Name: status_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.status_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.status_user_id_seq OWNER TO postgres;

--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 224
-- Name: status_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.status_user_id_seq OWNED BY public.status_user.id;


--
-- TOC entry 221 (class 1259 OID 16947)
-- Name: type_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_document (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.type_document OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16946)
-- Name: type_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_document_id_seq OWNER TO postgres;

--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 220
-- Name: type_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_document_id_seq OWNED BY public.type_document.id;


--
-- TOC entry 232 (class 1259 OID 17031)
-- Name: user_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_rol (
    user_id integer NOT NULL,
    rol_id integer NOT NULL
);


ALTER TABLE public.user_rol OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17006)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying,
    password character varying,
    password_salt character varying,
    name character varying,
    email_status boolean,
    document_number bigint,
    date_issuance_document timestamp without time zone,
    type_person_id integer,
    birthday timestamp without time zone,
    gender_id integer,
    first_last_name character varying,
    second_last_name character varying,
    address character varying,
    profile_picture character varying,
    phone character varying,
    country character varying,
    department character varying,
    city integer,
    first_login_complete boolean,
    type_document_id integer,
    status_id integer,
    last_pre_register_attempt timestamp without time zone,
    pre_register_attempts integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17005)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 230
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 217 (class 1259 OID 16925)
-- Name: vars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vars (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.vars OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16924)
-- Name: vars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vars_id_seq OWNER TO postgres;

--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 216
-- Name: vars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vars_id_seq OWNED BY public.vars.id;


--
-- TOC entry 3341 (class 2604 OID 17081)
-- Name: activation_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activation_tokens ALTER COLUMN id SET DEFAULT nextval('public.activation_tokens_id_seq'::regclass);


--
-- TOC entry 3335 (class 2604 OID 16960)
-- Name: gender id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gender ALTER COLUMN id SET DEFAULT nextval('public.gender_id_seq'::regclass);


--
-- TOC entry 3343 (class 2604 OID 17112)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 3337 (class 2604 OID 16980)
-- Name: password_resets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets ALTER COLUMN id SET DEFAULT nextval('public.password_resets_id_seq'::regclass);


--
-- TOC entry 3331 (class 2604 OID 16915)
-- Name: permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission ALTER COLUMN id SET DEFAULT nextval('public.permission_id_seq'::regclass);


--
-- TOC entry 3340 (class 2604 OID 17065)
-- Name: pre_register_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_register_tokens ALTER COLUMN id SET DEFAULT nextval('public.pre_register_tokens_id_seq'::regclass);


--
-- TOC entry 3333 (class 2604 OID 16938)
-- Name: revoked_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revoked_tokens ALTER COLUMN id SET DEFAULT nextval('public.revoked_tokens_id_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 16992)
-- Name: rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);


--
-- TOC entry 3342 (class 2604 OID 17097)
-- Name: social_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_accounts ALTER COLUMN id SET DEFAULT nextval('public.social_accounts_id_seq'::regclass);


--
-- TOC entry 3336 (class 2604 OID 16970)
-- Name: status_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status_user ALTER COLUMN id SET DEFAULT nextval('public.status_user_id_seq'::regclass);


--
-- TOC entry 3334 (class 2604 OID 16950)
-- Name: type_document id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_document ALTER COLUMN id SET DEFAULT nextval('public.type_document_id_seq'::regclass);


--
-- TOC entry 3339 (class 2604 OID 17009)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3332 (class 2604 OID 16928)
-- Name: vars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vars ALTER COLUMN id SET DEFAULT nextval('public.vars_id_seq'::regclass);


--
-- TOC entry 3390 (class 2606 OID 17085)
-- Name: activation_tokens activation_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activation_tokens
    ADD CONSTRAINT activation_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3362 (class 2606 OID 16964)
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);


--
-- TOC entry 3398 (class 2606 OID 17116)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 16984)
-- Name: password_resets password_resets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 16919)
-- Name: permission permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 17069)
-- Name: pre_register_tokens pre_register_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_register_tokens
    ADD CONSTRAINT pre_register_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 16942)
-- Name: revoked_tokens revoked_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revoked_tokens
    ADD CONSTRAINT revoked_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 16944)
-- Name: revoked_tokens revoked_tokens_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revoked_tokens
    ADD CONSTRAINT revoked_tokens_token_key UNIQUE (token);


--
-- TOC entry 3384 (class 2606 OID 17050)
-- Name: rol_permission rol_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_permission
    ADD CONSTRAINT rol_permission_pkey PRIMARY KEY (rol_id, permission_id);


--
-- TOC entry 3376 (class 2606 OID 16996)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3395 (class 2606 OID 17101)
-- Name: social_accounts social_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_accounts
    ADD CONSTRAINT social_accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3366 (class 2606 OID 16974)
-- Name: status_user status_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status_user
    ADD CONSTRAINT status_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 16954)
-- Name: type_document type_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_document
    ADD CONSTRAINT type_document_pkey PRIMARY KEY (id);


--
-- TOC entry 3382 (class 2606 OID 17035)
-- Name: user_rol user_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_rol
    ADD CONSTRAINT user_rol_pkey PRIMARY KEY (user_id, rol_id);


--
-- TOC entry 3380 (class 2606 OID 17013)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 16932)
-- Name: vars vars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vars
    ADD CONSTRAINT vars_pkey PRIMARY KEY (id);


--
-- TOC entry 3391 (class 1259 OID 17092)
-- Name: ix_activation_tokens_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_activation_tokens_id ON public.activation_tokens USING btree (id);


--
-- TOC entry 3392 (class 1259 OID 17091)
-- Name: ix_activation_tokens_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_activation_tokens_token ON public.activation_tokens USING btree (token);


--
-- TOC entry 3363 (class 1259 OID 16965)
-- Name: ix_gender_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_gender_id ON public.gender USING btree (id);


--
-- TOC entry 3396 (class 1259 OID 17122)
-- Name: ix_notifications_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_notifications_id ON public.notifications USING btree (id);


--
-- TOC entry 3367 (class 1259 OID 16987)
-- Name: ix_password_resets_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_password_resets_email ON public.password_resets USING btree (email);


--
-- TOC entry 3368 (class 1259 OID 16985)
-- Name: ix_password_resets_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_password_resets_id ON public.password_resets USING btree (id);


--
-- TOC entry 3369 (class 1259 OID 16986)
-- Name: ix_password_resets_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_password_resets_token ON public.password_resets USING btree (token);


--
-- TOC entry 3344 (class 1259 OID 16923)
-- Name: ix_permission_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_permission_category ON public.permission USING btree (category);


--
-- TOC entry 3345 (class 1259 OID 16922)
-- Name: ix_permission_description; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_permission_description ON public.permission USING btree (description);


--
-- TOC entry 3346 (class 1259 OID 16920)
-- Name: ix_permission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_permission_id ON public.permission USING btree (id);


--
-- TOC entry 3347 (class 1259 OID 16921)
-- Name: ix_permission_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_permission_name ON public.permission USING btree (name);


--
-- TOC entry 3385 (class 1259 OID 17075)
-- Name: ix_pre_register_tokens_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_pre_register_tokens_id ON public.pre_register_tokens USING btree (id);


--
-- TOC entry 3386 (class 1259 OID 17076)
-- Name: ix_pre_register_tokens_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_pre_register_tokens_token ON public.pre_register_tokens USING btree (token);


--
-- TOC entry 3353 (class 1259 OID 16945)
-- Name: ix_revoked_tokens_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_revoked_tokens_id ON public.revoked_tokens USING btree (id);


--
-- TOC entry 3372 (class 1259 OID 17003)
-- Name: ix_rol_description; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_rol_description ON public.rol USING btree (description);


--
-- TOC entry 3373 (class 1259 OID 17002)
-- Name: ix_rol_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_rol_id ON public.rol USING btree (id);


--
-- TOC entry 3374 (class 1259 OID 17133)
-- Name: ix_rol_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_rol_name ON public.rol USING btree (name);


--
-- TOC entry 3393 (class 1259 OID 17107)
-- Name: ix_social_accounts_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_social_accounts_id ON public.social_accounts USING btree (id);


--
-- TOC entry 3364 (class 1259 OID 16975)
-- Name: ix_status_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_status_user_id ON public.status_user USING btree (id);


--
-- TOC entry 3358 (class 1259 OID 16955)
-- Name: ix_type_document_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_type_document_id ON public.type_document USING btree (id);


--
-- TOC entry 3377 (class 1259 OID 17029)
-- Name: ix_users_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_users_email ON public.users USING btree (email);


--
-- TOC entry 3378 (class 1259 OID 17030)
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


--
-- TOC entry 3350 (class 1259 OID 16933)
-- Name: ix_vars_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_vars_id ON public.vars USING btree (id);


--
-- TOC entry 3408 (class 2606 OID 17086)
-- Name: activation_tokens activation_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activation_tokens
    ADD CONSTRAINT activation_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3410 (class 2606 OID 17117)
-- Name: notifications notifications_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3407 (class 2606 OID 17070)
-- Name: pre_register_tokens pre_register_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_register_tokens
    ADD CONSTRAINT pre_register_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3405 (class 2606 OID 17056)
-- Name: rol_permission rol_permission_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_permission
    ADD CONSTRAINT rol_permission_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.permission(id);


--
-- TOC entry 3406 (class 2606 OID 17051)
-- Name: rol_permission rol_permission_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_permission
    ADD CONSTRAINT rol_permission_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.rol(id);


--
-- TOC entry 3399 (class 2606 OID 16997)
-- Name: rol rol_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_status_fkey FOREIGN KEY (status) REFERENCES public.vars(id);


--
-- TOC entry 3409 (class 2606 OID 17102)
-- Name: social_accounts social_accounts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_accounts
    ADD CONSTRAINT social_accounts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3403 (class 2606 OID 17041)
-- Name: user_rol user_rol_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_rol
    ADD CONSTRAINT user_rol_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.rol(id);


--
-- TOC entry 3404 (class 2606 OID 17036)
-- Name: user_rol user_rol_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_rol
    ADD CONSTRAINT user_rol_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3400 (class 2606 OID 17014)
-- Name: users users_gender_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES public.gender(id);


--
-- TOC entry 3401 (class 2606 OID 17024)
-- Name: users users_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status_user(id);


--
-- TOC entry 3402 (class 2606 OID 17019)
-- Name: users users_type_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_type_document_id_fkey FOREIGN KEY (type_document_id) REFERENCES public.type_document(id);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE activation_tokens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.activation_tokens TO developer;
GRANT SELECT ON TABLE public.activation_tokens TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.activation_tokens TO admin;


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 236
-- Name: SEQUENCE activation_tokens_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.activation_tokens_id_seq TO admin;


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE gender; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.gender TO developer;
GRANT SELECT ON TABLE public.gender TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.gender TO admin;


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 222
-- Name: SEQUENCE gender_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.gender_id_seq TO admin;


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE notifications; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.notifications TO developer;
GRANT SELECT ON TABLE public.notifications TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.notifications TO admin;


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 240
-- Name: SEQUENCE notifications_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.notifications_id_seq TO admin;


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE password_resets; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.password_resets TO developer;
GRANT SELECT ON TABLE public.password_resets TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.password_resets TO admin;


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 226
-- Name: SEQUENCE password_resets_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.password_resets_id_seq TO admin;


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE permission; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.permission TO developer;
GRANT SELECT ON TABLE public.permission TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.permission TO admin;


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 214
-- Name: SEQUENCE permission_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.permission_id_seq TO admin;


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE pre_register_tokens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.pre_register_tokens TO developer;
GRANT SELECT ON TABLE public.pre_register_tokens TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.pre_register_tokens TO admin;


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 234
-- Name: SEQUENCE pre_register_tokens_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.pre_register_tokens_id_seq TO admin;


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE revoked_tokens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.revoked_tokens TO developer;
GRANT SELECT ON TABLE public.revoked_tokens TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.revoked_tokens TO admin;


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 218
-- Name: SEQUENCE revoked_tokens_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.revoked_tokens_id_seq TO admin;


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE rol; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.rol TO developer;
GRANT SELECT ON TABLE public.rol TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.rol TO admin;


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 228
-- Name: SEQUENCE rol_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.rol_id_seq TO admin;


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE rol_permission; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.rol_permission TO developer;
GRANT SELECT ON TABLE public.rol_permission TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.rol_permission TO admin;


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE social_accounts; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.social_accounts TO developer;
GRANT SELECT ON TABLE public.social_accounts TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.social_accounts TO admin;


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 238
-- Name: SEQUENCE social_accounts_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.social_accounts_id_seq TO admin;


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE status_user; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.status_user TO developer;
GRANT SELECT ON TABLE public.status_user TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.status_user TO admin;


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 224
-- Name: SEQUENCE status_user_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.status_user_id_seq TO admin;


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE type_document; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.type_document TO developer;
GRANT SELECT ON TABLE public.type_document TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.type_document TO admin;


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 220
-- Name: SEQUENCE type_document_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.type_document_id_seq TO admin;


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE user_rol; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.user_rol TO developer;
GRANT SELECT ON TABLE public.user_rol TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.user_rol TO admin;


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.users TO developer;
GRANT SELECT ON TABLE public.users TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO admin;


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 230
-- Name: SEQUENCE users_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.users_id_seq TO admin;


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE vars; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.vars TO developer;
GRANT SELECT ON TABLE public.vars TO tester;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.vars TO admin;


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 216
-- Name: SEQUENCE vars_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.vars_id_seq TO admin;


-- Completed on 2026-01-14 23:40:46

--
-- PostgreSQL database dump complete
--

