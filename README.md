# 📊 Capstone Project: Bellabeat Case Study

## 🧠 ASK

**Business Task:**  
Bellabeat, a wellness company focused on empowering women through smart health devices, wants to gain insights from fitness tracker data to inform its marketing strategy. The goal is to better understand user behavior and identify trends that can help grow its user base.

**Key Stakeholders:**  
- Urška Sršen (Co-founder & CCO of Bellabeat)  
- Bellabeat Marketing Analytics Team  
- Product Strategy & Innovation Team

**Guiding Questions:**  
- What are some trends in smart device usage?  
- How do users engage with fitness and wellness data?  
- How could these trends help Bellabeat grow and market its products?

---

## 📦 PREPARE

**Dataset Source:**  
📁 FitBit Fitness Tracker Dataset (2016 – Public Domain)  
🔗 [Kaggle Link](https://www.kaggle.com/datasets/arashnic/fitbit)

**Files Used for This Study:**
- `dailyActivity_merged.csv`  
- `sleepDay_merged.csv`  
- `weightLogInfo_merged.csv`

**Notes on Data Quality:**  
The dataset includes daily logs from 30 users over 2 months. Though the sample is limited and not collected by Bellabeat, it offers valuable insights into smart device usage behavior.

**ROCCC Analysis:**

| Criteria     | Assessment |
|--------------|------------|
| Reliable     | ✅ Yes      |
| Original     | ❌ No (Not Bellabeat’s proprietary data) |
| Comprehensive| ⚠️ Limited sample |
| Current      | ❌ From 2016 |
| Cited        | ✅ Public Domain |

---

## 🧹 PROCESS

**Tool Used:** Microsoft Excel

Each dataset was cleaned and standardized before analysis in R:

- Column names were renamed using `snake_case`
- Date formats were cleaned and parsed correctly
- Null values (blanks) and duplicate rows were checked
- The `fat` column in `weightLogInfo_merged.csv` was removed due to missing data
- Final cleaned files:
  - `cleaned_daily_activity.csv`
  - `cleaned_sleep_day.csv`
  - `cleaned_weight_log_info.csv`

---

## 📊 ANALYZE

**Tools Used:** R (tidyverse, lubridate, ggplot2)

Cleaned `.csv` files were analyzed using R to explore the relationships between user activity, calories burned, and sleep behavior. Visualizations were saved using `ggsave()` and stored in the `/visuals` folder.

---

### 🔹 1. Total Steps vs Calories Burned  
📎 **Type:** Heatmap-style Scatter Plot  
📌 **Insight:** A strong positive relationship — more steps taken = more calories burned.

![Steps vs Calories Heatmap](visuals/steps_vs_calories_heatmap.png)

---

### 🔹 2. Average Calories by Day of Week  
📎 **Type:** Bar Chart with Gradient  
📌 **Insight:** Users burn more calories on weekdays (Tues–Thurs) and are less active on weekends.

![Calories by Day](visuals/calories_by_day.png)

---

### 🔹 3. Sleep Duration vs Calories Burned  
📎 **Type:** Pastel Scatter Plot with Smooth Trend  
📌 **Insight:** Users with longer sleep durations tend to burn slightly more calories, suggesting rest supports activity levels.

![Sleep vs Calories Pastel](visuals/sleep_vs_calories_pastel.png)

---

## 💡 ACT

Based on the findings, here are three high-level marketing strategies Bellabeat could implement:

### 🔹 1. **Midweek Motivation Campaigns**

From the analysis, it was observed that the users tend to be most active during the middle of the week, particularly on Wednesdays and Thursdays. Bellabeat could leverage this trend by launching themed campaigns such as “_Wellness Wednesdays_” or “_Power-Up Thursdays_” that encourage users to keep up their momentum. These campaigns could also include limited-time rewards, motivational notifications, or in-app challenges to maintain engagement during peak activity days.

### 🔹 2. **Sleep-Based Coaching Features**

The data suggests a subtle positive relationship between longer sleep duration and increased calories burned. Bellabeat can promote more sleep tracking features by introducing personalized coaching prompts. For example, nudging users to maintain consistent sleep patterns or celebrating well-rested streaks. This reinforces the importance of recovery and positions Bellabeat as a holistic wellness partner, not just a tracker.

### 🔹 3. **In-App Visualizations with Heatmaps**

It is well known that most users respond well to visually engaging insights. Thus, it is recommended for Bellabeat to integrate gradient-style plots or interactive heatmap dashboards within their app to help users better understand their own trends. For instance, displaying activity intensity with warm-to-cool color scales can gamify progress and motivate users to “_heat up_” their wellness goals. These visual feedback loops can increase daily check-ins and boost app stickiness over time.

---

## 💬 REFLECTION

This capstone project allowed me to apply the entire data analysis process. From cleaning messy raw files in Excel, to exploring behavioral patterns with R, and building actionable insights through visual storytelling.

During the analysis phase of this case study, I encountered several unexpected errors, some of which I had never faced before. These moments pushed me to research error messages online, consult R documentation, and explore support communities to find solutions.

Although at times overwhelming, these challenges strengthened my technical confidence and taught me how to troubleshoot independently, which is a crucial skill for any analyst. Most importantly, it reaffirmed my passion for turning messy data into meaningful insights that support data-driven decision-making.

In a nutshell, this project/ case study has reinforced my passion for using data to empower better decision-making, and also to promote health, wellness, and digital innovation.

---

## 📁 Repository Structure

| File/Folder                  | Description |
|-----------------------------|-------------|
| `cleaned_daily_activity.csv`| Cleaned steps + calories data |
| `cleaned_sleep_day.csv`     | Cleaned sleep log |
| `cleaned_weight_log_info.csv`| Cleaned weight data |
| `bellabeat_analysis.R`      | Full R script for analysis |
| `README.md`                 | Project summary |
| `/visuals`                  | Visual plots (PNG files) |

---

## 👩‍💻 About Me

Hi! I’m Nurul Fatimah Az-Zaharah Mohd Aris, a data-driven energy & tech enthusiast transitioning into data analytics. I’m passionate about using data for sustainable solutions, wellness, and impactful change.

📬 [LinkedIn](https://www.linkedin.com/in/nurul-fatimah-az-zaharah-mohd-aris-79485213a/) • ✉️ [Email Me](mailto:anne.ariss@outlook.com)

---
