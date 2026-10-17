-- =============================================================================
-- Migration: 000_database_creation.sql
-- Description: Initial database schema setup with system metadata tracking.
-- Dialect: MySQL 5.7+ / MySQL 8.0+ / MariaDB 10.3+
-- =============================================================================

CREATE TABLE IF NOT EXISTS `system_info` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `item` VARCHAR(50) NOT NULL UNIQUE,
    `version` VARCHAR(50) NOT NULL,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Seed initial system version tracking entries
-- -----------------------------------------------------------------------------
INSERT INTO `system_info` (`item`, `version`) VALUES
    ('system', '0.0.0'),
    ('base', '1.0.0'),
    ('database', '0.5.0')
ON DUPLICATE KEY UPDATE
    `version` = VALUES(`version`),
    `updated` = CURRENT_TIMESTAMP;
