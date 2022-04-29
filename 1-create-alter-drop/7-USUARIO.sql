CREATE TABLE IF NOT EXISTS taurischema.usuario
(
    id integer NOT NULL DEFAULT nextval('taurischema.usuario_id_seq'::regclass),
    nombres varchar(200) null,
    apellidos varchar(200) null,
    correo varchar(100) null,
    tipo char(1) not null,
    fecha_creacion timestamp not null,
    fecha_sesion timestamp null,
    CONSTRAINT usuario_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS taurischema.usuario
    OWNER to usertauri;
