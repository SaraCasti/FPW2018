/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  sary
 * Created: May 7, 2018
 */

CREATE TABLE utente(
    id INTEGER primary key GENERATED BY DEFAULT AS IDENTITY,
    nome VARCHAR(32),
    cognome VARCHAR(32),
    email VARCHAR(64) unique,
    urlImgProfile VARCHAR(512),
    password VARCHAR(64),
    is_autore INTEGER
);


CREATE TABLE notizia(
    id INTEGER GENERATED BY DEFAULT AS IDENTITY,
    titolo VARCHAR(32) UNIQUE,
    content VARCHAR(1024),
    url VARCHAR(64),
    categoria INTEGER,
    autore INTEGER REFERENCES utente(id)
);