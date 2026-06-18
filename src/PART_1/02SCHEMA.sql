

-- Create a namespace/schema named 'basics' if it doesn't already exist.
-- Schemas are used to organize database objects (like tables, views, etc.) into logical groups.
CREATE SCHEMA IF NOT EXISTS basics;

-- Enable the 'pgcrypto' extension in the database.
-- This extension provides cryptographic functions, such as gen_random_uuid(), which is useful for generating UUID primary keys.
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Query the information schema to list all schemas present in the database.
-- ORDER BY schema_name sorts the resulting list alphabetically.
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;




