DROP TABLE IF EXISTS public.dim_g CASCADE;

CREATE TABLE "public".dim_g
(
      id BIGSERIAL PRIMARY KEY, 
      grad varchar(100),
      region varchar(10) 
);


DROP TABLE IF EXISTS public.dim_part CASCADE;
CREATE TABLE "public".dim_part
(
      id BIGSERIAL PRIMARY KEY, 
      idpartn varchar(6) 
);

DROP TABLE IF EXISTS public.dim_art CASCADE;
CREATE TABLE "public".dim_art
(
      id BIGSERIAL PRIMARY KEY, 
      idroba text,
      naziv text,
      kategorija text,
      grupa_id bigint, 
      nc numeric(12,2),
      vpc numeric(12,2),
      mpc numeric(12,2)
);

DROP TABLE IF EXISTS public.dim_art_gru CASCADE;
CREATE TABLE "public".dim_art_gru
(
      id BIGSERIAL PRIMARY KEY, 
      grupa text
);

