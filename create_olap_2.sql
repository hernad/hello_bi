DROP TABLE IF EXISTS public.dim_g CASCADE;
CREATE TABLE "public".dim_g
(
      id BIGSERIAL PRIMARY KEY, 
      grad varchar(100),
      region varchar(10) 
);

DROP TABLE IF EXISTS public.dim_par CASCADE;
CREATE TABLE "public".dim_par
(
      id BIGSERIAL PRIMARY KEY, 
      bk_idpartner text,
      id_grad bigint DEFAULT NULL REFERENCES dim_g(id)  ON DELETE SET NULL ON UPDATE SET NULL 
);


DROP TABLE IF EXISTS public.dim_art_gru CASCADE;
CREATE TABLE "public".dim_art_gru
(
      id BIGSERIAL PRIMARY KEY, 
      grupa text
);

DROP TABLE IF EXISTS public.dim_art CASCADE;
CREATE TABLE "public".dim_art
(
      id BIGSERIAL PRIMARY KEY, 
      bk_idroba text,
      naziv text,
      kategorija text,
      id_grupa bigint REFERENCES dim_art_gru(id), 
      nc numeric(12,2),
      vpc numeric(12,2),
      mpc numeric(12,2)
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
      dat date          REFERENCES dt_vrijeme(dat) ON DELETE SET NULL ON UPDATE SET NULL , 
      id_artikal bigint default NULL REFERENCES dim_art(id) ON DELETE SET NULL ON UPDATE SET NULL ,
      id_partner bigint default NULL REFERENCES dim_par(id) ON DELETE SET NULL ON UPDATE SET NULL ,
      kolicina numeric(14,4),
      cijena numeric(14,4),
      vrijednost numeric(18,2)
);



