/*==============================================================
11_dashboard_views.sql

Purpose:
Create reporting views for Power BI dashboards.

These views provide clean, business-ready data for reporting.

==============================================================*/

--------------------------------------------------------------
-- Dashboard Summary View
--------------------------------------------------------------

DROP VIEW IF EXISTS analytics.dashboard_telco_summary;

CREATE VIEW analytics.dashboard_telco_summary AS

SELECT

    customer_id,

    churn_value,
    churn_label,

    customer_status,

    total_revenue,
    monthly_revenue,
    total_charges,

    contract,

    internet_type,

    income,
    income_segment,

    device_age,
    device_age_group,

    high_value_customer,

    risk_score,

    revenue_contribution_percent

FROM intermediate.int_customer_profile;