# Business Keys & Primary Keys

## Telecom Operational Source System

### Client

Business Key:
Customer_ID

Candidate Primary Key:
Customer_ID

Status:
To Be Validated

---

### Record

Business Key:
Customer_ID

Candidate Primary Key:
Customer_ID

Status:
To Be Validated

---

## IBM Telecom Benchmark

### Services

Business Key:
Customer ID

Candidate Primary Key:
Customer ID

Status:
To Be Validated

---

### Status

Business Key:
Customer ID

Candidate Primary Key:
Customer ID

Status:
To Be Validated


# Foreign Key Design

## Telecom Operational Source System

Relationship

Client
(Customer_ID)
        │
        │
        ▼
Record
(Customer_ID)

Relationship Type:
One-to-One (To Be Validated)

Foreign Key:
Record.Customer_ID
→
Client.Customer_ID

---

## IBM Telecom Benchmark

Relationship

Services
(Customer ID)
        │
        │
        ▼
Status
(Customer ID)

Relationship Type:
One-to-One (To Be Validated)

Foreign Key:
Status.Customer ID
→
Services.Customer ID

---

## Cross-System

No Foreign Keys exist between:

- Client / Record
and
- Services / Status

Reason:
Independent source systems.


# Star Schema

## Fact Table

fact_customer

Contains customer-level business metrics used for reporting.

Examples:
- Revenue
- Usage
- Risk Score
- Churn Flag
- Customer Segment

---

## Dimension Tables

dim_customer
Customer profile and demographics.

dim_plan
Plan and subscription details.

dim_state
Customer location.

---

Power BI will connect only to the Mart layer.

# Star Schema

## Mart 1 - Customer Intelligence

Fact Table

fact_customer

Dimension Tables

dim_customer
dim_state
dim_plan

Purpose

Supports customer analytics, revenue analysis, churn prediction, customer segmentation and executive reporting.

---

## Mart 2 - IBM Telecom Benchmark

Fact Table

fact_ibm_customer

Dimension Tables

dim_contract
dim_service
dim_churn_reason

Purpose

Supports churn driver analysis, contract analysis, service adoption analysis, customer satisfaction analysis and business validation.

---

Power BI will connect only to the Mart layer.