
--liquibase formatted sql

--changeset estudiante:002
CREATE TABLE IF NOT EXISTS workspace.bronze.products_raw (
    product_id BIGINT,
    product_name STRING,
    category STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.products_raw;
