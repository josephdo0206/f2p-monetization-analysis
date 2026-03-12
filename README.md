# 🎮 Free-to-Play Monetization & Player Retention Analysis

## 📌 Executive Summary
This project investigates player progression and purchasing behavior in a free-to-play gaming environment to identify areas of revenue leakage. By analyzing player transaction histories and level progression, this dashboard isolates a critical retention bottleneck affecting the game's highest-value spenders.

High-Value Player Churn Dashboard<img width="1424" height="802" alt="High-Value_Player_Churn_Analysis_Dashboard_Screenshot" src="https://github.com/user-attachments/assets/6d6455c1-a73c-4e9c-8fae-6d1c2bee530b" />

## 💡 Key Insights
* **The Pareto Principle in Action:** High-Value Players generate the vast majority of total revenue ($5.85K out of $6.66K total), despite making up a smaller portion of the overall player base.
* **The Level 50 Bottleneck:** There is a severe retention failure at the level cap. **66.7%** of all High-Value Players abandoned the game exactly upon reaching Level 50.
* **Standard vs. VIP Churn:** While standard players churn randomly at various early-game levels, the VIP churn is heavily concentrated at the end-game milestone, indicating a systemic product or content issue rather than standard player fatigue.

## 🛠️ Data & Methodology
* **Tech Stack:** SQL (BigQuery) for data extraction and cleaning, Power BI for data modeling, DAX measure creation, and data visualization.
* **Metrics Defined:** "High-Value Players" (often referred to internally as "Whales") are defined as users with a Lifetime Value (LTV) exceeding $500 USD.
* **Techniques:** Complex DAX branching, conditional formatting for visual storytelling, and multi-table relationship modeling.

## 🚀 Strategic Recommendations
Based on the data, I recommend the following business actions:
1. **Immediate Action (CRM Win-Back):** Launch a targeted email/push notification campaign for the 6 churned High-Value Players, offering a complimentary premium item or Battle Pass skip to re-engage them.
2. **Product Strategy (End-Game Content):** Accelerate the development pipeline for Level 50+ "Prestige" ranks or high-tier raids to bridge the end-game content gap.
3. **LiveOps Monitoring (Early Warning):** Implement an automated CRM trigger. When active High-Value Players reach Level 48 or 49, automatically grant them a proactive retention reward to bridge them through the Level 50 drop-off zone.

## 📂 Repository Contents
* `gaming_analysis_queries.sql`: The original SQL queries used to extract and aggregate the player and purchase data.
* `F2P_Monetization_Dashboard.pbix`: The interactive Power BI dashboard file.
