# 📊 Retail Sales & Profitability Analysis

## Project Overview

This project analyzes retail sales data to evaluate overall business performance, profitability, customer behavior, product performance, regional trends, and the impact of discounting.

The goal was to transform raw transactional data into actionable business insights using **Excel, MySQL, SQL, Power BI, and DAX**.

The analysis covers **9,994 transaction records** from 2014–2017.

---

## 📈 Dashboard

![Retail Sales & Profitability Dashboard](images/Retail%20sales%20%26%20profitability%20analysis%20.png)
The interactive Power BI dashboard allows users to filter performance by **Year, Region, and Product Category**.

---

## 🛠️ Tools & Technologies

- **Excel** — Data validation and initial cleaning
- **MySQL** — Database management
- **SQL** — Data preparation and business analysis
- **Power BI** — Dashboard development and visualization
- **DAX** — KPI and profitability measures
- **GitHub** — Project documentation and version control

---

## 🎯 Business Questions

This project was designed to answer:

- What are the company's overall sales and profitability?
- Which categories and sub-categories perform best?
- Which products generate the largest profits and losses?
- How does discounting relate to profitability?
- Which regions and states perform best and worst?
- Who are the company's highest-revenue customers?
- Are high-revenue customers always profitable?
- How have sales and profits changed over time?

---

## 📊 Executive KPIs

| KPI | Result |
|---|---:|
| Total Sales | **$2.30M** |
| Total Profit | **$286.40K** |
| Profit Margin | **12.47%** |
| Total Orders | **5,009** |
| Total Customers | **793** |
| Total Products | **1,862** |

---

## 🔍 Key Business Insights

### 1. Technology Leads Overall Performance

Technology generated approximately **$836K in sales and $145K in profit**, with a **17.40% profit margin**, making it the strongest overall category.

Office Supplies also performed strongly with a **17.04% margin**.

Furniture generated approximately **$742K in sales**, but only about **$18K in profit**, resulting in a margin of just **2.49%**.

### 2. Tables Are a Major Profitability Problem

The Tables sub-category generated approximately **$207K in sales but lost $17.7K**, producing a **-8.56% profit margin**.

Bookcases also generated a loss of approximately **$3.5K**.

This helps explain Furniture's weak overall profitability.

### 3. Heavy Discounting Is Associated With Major Losses

Discount analysis revealed a strong relationship between higher discounts and declining profitability.

Transactions with **no discount generated a 29.51% aggregate profit margin**.

At a **30% discount**, aggregate margin fell to **-10.05%**, and every observed discount level of 30% or higher produced a negative aggregate margin.

For Tables specifically, non-discounted transactions produced an **18.55% margin**, while transactions at a 50% discount produced a **-63% margin**.

### 4. West Is the Strongest Region

The **West** generated approximately:

- **$725K in sales**
- **$108K in profit**
- **14.94% profit margin**

The **Central region** had the weakest overall margin at **7.92%**.

### 5. Texas Is the Largest Loss-Making State

Texas generated approximately **$170K in sales**, but produced a loss of roughly **$25.7K**, resulting in a **-15.12% margin**.

Illinois also contributed significant losses within the Central region.

### 6. High Revenue Does Not Always Mean High Customer Value

The highest-revenue customer generated approximately **$25K in sales**, but resulted in a **$1.98K loss**.

This demonstrates why customer performance should be evaluated using both **revenue and profitability**.

### 7. Business Performance Improved Over Time

Sales increased from approximately **$484K in 2014 to $733K in 2017**, representing roughly **51% growth**.

Profit increased from approximately **$49.5K to $93.4K**, representing roughly **89% growth** over the same period.

---

## 💡 Business Recommendations

Based on the analysis:

1. **Review discount strategy** — Closely evaluate discounts of 30% or greater because these transactions were unprofitable in aggregate at every observed level.

2. **Investigate Furniture profitability** — Review pricing, product costs, shipping expenses, and discount policies for Tables and Bookcases.

3. **Review loss-making markets** — Investigate Texas, Illinois, and other states producing substantial losses despite meaningful sales volume.

4. **Evaluate products using profitability, not revenue alone** — High-sales products should be monitored for low or negative margins.

5. **Prioritize profitable customer relationships** — Customer value should incorporate both sales and profit rather than revenue alone.

6. **Build on strong segments** — Technology and Office Supplies demonstrate substantially stronger margins and may present opportunities for profitable growth.

---

## 🔄 Project Workflow

```text
Raw CSV Data
     ↓
Excel Data Validation & Cleaning
     ↓
MySQL Database
     ↓
SQL Data Preparation
     ↓
SQL Business Analysis
     ↓
Power BI + DAX
     ↓
Interactive Dashboard
     ↓
Business Insights & Recommendations
```

---

## 📁 Repository Structure

```text
retail-sales-profitability-analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── sql/
│   ├── Data_Preparation_superstore.sql
│   └── analysis_queries_superstore.sql
│
├── dashboard/
│   └── retail_sales_dashboard.pbix
│
├── images/
│   └── retail_sales_dashboard.png
│
├── insights/
│
└── README.md
```

---

## 🧠 Skills Demonstrated

**Business Analytics • Data Cleaning • SQL • MySQL • Power BI • DAX • Data Visualization • KPI Development • Profitability Analysis • Customer Analysis • Data Storytelling • Business Recommendations**

---

## 📌 Dataset

The project uses the publicly available **Sample Superstore** retail dataset containing order, customer, product, geographic, sales, discount, quantity, and profit information.

---

## 👤 Author

**Jay Jariwala**

Business Analytics Portfolio Project
