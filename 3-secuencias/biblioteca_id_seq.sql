-- SEQUENCE: taurischema.biblioteca_id_seq

-- DROP SEQUENCE IF EXISTS taurischema.biblioteca_id_seq;

CREATE SEQUENCE IF NOT EXISTS taurischema.biblioteca_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE taurischema.biblioteca_id_seq
    OWNER TO usertauri;