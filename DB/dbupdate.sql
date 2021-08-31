
ALTER TABLE users ALTER sname SET DEFAULT 'missing';
ALTER TABLE users ALTER username SET DEFAULT 'unknown';
ALTER TABLE users ALTER location SET DEFAULT 'unknown';
ALTER TABLE users ALTER type SET DEFAULT 'unknown';
ALTER TABLE users ALTER schoolArea SET DEFAULT 'unknown';
ALTER TABLE users ALTER isPasswordChanged SET DEFAULT 0;

ALTER TABLE stores ALTER ohsPurchasing SET DEFAULT 0;
ALTER TABLE stores ALTER allowOverBuying SET DEFAULT 0;
ALTER TABLE stores ALTER adGroup SET DEFAULT 'unknown';
ALTER TABLE stores ALTER loansEnabled SET DEFAULT 0;
ALTER TABLE stores ALTER ohsApproval SET DEFAULT 0;
ALTER TABLE stores ALTER loanApproval SET DEFAULT 0;
ALTER TABLE stores ALTER ordersEnabled SET DEFAULT 0;
ALTER TABLE stores ALTER markup SET DEFAULT 0;
ALTER TABLE stores ALTER confirmPurchases SET DEFAULT 0;
ALTER TABLE stores ALTER confirmCancel SET DEFAULT 0;


