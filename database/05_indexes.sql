
-- ==========================================================
-- TELECOM CUSTOMER INTELLIGENCE
-- Index Creation Script
-- ==========================================================

-- Customer Profile

CREATE INDEX idx_customer_profile_customer_id
ON analytics.mart_customer_profile(customer_id);

CREATE INDEX idx_customer_profile_income_segment
ON analytics.mart_customer_profile(income_segment);

CREATE INDEX idx_customer_profile_revenue_segment
ON analytics.mart_customer_profile(revenue_segment);
CREATE INDEX idx_customer_profile_usage_segment
ON analytics.mart_customer_profile(usage_segment);

CREATE INDEX idx_customer_profile_device_age
ON analytics.mart_customer_profile(device_age_group);

------------------------------------------------------------

-- Telco Churn

CREATE INDEX idx_telco_contract
ON analytics.mart_telco_churn(contract);

CREATE INDEX idx_telco_internet_type
ON analytics.mart_telco_churn(internet_type);

CREATE INDEX idx_telco_customer_status
ON analytics.mart_telco_churn(customer_status);

CREATE INDEX idx_telco_customer_id
ON analytics.mart_telco_churn(customer_id);

CREATE INDEX idx_telco_churn_label
ON analytics.mart_telco_churn(churn_label);