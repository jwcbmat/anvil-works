CREATE TABLE furnaces (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,
    plc_identifier TINYINT UNSIGNED NOT NULL,

    created_at TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    updated_at TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    CONSTRAINT uq_furnaces_plc_identifier UNIQUE (plc_identifier),
    CONSTRAINT chk_furnaces_plc_identifier CHECK (plc_identifier BETWEEN 1 AND 3)
);
