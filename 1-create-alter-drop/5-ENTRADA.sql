-- Table: taurischema.entrada

-- DROP TABLE IF EXISTS taurischema.entrada;

CREATE TABLE IF NOT EXISTS taurischema.entrada
(
    id integer NOT NULL DEFAULT nextval('taurischema.entrada_id_seq'::regclass),
    nombre_reporte character varying(255) COLLATE pg_catalog."default" NOT NULL,
    pais character varying(100) COLLATE pg_catalog."default" NOT NULL,
    departamento integer NOT NULL,
    municipio integer NOT NULL,
    raza character varying(100) COLLATE pg_catalog."default" NOT NULL,
    tipo_animal character varying(100) COLLATE pg_catalog."default" NOT NULL,
    peso_corporal double precision NOT NULL,
    condicion_corporal double precision NOT NULL,
    dias_leche double precision NOT NULL,
    dias_prenez double precision NOT NULL,
    numero_partos integer NOT NULL,
    intervalo_partos integer NOT NULL,
    grasa double precision NOT NULL,
    proteina_cruda double precision NOT NULL,
    lactosa double precision NOT NULL,
    precio_venta double precision NOT NULL,
    manejo character varying(100) COLLATE pg_catalog."default" NOT NULL,
    distancia double precision,
    numero_viajes double precision,
    tipografia character varying(100) COLLATE pg_catalog."default",
	usuario character varying(100) COLLATE pg_catalog."default" NOT NULL,
	fecha_creacion timestamp,
    CONSTRAINT entrada_pkey PRIMARY KEY (id),
    CONSTRAINT departamento_fkey FOREIGN KEY (departamento)
        REFERENCES taurischema.departamento (codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT municipio_fkey FOREIGN KEY (municipio)
        REFERENCES taurischema.municipio (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.entrada
    OWNER to usertauri;
    
    
alter table taurischema.entrada drop column pais;
