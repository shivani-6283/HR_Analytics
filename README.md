# 📊 HR ANALYTICS DASHBOARD

## 📌 PROJECT OVERVIEW

This project focuses on analyzing employee data using **SQL and Power BI** to gain insights into employee attrition and workforce trends.

The analysis examines attrition across demographic, departmental, and job-related factors to identify employee segments with higher turnover. An interactive Power BI dashboard presents key HR metrics and visual insights, helping HR teams identify retention challenges, monitor workforce trends, and make data-driven decisions to improve employee retention.

---

## 🎯 BUSINESS PROBLEM

The organization operating across multiple departments and job roles. The company faces challenges in managing employee retention and maintaining a stable workforce across its business operations.

As a result, HR managers are struggling to make informed decisions about employee retention, recruitment, and workforce planning.

The organization needs better visibility into how employee satisfaction, workload demands, overtime practices relate to employee retention.

The organization therefore requires a systematic analysis of its employee data to understand attrition patterns, examine differences across departments and job roles, and assess the relationship between employee-related factors and workforce turnover.

### 🔎 Key Business Questions

- What is the organization's current workforce size and overall employee attrition count?
- Which departments and job roles are losing the largest number of employees and more likely to leave the organization?
- Does working overtime have an association with higher employee attrition?
- Which age groups have highest departures and more likely to leave the organization?
- Do job satisfaction ratings reveal any meaningful attrition patterns?
- Which Job Roles have the less risk of quitting the organization?

---

## 🗂️ DATASET OVERVIEW

The HR Analytics dataset contains employee-level records, where each row represents an individual employee. It covers various aspects of the workforce, including demographics, organisational structure, job roles, compensation, work experience, and employee satisfaction.

It includes attributes such as:

- Age
- Gender
- Education
- Department
- Business travel frequency
- Monthly income
- Years of experience
- Job satisfaction
- Attrition status

These attributes provide a comprehensive view of the organisation's workforce and help understand workforce distribution across different departments and job roles.

---

## ⚙️ PROJECT WORKFLOW

### 1. SQL Server

- **KPI Calculations:** Calculate overall workforce KPIs and attrition-specific metrics.
- **Business Analysis:** Write SQL queries to answer key HR business questions.
- **Attrition Analysis:** Analyze employee attrition across departments, age groups, gender, job roles, job satisfaction, and overtime.
- **Data Aggregation:** Calculate attrition count and attrition rate across different employee segments.

### 2. Power BI

- **Data Import & Transformation:** Import the employee dataset, review data types, and create conditional columns for analysis and sorting.
- **DAX Measures:** Develop KPI measures and dynamic calculations for workforce analysis.
- **Dynamic Reporting:** Implement Field Parameters to switch between Attrition Count and Attrition Rate, along with a dynamic employee group selector for KPI calculations.
- **Data Visualization:** Develop KPI cards, charts, and a matrix to analyze employee distribution and attrition patterns.
- **Dashboard Development:** Build an interactive HR Analytics dashboard with slicers, buttons, bookmarks, and dynamic conditional formatting.

---

##  📊 DASHBOARD PREVIEW

<!-- Add dashboard snapshots below -->

![HR Analytics Dashboard](docs/HR%20Analytics%20Dashboard.png)

---

## 🛠️ TOOLS & TECHNOLOGIES

- SQL Server (SSMS)
- Microsoft Power BI
- Power Query
- DAX (Data Analysis Expressions)

---

## 🧠 SKILLS DEMONSTRATED

- Data Transformation & Preparation
- DAX Measure Development
- Dynamic KPI Development
- Field Parameters & Disconnected Tables
- Conditional Formatting
- Interactive Dashboard Development
- Bookmarks & Button Navigation
- SQL Query Writing & Business Analysis

---

## 📍 KEY FINDINGS & BUSINESS IMPLICATIONS

### 1. 🧑‍💼 Overall Workforce & Employee Attrition

#### Key Findings

- **Total workforce:** 1,470 employees.
- **Active employees:** 1,233 employees.
- **Total attrition:** 237 employees.

