ALTER TABLE orders ADD COLUMN alert_sent_at INTEGER;
ALTER TABLE orders ADD COLUMN alert_lock INTEGER NOT NULL DEFAULT 0;
UPDATE orders SET alert_sent_at=COALESCE(paid_at,created_at) WHERE status='paid';
