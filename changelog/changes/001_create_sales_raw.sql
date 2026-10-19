
--liquibase formatted sql

--changeset estudiante:001
CREATE TABLE IF NOT EXISTS workspace.bronze.sales_raw (
    sale_id BIGINT,
    sale_date DATE,
    product_id BIGINT,
    quantity INT,
    unit_price DECIMAL(12,2),
    sales_amount DECIMAL(14,2),
    customer_id BIGINT,
    store_id BIGINT
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.sales_raw;
