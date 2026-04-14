CREATE TABLE IF NOT EXISTS products (
                                        id              BIGINT AUTO_INCREMENT PRIMARY KEY,
                                        name            VARCHAR(150)        NOT NULL,
    sku             VARCHAR(100)        NOT NULL UNIQUE,
    price           DECIMAL(10,2)       NOT NULL,
    reorder_level   INT                 NOT NULL DEFAULT 0,
    barcode         VARCHAR(100),
    is_active       BOOLEAN             NOT NULL DEFAULT TRUE,
    created_at      DATETIME            NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      DATETIME            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );