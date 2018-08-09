CREATE DATABASE bigbadabom;
CREATE ROLE reader WITH LOGIN PASSWORD 'reader';

CREATE SCHEMA data;

GRANT USAGE ON SCHEMA data TO reader;
GRANT USAGE ON SCHEMA public TO reader;

GRANT SELECT ON ALL TABLES IN SCHEMA data TO reader;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO reader;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO reader;