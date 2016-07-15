CREATE TABLE atm_machines (
    cartodb_id integer NOT NULL,
    the_geom geometry(Geometry,4326),
    the_geom_webmercator geometry(Geometry,3857),
    bank text
);


COPY atm_machines (cartodb_id, the_geom, the_geom_webmercator, bank) FROM stdin;
1	0101000020E61000008CD6B4FFBFA90DC0A51ACDFC30344440	0101000020110F00000C3A5BCF5F3119C19081A532EFC95241	BBVA
2	0101000020E6100000D789ECFFF3660DC0A1913AC721364440	0101000020110F00003D407CC6A4F818C17C7FCE5D19CC5241	Santander
3	0101000020E61000007C0B6FFF5FAF0DC0BA886B8C88364440	0101000020110F0000AE5231CD263619C1226D9F058CCC5241	Santander
4	0101000020E61000001F98270094990DC02E67DFAAA53A4440	0101000020110F000035BF4AB5A32319C18486B53D23D15241	Santander
5	0101000020E6100000FE5A03006CFD0DC0FF74A84B6B3C4440	0101000020110F0000C54EE0D26F7819C1A689FAA21DD35241	BBVA
6	0101000020E610000044C6DDFF4B5A0DC07974A7644E384440	0101000020110F000066A0C80AE5ED18C14FD3C96A86CE5241	ING
\.


ALTER TABLE ONLY atm_machines
    ADD CONSTRAINT atm_machines_pkey PRIMARY KEY (cartodb_id);


CREATE INDEX atm_machines_the_geom_idx ON atm_machines USING gist (the_geom);


CREATE INDEX atm_machines_the_geom_webmercator_idx ON atm_machines USING gist (the_geom_webmercator);