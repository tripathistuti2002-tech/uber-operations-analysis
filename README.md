#  Uber Mobility Analytics Platform

An end-to-end data analytics platform analyzing **150,000 Uber booking transactions** across **19 relational dimensions**. Integrates **Python data pipeline engineering**, **SQL performance tuning**, **DAX semantic modeling**, and **Power BI executive dashboards**


---

##  Data Pipeline Architecture & Technology Stack

| Layer | Technology | Key Capabilities & Highlights |
| :--- | :--- | :--- |
| **Data Engineering & EDA** | **Python** (`pandas`, `numpy`, `matplotlib`, `seaborn`) | Data imputation, distributional auditing, outlier isolation, data cleaning |
| **Database & Schema Design** | **SQL** (MySQL Workbench) |Relational Database Design and Complex Business Analytics (13 Queries) |
| **Semantic Modeling** | **Power BI DAX** |Time-intelligence formulas, live conversion measures & cancellation logic |
| **Executive Intelligence** | **Power BI Desktop** | Interactive multi-page visual dashboards, root-cause friction breakdown |

---

##  Phase 1: Advanced Data Pre-Processing & EDA (Python)

The raw transactional schema presented significant structural anomalies, primarily consisting of unpopulated conditional attributes tied directly to unfulfilled or canceled trips.

### Data Engineering & Imputation Strategy
* **Data Engineering & EDA:** Python (`pandas`, `numpy`, `matplotlib`, `seaborn`) – Cleaning, string imputation, outlier profiling, distribution auditing.

---

##  Phase 2: Relational Database Optimization (MySQL)

Designed an optimized MySQL schema resolving 13 analytical business queries across 5 enterprise domains:

### 1. Customer Loyalty & CRM
* **High-Margin Profiles:** Segmented top 10 revenue-generating users for targeted retention marketing.
* **Platform Power Users:** Isolated heavy repeat consumers (>10 bookings) to establish high-tier loyalty frameworks.

###  2. Spatial Logistics & Routing
* **Commuter Corridors:** Paired pickup/drop-off points to identify high-density transit routes.
* **Supply Hotspots:** Mapped top 10 pickup zones (*Khandsa*, *Barakhamba Road*) to cut driver wait times.
* **Fleet Inflows:** Tracked top 10 destination hubs (*Ashram*) to balance regional vehicle supply.
  
###  3. Temporal Patterns & Constraints
* **Demand Peak:** Highest single-day volume on **Jan 21, 2025** (832 bookings).
* **Rush Hour:** Peak congestion at **Hour 17 (5:00 PM)** to inform dynamic surge pricing.
* **Trip Distance Limits:** Database captures trips spanning **1–50 miles**.
* 
###  4. Fleet Dynamics & Revenue Attribution
* **Revenue Drivers:** Compared average fare sizes to pinpoint high-margin categories (*Bike*, *Go Mini*).
* **Payment Volume:** **UPI dominates with ~45% of transactions**, followed by Cash at ~25%.
* **Operational Failure:** **Auto** segment experienced the highest volume of unsuccessful bookings.
  
###  5. Quality Control & Churn Analysis
* **Funnel Health:** 93K completed vs. 57K lost bookings out of 150K attempts.
* **Cancellation Split:** **Drivers account for 58.06% of cancellations** vs. 22.58% customer cancellations.
* **Segment Friction:** **Auto** recorded the lowest passenger ratings (~4.40), while **eBike** drivers reported the lowest rider ratings (~4.25).
---

##  Phase 3: Semantic Data Modeling & DAX (Power BI)

Deployed **Power BI DAX measures** within the semantic model to maximize query performance and eliminate storage pre-computation:

* **DAX Implementation:** Built time-intelligence logic for rush-hour metrics, custom measures for live conversion rates, and filtered logic for driver vs. customer cancellation analysis.
  
### Interactive Executive Dashboard Views
###  Executive Dashboard Views

1. **Executive Overview:** Tracks conversion health and key operational KPIs (**93K successful vs. 57K lost trips**).
2. **Revenue Performance:** Visualizes payment method dominance (**UPI at ~45% share**) and monetization across vehicle tiers.
3. **Cancellation Deep-Dive:** Renders root-cause matrices isolating drivers behind the **58.06% driver-side cancellation rate**.
4. **Service & Fleet Trends:** Pinpoints operational friction and customer satisfaction dips in high-volume segments like ***Auto***.
---

##  Strategic Business Recommendations

* ** Surge Supply Incentives:** Deploy targeted driver completion bonuses during **Hour 17 (5 PM)** rush hour to combat the 58.06% driver-side rejection rate.
* ** Auto Segment Quality Overhaul:** Address the platform's weakest operational tier through driver compliance audits and behavioral training workshops to stabilize overall trip conversion.