**Business Implication:** The organization has a current workforce of 1,470 employees, of which 237 employees have left the organization, while 1,233 remain active resulting in an overall attrition rate of 16.12%. This provides HR with a clear baseline to monitor employee turnover and identify areas that may require improved retention strategies.

---

### 2. 👥 Age Group Analysis — Early-Career Retention Risk

#### Key Findings

- **Highest attrition rate:** Employees under 25, at **39.18%**, with 38 departures.
- **Highest departure volume:** Employees aged 25–34, with **112 departures**.

**Business Implication:** Employees under 25 experience the highest attrition rate, highlighting a potential early-career retention challenge. Meanwhile, the 25–34 age group accounts for the largest number of departures, making it an important segment for workforce retention planning.

---

### 3. 🏢 Department-Level Attrition

#### Key Findings

- **Sales:** Highest department-level attrition rate, at **20.63%**.
- **R&D:** Highest departure volume, with **133 employees leaving**.

**Business implication:** R&D requires attention because of its departure volume, while Sales warrants focused investigation because of its higher attrition rate.

---

### 4. 💼 Job Role Analysis — Identifying High-Risk Positions

#### Key Findings

#### Highest Attrition Rates

| Job Role | Attrition Rate |
|---|---:|
| Sales Representative | 39.76% |
| Laboratory Technician | 23.94% |
| Human Resources | 23.08% |

#### Highest Number of Departures

| Job Role | Departures |
|---|---:|
| Laboratory Technician | 62 |
| Sales Executive | 57 |
| Research Scientist | 47 |

#### Job Roles with the Lowest Attrition Rates

- **Research Directors:** 2.50%
- **Managers:** 4.90%

**Business implication:** Sales Representatives show the highest attrition rate, whereas Laboratory Technicians contribute the largest number of departures. Retention initiatives should consider both attrition rate and departure volume.

---

### 5. ⭐ Job Satisfaction vs. Attrition Rate

#### Key Findings

#### High Risk of Quitting at Lower Satisfaction Levels

Employees who rate their job satisfaction at **1 (Lowest)** show high attrition rates in several roles:

- **Sales Representatives:** 58.33%
- **Human Resources:** 50.00%
- **Laboratory Technicians:** 35.71%

When satisfaction improves to **Rating 4**, the exit rate drops by more than half for most roles (for example, Research Scientists drop from 24% down to 9%).

#### Mid-Rating Fluctuations (Rating 3)

The drop is not completely smooth for every role:

- In specific roles like *Lab Technicians* and *Sales Executives*, the exit rate actually goes up slightly at **Rating 3** compared to Rating 2.
- **Why?** Being moderately happy (Rating 3) is not enough to keep employees if they are working heavy **overtime** or getting **low pay**.

**Business implication:** Job satisfaction rating **associates with Attrition Rate (%)**. **Employees with low satisfaction (Rating 1) generally have a higher attrition rate.** However, because of mid-rating **Fluctuations** (Rating 3), rating is not the only cause—Other factors, such as overtime and salary, may also influence employees' decisions to leave the company.

---

### 6. ⏱️ Overtime and Employee Attrition

#### Key Findings

#### Overall Attrition Comparison

| Overtime Status | Attrition Rate |
|---|---:|
| Overtime — Yes | **30.53%** |
| Overtime — No | **10.44%** |

Employees working overtime have an attrition rate approximately **2.9 times higher** than employees who do not work overtime.

#### Highest Attrition Rates Among Employees Working Overtime

| Job Role | Attrition Rate |
|---|---:|
| Sales Representative | **66.67%** |
| Laboratory Technician | **50.00%** |
| Human Resources | **38.46%** |
| Research Scientist | **34.02%** |
| Sales Executive | **32.98%** |

**Business implication:** Overtime is **associated with higher attrition**, particularly among Sales Representatives and Laboratory Technicians. Workload, staffing levels and overtime practices warrant further investigation. However, this association does not establish that overtime directly causes employees to leave.

---

## 💡 Overall Conclusion

The analysis identifies early-career employees, Sales Representatives, Laboratory Technicians and employees working overtime as key areas for further retention investigation. Sales has the highest department-level attrition rate, while R&D contributes the largest number of departures. These findings provide a basis for prioritising HR investigations and developing targeted employee-retention strategies.
