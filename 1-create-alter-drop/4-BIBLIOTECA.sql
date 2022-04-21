-- Table: taurischema.biblioteca

-- DROP TABLE IF EXISTS taurischema.biblioteca;

CREATE TABLE IF NOT EXISTS taurischema.biblioteca
(
    id integer NOT NULL DEFAULT nextval('taurischema.biblioteca_id_seq'::regclass),
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    categoria character varying(100) COLLATE pg_catalog."default" NOT NULL,
    tipo character varying(50) COLLATE pg_catalog."default" NOT NULL,
    ms double precision,
    ed double precision,
    fda double precision,
    fdn double precision,
    pb double precision,
    almidon double precision,
    fraccion_a double precision,
    fraccion_b double precision,
    fraccion_c double precision,
    digestabilidad_pndr double precision,
    kd_fraccion_b double precision,
    pndr double precision,
    grasa_cruda double precision,
    cenizas double precision,
    porcentaje_ca double precision,
    porcentaje_p double precision,
    porcentaje_na double precision,
    porcentaje_cl double precision,
    porcentaje_k double precision,
    porcentaje_mg double precision,
    porcentaje_s double precision,
    coeficiente_absorcion_ca double precision,
    coeficiente_absorcion_p double precision,
    coeficiente_absorcion_na double precision,
    coeficiente_absorcion_cl double precision,
    coeficiente_absorcion_k double precision,
    usuario character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT biblioteca_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.biblioteca
    OWNER to usertauri;