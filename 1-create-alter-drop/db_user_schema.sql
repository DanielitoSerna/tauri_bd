CREATE USER usertauri WITH PASSWORD '123456';

CREATE DATABASE tauridb WITH OWNER usertauri;

CREATE SCHEMA IF NOT EXISTS taurischema AUTHORIZATION usertauri;