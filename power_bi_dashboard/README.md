## 🎯 Project Objective
To develop an interactive HR Analytics Dashboard that transforms employee data into actionable workforce insights, helping the organization better understand employee attrition patterns and make informed HR management decisions.

---

## 🖥️ Dashboard Preview

<!-- Add dashboard screenshots below -->

![HR Analytics Dashboard](../docs/HR%20Analytics%20Dashboard.png)

---

## ⚙️ POWER BI DEVELOPMENT WORKFLOW

### 1. 🗂️ DATA PREPARATION & TRANSFORMATION

#### Data Import & Preparation

- Imported the employee dataset into Power BI and reviewed the column data types.
- Prepared categorical and numerical fields for analysis and reporting.

#### Transformation: Conditional Columns

- Created a conditional column (**Attrition Count**) to convert attrition values into binary representation (`Yes = 1`, `No = 0`).
- Created a custom sorting column (**Sort Age**) to maintain the correct chronological order of age groups in visualizations.

---

### 2. 📐 MEASURE CREATION

#### KPI Measures

- Developed DAX measures to calculate key HR metrics, including **Employee Count, Active Employees, Total Attrition, Attrition Rate, Average Salary, and Average Age.**

#### Dynamic Field Parameters

- Created a **Field Parameter** to dynamically switch between Attrition Count and Attrition Rate across dashboard charts.
- Created a dynamic measure (**Selected Attrition Value**) using `SUMMARIZE()`, `MAXX()`, and `SWITCH()` to dynamically identify the selected metric and highlight the highest and lowest job-role values through conditional formatting for Bar chart (Attrition by Job Role).

#### Dynamic KPI Selection

- Created a disconnected **Employee Group Selector** table using `DATATABLE()` with two options: **All Employees** and **Attrition Employees** to enable dynamic KPI calculations.
- Developed dynamic DAX KPI measures using `SELECTEDVALUE()`, `SWITCH()`, and `CALCULATE()` to update KPI values based on the selected employee group.

---

### 3. 📊 VISUALIZATIONS & DASHBOARD

#### Dashboard Development

- Designed an interactive HR Analytics dashboard to analyze employee distribution and attrition patterns across different workforce dimensions.
- Developed visualizations including:

  | Visualization | Chart Type |
  |---|---|
  | Department-wise Attrition | Donut Chart |
  | Attrition by Age Group and Gender | Stacked Column Chart |
  | Attrition by Job Satisfaction Rating | Matrix with Conditional Formatting |
  | Attrition by Job Role | Bar Chart with Dynamic Conditional Formatting |
  | Attrition by Overtime | Tree Map Chart |
  | Job Role Attrition by Overtime | Clustered Column Chart |

#### Interactive Features

- Added **slicers** for Education, Department, Job Role, and Gender to enable dynamic filtering.
- Implemented **button-based selectors** for Field Parameter switching and employee group selection.
- Created a Clear All Slicers button using **Bookmarks**, configured to reset slicer selections while preserving the Field Parameter and Employee Group Selector selections.

#### Dashboard Formatting

- Applied consistent theme colors, typography, and visual formatting.
- Designed KPI cards with appropriate icons, background shapes, and visual hierarchy.
- Configured chart labels, conditional formatting, and interactive visual elements to improve readability and user experience.
