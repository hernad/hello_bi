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
      id_grupa bigint, 
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

DROP TABLE IF EXISTS public.dim_vrij_rac CASCADE;
CREATE TABLE "public".dim_vrij_rac
(
      id BIGSERIAL PRIMARY KEY, 
      d_limit int,
      g_limit int,
      opis text
);

DROP TABLE IF EXISTS public.dt_vrijeme CASCADE;
CREATE TABLE "public".dt_vrijeme
(
      dat date PRIMARY KEY, 
      god int,
      mjes int,
      dan int,
      dan_u_hefti int,
      hefta_opis text,
      hefta_opis_skr text,
      mjes_opis text,
      mjes_opis_skr text
);


DROP TABLE IF EXISTS public.ft_fakt CASCADE;
CREATE TABLE "public".ft_fakt
(
      id BIGSERIAL PRIMARY KEY,
      dat date, 
      id_art bigint,
      id_partner bigint,
      kolicina numeric(14,4),
      cijena numeric(14,4),
      vrijednost numeric(18,2)
);



