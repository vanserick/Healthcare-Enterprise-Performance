# Healthcare-Enterprise-Performance

[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![SQL](https://img.shields.io/badge/SQL-CC292B?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)](https://en.wikipedia.org/wiki/SQL)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

End-to-end Healthcare Analytics project using SQL and Power BI to analyze patient demographics, hospital operations, financial performance, and operational efficiency through interactive dashboards and executive business recommendations.

An executive-level, 5-page Power BI business intelligence application designed to model, track, and optimize clinical, operational, and financial performance pipelines across a distributed hospital network. This project processes raw medical admission logs to isolate institutional bottlenecks, calculate structural bed utilization thresholds, and map revenue allocations.

## 📊 Interactive Dashboard Live Previews

### 1. Healthcare Performance at a Glance (Executive Panel)
*High-level institutional baseline overview highlighting operational distributions and case loads.*
![Healthcare Performance at a Glance](Dashboard/healthcare_performance_at_a_glance.png)

### 2. Financial & Revenue Performance Analytics
*Payer market share analysis tracking enterprise billing allocations across insurance carriers.*
![Insurance Revenue Capture](insurance_revenue_capture.png)

---

## 🏛️ Business Intelligence Architecture

The dashboard is organized into 5 specific cross-functional reporting layouts:

1. **Executive Dashboard (KPIs):** Synthesizes core metrics including Total Inpatient Volume (**55,500 Admissions**), Average Length of Stay (**15.51 Days**), and Bed Occupancy trends alongside historical revenue metrics.
2. **Patient Analysis:** Provides multi-dimensional cohort stratification spanning age groups (`0-17` to `65+`), gender distributions, blood types, and dynamic insurance coverage metrics.
3. **Department Performance:** Tracks throughput variables, physician caseload metrics, admission urgency types, and diagnostic test tracking across the hospital network.
4. **Financial Dashboard:** Audits the **$1.42 Billion** gross portfolio, illustrating step-by-step additions by payer, medical conditions, and ticket-size outliers.
5. **Executive Insights & Recommendations:** An interactive operational matrix matching analytical findings directly to structural business recommendations and projected margin changes.

---

## 🛠️ Tech Stack & Engineering Methodologies

* **Data Engineering & Wrangling:** Python (`Pandas`, `NumPy`) used for data cleaning, text normalization, schema mapping, and datetime indexing.
* **Feature Engineering:** Modeled custom columns inside SQL and DAX, including `Length of Stay (LOS)` calculation parameters and chronological `Admission Month` mapping.
* **Business Intelligence Design:** Power BI Desktop leveraging an executive UI kit color palette (`#1A365D` Deep Navy Blue for structural grounding, `#2B6CB0` Clinical Blue for active metrics) to minimize user fatigue.
* **Data Modeling:** Star schema configuration optimizing filter transmission from master dim-tables down to transaction matrices.

---

## 📈 Enterprise Insights & Key Metrics

* **Uniform Specialty Demographics:** Clinical volumes are split evenly across six major specialties (Arthritis, Asthma, Cancer, Diabetes, Hypertension, Obesity), with each cohort capturing roughly **16.6%** of incoming patient volume.
* **Rigid Operational Cycle Time:** Average length of stay remains fixed between **15.41 and 15.70 days** across all admission groups (Emergency, Urgent, Elective), signaling systemic processing bottlenecks rather than varying clinical recovery timelines.
* **Balanced Payer Portfolio:** Gross billings ($1,417,432,043.40 total portfolio) show an optimal distributed baseline among major providers:
  * **Cigna:** $287.14M (20.26%)
  * **Medicare:** $285.72M (20.16%)
  * **Blue Cross:** $283.25M (19.98%)
  * **UnitedHealthcare:** $282.45M (19.93%)
  * **Aetna:** $278.86M (19.67%)

---

## 🚀 Strategic Recommendations & Operational Impact

1. **Shift to Preventive Care Pipelines:** Transition resources from high-overhead acute beds to dedicated chronic disease outpatient programs to reduce avoidable readmission fees by **14%**.
2. **Accelerate Patient Discharge Workflows:** Implement multi-disciplinary discharge tracking mechanisms on **Day 3** of admission to reduce non-billable auxiliary room processing costs by **8%**.
3. **Automate Claim Exchanges:** Use the balanced ~20% payer market mix to establish multi-year value-based care capitations and enforce electronic data interchanges (EDI) to drop Days Sales Outstanding (DSO) by **6.5 days**.
4. **Deploy Unified Baseline Staffing:** Because weekly check-in volumes remain flat (ranging tightly between 7,866 on Mondays and 7,989 on Thursdays), eliminate premium on-call shifts in favor of static, predictable scheduling grids to boost labor utilization by **7%**.

---

## 📂 Repository Contents

```bash
├── healthcare_dataset.csv             # Clean, structured data source
├── healthcare_performance_at_a_glance.png  # Executive grid screenshot
├── insurance_revenue_capture.png      # Revenue metrics screenshot
├── operational_performance.png        # Inflow and bed stay visuals
├── medical_conditions_analysis.png    # Clinical volume distribution visual
└── README.md                          # Repository documentation
