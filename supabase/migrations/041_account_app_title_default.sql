-- Keep the account title default aligned with the current app branding.
ALTER TABLE accounts
  ALTER COLUMN app_title SET DEFAULT 'CRM';

UPDATE accounts
SET app_title = 'CRM'
WHERE app_title = 'CRM Template for WhatsApp';