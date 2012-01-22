CREATE TABLE "public".dim_gradovi
(
  grad_id BIGSERIAL
, grad TEXT
)
;CREATE UNIQUE INDEX idx_dim_gradovi_pk
 ON dim_gradovi
( 
  grad_id
)
;

CREATE INDEX idx_dim_gradovi_lookup
 ON dim_gradovi
( 
  grad
)
;


CREATE TABLE "public".dim_art_kategorije
(
  kateg_id BIGSERIAL
, kateg TEXT
)
;CREATE UNIQUE INDEX idx_dim_art_kategorije_pk
 ON dim_art_kategorije
( 
  kateg_id
)
;

CREATE INDEX idx_dim_art_kategorije_lookup
 ON dim_art_kategorije
( 
  kateg
)
;


CREATE TABLE "public".dim_partneri
(
  partner_id BIGSERIAL
, partner TEXT
)
;CREATE UNIQUE INDEX idx_dim_partneri_pk
 ON dim_partneri
( 
  partner_id
)
;

CREATE INDEX idx_dim_partneri_lookup
 ON dim_partneri
( 
  partner
)
;


CREATE TABLE "public".dim_artikli
(
  artikal_id BIGSERIAL
, artikal TEXT
)
;CREATE UNIQUE INDEX idx_dim_artikli_pk
 ON dim_artikli
( 
  artikal_id
)
;

CREATE INDEX idx_dim_artikli_lookup
 ON dim_artikli
( 
  artikal
)
;


CREATE TABLE "public".dim_cijene
(
  cijena_id BIGSERIAL
, cijena DOUBLE PRECISION
)
;CREATE UNIQUE INDEX idx_dim_cijene_pk
 ON dim_cijene
( 
  cijena_id
)
;

CREATE INDEX idx_dim_cijene_lookup
 ON dim_cijene
( 
  cijena
)
;


CREATE TABLE "public".dim_time
(
  time_id BIGSERIAL
, "year" DOUBLE PRECISION
, "month" DOUBLE PRECISION
, "day" DOUBLE PRECISION
, day_of_week DOUBLE PRECISION
)
;CREATE UNIQUE INDEX idx_dim_time_pk
 ON dim_time
( 
  time_id
)
;

CREATE INDEX idx_dim_time_lookup
 ON dim_time
( 
  "year"
, "month"
, "day"
, day_of_week
)
;

CREATE TABLE "public".fact_invoices
(
  fact_id DOUBLE PRECISION
, prodaja DOUBLE PRECISION
, kolicina DOUBLE PRECISION
, grad_id BIGINT
, kateg_id BIGINT
, partner_id BIGINT
, artikal_id BIGINT
, cijena_id BIGINT
, time_id BIGINT
)
;

