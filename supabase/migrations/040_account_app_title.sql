-- ============================================================
-- 040_account_app_title.sql — account-wide browser title
-- ============================================================

ALTER TABLE accounts
  ADD COLUMN IF NOT EXISTS app_title TEXT NOT NULL DEFAULT 'CRM'
  CHECK (char_length(app_title) BETWEEN 1 AND 60);