CREATE TABLE IF NOT EXISTS event_hub.notifications (
  id VARCHAR(50) NOT NULL PRIMARY KEY,
  user_id VARCHAR(50) NOT NULL,
  event_id VARCHAR(50) DEFAULT NULL,
  type VARCHAR(50) NOT NULL,
  message TEXT NOT NULL,
  is_read TINYINT(1) NOT NULL DEFAULT 0,
  created_at DATETIME NOT NULL,
  KEY idx_notifications_user_created (user_id, created_at, id),
  KEY idx_notifications_user_read (user_id, is_read),
  KEY idx_notifications_reminder (user_id, event_id, type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;