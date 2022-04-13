CREATE TABLE MUNICIPIO (
  id  SERIAL,
  codigo INT NOT NULL,
  municipio character varying(100) NOT NULL,
  idDepartamento INTEGER NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idDepartamento)
      REFERENCES DEPARTAMENTO (codigo)
);