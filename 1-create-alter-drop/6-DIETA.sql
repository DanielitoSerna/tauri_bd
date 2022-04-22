-- Table: taurischema.dieta

-- DROP TABLE IF EXISTS taurischema.dieta;

CREATE TABLE IF NOT EXISTS taurischema.dieta
(
    id integer NOT NULL DEFAULT nextval('taurischema.dieta_id_seq'::regclass),
    id_entrada integer NOT NULL,
    id_biblioteca integer NOT NULL,
    cantidad double precision NOT NULL,
    cantidad_ofrecido double precision NOT NULL,
    precio double precision NOT NULL,
    CONSTRAINT dieta_pkey PRIMARY KEY (id),
    CONSTRAINT entrada_fkey FOREIGN KEY (id_entrada)
        REFERENCES taurischema.entrada (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT biblioteca_fkey FOREIGN KEY (id_biblioteca)
        REFERENCES taurischema.biblioteca (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.dieta
    OWNER to usertauri;