-- Table: taurischema.departamento

-- DROP TABLE IF EXISTS taurischema.departamento;

CREATE TABLE IF NOT EXISTS taurischema.departamento
(
    codigo integer NOT NULL,
    departamento character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departamento_pkey PRIMARY KEY (codigo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.departamento OWNER to usertauri;
    
    
ALTER TABLE taurischema.departamento ADD pais integer;
ALTER TABLE taurischema.departamento ADD FOREIGN KEY (pais) REFERENCES taurischema.pais(codigo);

