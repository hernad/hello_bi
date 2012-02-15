DROP TABLE IF EXISTS public.dim_g CASCADE;

CREATE TABLE "public".dim_g
(
      id BIGSERIAL PRIMARY KEY, 
      grad varchar(100),
      region varchar(10) 
);


CREATE TABLE "public".dim_part
(
      id BIGSERIAL PRIMARY KEY, 
      idpartn varchar(6) 
);

