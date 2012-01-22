DROP TABLE IF EXISTS public.dim_gradovi CASCADE;

CREATE TABLE "public".dim_gradovi
(
  grad_id BIGSERIAL PRIMARY KEY, 
  grad TEXT
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


DROP TABLE IF EXISTS public.dim_art_kategorije CASCADE;
CREATE TABLE "public".dim_art_kategorije
(
  kateg_id BIGSERIAL PRIMARY KEY
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


DROP TABLE IF EXISTS public.dim_partneri CASCADE;
CREATE TABLE "public".dim_partneri
(
  partner_id BIGSERIAL PRIMARY KEY
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


DROP TABLE IF EXISTS public.dim_artikli CASCADE;
CREATE TABLE "public".dim_artikli
(
  artikal_id BIGSERIAL PRIMARY KEY
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


DROP TABLE IF EXISTS public.dim_cijene CASCADE;
CREATE TABLE "public".dim_cijene
(
  cijena_id BIGSERIAL PRIMARY KEY
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

DROP TABLE IF EXISTS public.dim_time CASCADE;
CREATE TABLE "public".dim_time
(
  time_id BIGSERIAL PRIMARY KEY
, "year" int
, "month" int
, "day" int
, day_of_week int
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

DROP TABLE IF EXISTS public.fact_invoices CASCADE;

CREATE TABLE "public".fact_invoices
(
  fact_id bigint PRIMARY KEY
, prodaja DOUBLE PRECISION
, kolicina DOUBLE PRECISION
, grad_id BIGINT REFERENCES dim_gradovi
, kateg_id BIGINT REFERENCES dim_art_kategorije
, partner_id BIGINT REFERENCES dim_partneri
, artikal_id BIGINT REFERENCES dim_artikli
, cijena_id BIGINT REFERENCES dim_cijene
, time_id BIGINT REFERENCES dim_time
)
;


