-- Table: taurischema.municipio

-- DROP TABLE IF EXISTS taurischema.municipio;

CREATE TABLE IF NOT EXISTS taurischema.municipio
(
    id integer NOT NULL DEFAULT nextval('taurischema.municipio_id_seq'::regclass),
    codigo integer NOT NULL,
    municipio character varying(100) COLLATE pg_catalog."default" NOT NULL,
    iddepartamento integer NOT NULL,
    CONSTRAINT municipio_pkey PRIMARY KEY (id),
    CONSTRAINT municipio_iddepartamento_fkey FOREIGN KEY (iddepartamento)
        REFERENCES taurischema.departamento (codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.municipio
    OWNER to usertauri;