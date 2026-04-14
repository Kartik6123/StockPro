CREATE TABLE IF NOT EXISTS stock_movements (
                                               id               BIGINT AUTO_INCREMENT PRIMARY KEY,
                                               warehouse_id     BIGINT          NOT NULL,
                                               product_id       BIGINT          NOT NULL,
                                               movement_type    ENUM('STOCK_IN','STOCK_OUT','TRANSFER') NOT NULL,
    quantity         INT             NOT NULL,
    reference_id     BIGINT          NULL,
    reference_type   VARCHAR(50)     NULL,
    notes            TEXT            NULL,
    performed_by     BIGINT          NOT NULL,
    created_at       DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_quantity_positive CHECK (quantity > 0)
    );

CREATE INDEX idx_movement_warehouse ON stock_movements(warehouse_id);
CREATE INDEX idx_movement_product   ON stock_movements(product_id);
CREATE INDEX idx_movement_type      ON stock_movements(movement_type);
CREATE INDEX idx_movement_created   ON stock_movements(created_at);