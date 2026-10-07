CREATE TABLE products (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    furnace_plc_identifier TINYINT UNSIGNED NOT NULL,
    produced_at DATETIME(3) NOT NULL,
    hardness SMALLINT NOT NULL,
    stored_at TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    CONSTRAINT chk_products_furnace_plc_identifier CHECK (furnace_plc_identifier BETWEEN 1 AND 3),

    INDEX idx_products_furnace (furnace_plc_identifier),
    INDEX idx_products_produced_at (produced_at)
);
