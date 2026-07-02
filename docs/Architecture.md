# Architecture

# Telecom Customer Intelligence Platform

## Source Systems

### Source System 1 – Telecom Operational Data

- Client.csv
    - Customer demographic information
    - Customer location
    - Customer profile

- Record.csv
    - Revenue
    - Usage
    - Device information
    - Customer behaviour
    - Risk indicators

### Source System 2 – IBM Telecom Benchmark

- Telco_customer_churn_services.csv
    - Customer subscriptions
    - Plans
    - Contracts
    - Internet services
    - Premium support

- Telco_customer_churn_status.csv
    - Churn status
    - Churn reasons
    - Satisfaction
    - CLTV

    # Business Entities

## 1. Customer

Represents an individual telecom customer.

Source:
- Client.csv

Primary Identifier:
- Customer_ID

---

## 2. Customer Activity

Represents customer usage, revenue, device information and historical behaviour.

Source:
- Record.csv

Primary Identifier:
- Customer_ID

---

## 3. Customer Services

Represents subscribed telecom services and plans.

Source:
- Telco_customer_churn_services.csv

Primary Identifier:
- Customer ID

---

## 4. Customer Status

Represents churn outcome, satisfaction, churn reasons and CLTV.

Source:
- Telco_customer_churn_status.csv

Primary Identifier:
- Customer ID


# Entity Relationship Diagram (Logical)

## Telecom Operational Source System

Client
   │
   │ Customer_ID (1:1)
   ▼
Record


## IBM Telecom Benchmark Source System

Services
   │
   │ Customer ID (1:1)
   ▼
Status


## Cross-System Relationship

No direct relationship exists between:

- Client / Record
- Services / Status

Reason:
These datasets originate from different source systems and represent different customer populations.

The IBM datasets are used as a business validation and benchmarking source rather than being physically joined with the operational telecom datasets.