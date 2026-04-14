CREATE TABLE alerts (
                        id              BIGINT AUTO_INCREMENT PRIMARY KEY,
                        alert_type      VARCHAR(30)  NOT NULL,
                        reference_id    BIGINT       NULL,
                        reference_type  VARCHAR(50)  NULL,
                        message         TEXT         NOT NULL,
                        is_read         BOOLEAN      NOT NULL DEFAULT FALSE,
                        created_at      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        CONSTRAINT chk_alert_type CHECK (
                            alert_type IN ('LOW_STOCK','PO_OVERDUE','MANUAL')
                            )
);

CREATE INDEX idx_alert_type    ON alerts(alert_type);
CREATE INDEX idx_alert_is_read ON alerts(is_read);
CREATE INDEX idx_alert_created ON alerts(created_at);