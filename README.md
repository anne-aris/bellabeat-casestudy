# 📊 Capstone Project: Bellabeat Case Study
## ✍🏻By: Nurul Fatimah Az-Zaharah Mohd Aris
Case Study for the Google Data Analytics Professional Certificate

---

## 🧠 ASK

**Business Task:**  
Bellabeat, a wellness company focused on empowering women through smart health devices, wants to gain insights from fitness tracker data to inform its marketing strategy. The goal is to better understand user behavior and identify trends that can help grow its user base.

**Key Stakeholders:**  
- Urska Srsen (Co-founder & CCO of Bellabeat)  
- Bellabeat Marketing Analytics Team  
- Product Strategy & Innovation Team

**Guiding Questions:**  
- How do users engage with smart fitness trackers?  
- What are the most common activity and sleep patterns?  
- What trends can help Bellabeat develop data-driven marketing strategies?

---

## 📦 PREPARE

**Dataset Source:**  
📁 FitBit Fitness Tracker Dataset (CC0: Public Domain)  
🔗 [Kaggle Link](https://www.kaggle.com/datasets/arashnic/fitbit)

**Files Used for This Study:**
- `dailyActivity_merged.csv`  
- `sleepDay_merged.csv`  
- `weightLogInfo_merged.csv`

**Notes on Data Quality:**  
The dataset includes anonymous daily activity data for 30 Fitbit users for over around 2 months. It contains valuable information on steps, sleep, calories, heart rate, and weight tracking.

**ROCCC Analysis:**

| Criteria     | Assessment |
|--------------|------------|
| Reliable     | ✅ Yes      |
| Original     | ❌ No (Not Bellabeat's own data) |
| Comprehensive| ⚠️ Limited sample (30 users) |
| Current      | ❌ 2016 data, not up to date (2025) |
| Cited        | ✅ Public domain via Kaggle |

While the datasets are not collected directly by Bellabeat, the dataset still offers useful insights into general health-tracking behaviors.

---

## 🧹 PROCESS

**CLEANING DATA**

**Tool Used:** Microsoft Excel

**Cleaning Steps for `dailyActivity_merged.csv`:**

- Column names were standardized to `snake_case` format (e.g., `ActivityDate` → `activity_date`) to allow easier analysis in R
- Data filters were used to check for missing/null (blanks) values across all columns. ✅ **No blanks were found**
- Conditional formatting and the “**Remove Duplicates**” tool were applied to identify 100% identical rows
- ✅ **Exact duplicates** (same user ID, same day, same metrics) were removed
- Repeated `id` values were expected, as the dataset contains daily logs
- The final cleaned version was saved as `cleaned_dailyActivity.csv`

> 🔎 Similar steps were applied to `sleepDay_merged.csv` and `weightLogInfo_merged.csv`

- For the `weightLogInfo_merged.csv`, The `fat` column was excluded from analysis due to insufficient data (only 2 out of 68 rows that contained values).

---

## 📊 ANALYZE

Tools Used: R (**tidyverse**, **lubridate**, **ggplot2**)

In this phase, **R programming** was used to explore and analyze patterns in user activity, calorie expenditure, and sleep tracking. Cleaned .csv datasets were imported and processed to prepare for visual exploration.

🔹 1. **Total Steps vs Calories Burned**
A **heatmap-style scatter plot** of **total steps vs. calories burned**. The plot uses a gradient color scale; from blue (low calorie burn) to red (high calorie burn), to visually emphasize the correlation between physical activity and energy expenditure.

Insights:

Users with higher step counts burned more calories.

There’s a clear positive relationship between physical activity and calorie burn.

📎 Example Visualization:



🔹 2. **Sleep Duration vs Calories Burned**
This **scatter plot** explores how **total minutes asleep relate to calories burned**. A **pastel gradient scale** and a **smooth trend line** help visualize the pattern.

Insights:

Users who slept longer tended to burn slightly more calories.

Better sleep may lead to more energy and activity the next day.

📎 Visualization:


🔹 3. Calories Burned vs Day of Week
The final visualization groups average calories burned by day of the week. This plot uses a gradient scale to represent calorie output and explores potential behavioral patterns across weekdays and weekends.

📎 Visualization:


All visualizations are stored in the /visuals folder and saved using ggsave(). Full analysis is available in bellabeat_analysis.R.

---

## 📈 SHARE

Visuals to include (to be added):
- Line plot of daily steps vs calories burned
- Bar chart of active vs sedentary minutes
- Pie chart of sleep duration distribution

A simple data dashboard or infographic (optional) may be created using Canva/Tableau.

---

## 💡 ACT

**Key Recommendations for Bellabeat:**
- Target women aged 25–35 who show consistent tracking behavior (based on usage patterns)
- Promote features that drive long-term engagement (like daily step goals and sleep tracking)
- Bundle smart device products with holistic wellness programs (workouts, meditation, sleep tips)

---

## 💬 Reflection

This capstone project helped me apply the full data analysis process — from cleaning raw data in Excel to exploring trends in R. It strengthened my confidence in preparing datasets, detecting issues, and communicating insights to guide data-driven decision-making.

---

