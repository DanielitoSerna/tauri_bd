CREATE TABLE IF NOT EXISTS taurischema.pais
(
    codigo integer NOT NULL,
    pais character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pais_pkey PRIMARY KEY (codigo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.pais OWNER to usertauri;


INSERT INTO taurischema.pais VALUES (1, 'Colombia');
INSERT INTO taurischema.pais VALUES (2, 'Argentina');
INSERT INTO taurischema.pais VALUES (3, 'Uruguay');
INSERT INTO taurischema.pais VALUES (4, 'Chile');
INSERT INTO taurischema.pais VALUES (5, 'Paraguay');
INSERT INTO taurischema.pais VALUES (6, 'Perú');
INSERT INTO taurischema.pais VALUES (7, 'Ecuador');
INSERT INTO taurischema.pais VALUES (8, 'Venezuela');
INSERT INTO taurischema.pais VALUES (9, 'Panamá');
INSERT INTO taurischema.pais VALUES (10, 'Costa Rica');
INSERT INTO taurischema.pais VALUES (11, 'Nicaragua');
INSERT INTO taurischema.pais VALUES (12, 'Honduras');
INSERT INTO taurischema.pais VALUES (13, 'El Salvador,');
INSERT INTO taurischema.pais VALUES (14, 'Guatemala');
INSERT INTO taurischema.pais VALUES (15, 'México');
INSERT INTO taurischema.pais VALUES (16, 'República Dominicana');
INSERT INTO taurischema.pais VALUES (17, 'USA');
INSERT INTO taurischema.pais VALUES (18, 'Canadá');
INSERT INTO taurischema.pais VALUES (19, 'Brasil');
INSERT INTO taurischema.pais VALUES (20, 'Bolivia');
INSERT INTO taurischema.pais VALUES (21, 'Cuba');
