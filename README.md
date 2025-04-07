# OCD Patient Analytics Dashboard

## Problem Statement

The goal of this dashboard is to analyze and visualize key demographic and clinical data of patients diagnosed with Obsessive-Compulsive Disorder (OCD) using a structured data analytics approach. By leveraging a comprehensive dataset of 1500 OCD patients from 2013 to 2022, this project aims to uncover trends, patterns, and insights that can support clinical understanding, inform treatment strategies, and highlight potential areas for further research.

### Key Questions
1. What is the monthly trend of OCD diagnoses over time?
2. How are OCD patients distributed by gender and ethnicity?
3. What are the most common obsession and compulsion types?
4. Are there noticeable fluctuations in diagnosis rates across months or years?
5. Is there a balanced representation of demographic groups in the dataset?


## Dataset Description
This project utilizes the "OCD Patient Dataset: Demographics & Clinical Data", sourced from Kaggle. The dataset comprises 1,500 records, each representing a unique individual diagnosed with Obsessive-Compulsive Disorder (OCD). The date range is 2013 until 2022.

It provides both demographic attributes and clinical data, with the essential columns are:
- Ethnicity: Africa, Asian, Caucasian, and Hispanic
- Obsession Type: Type of obsessions experienced (e.g., Contamination, Hoarding)
- Compulsion Type
- OCD Diagnosis Date: The date the patient was officially diagnosed with OCD

### Dataset Link : https://www.kaggle.com/datasets/ohinhaque/ocd-patient-dataset-demographics-and-clinical-data


## Tools & Technologies
- MySQL Workbench: Used to store the dataset, run SQL queries, and create summary tables for analysis.
- Microsoft Excel: Used to export SQL query results and create basic visualizations.
- Power BI: Used to build an interactive dashboard with charts for better data visualization and storytelling.


## Workflow 
1. Dataset CSV format was imported into MySQL Workbench.
2. Custom SQL scripts were written to generate summary tables for key metrics (Script file download link is at the bottom):
- Number of OCD Patients by Gender:

            select Gender, count(`Patient ID`) as patient_count from ocd_dataset group by Gender; 

- Number of OCD Patients by Ethnicity

            select Ethnicity, count(`Patient ID`) as patient_count from ocd_dataset group by Ethnicity; 
            
- Number of OCD Diagnosed Patients per Month

            select date_format(`OCD Diagnosis Date`, '%Y-%m') as month, count(`Patient ID`) as patient_count from ocd_dataset group by Ethnicity; 
   
- Number of OCD Patients by Obsession Type

            select obsession_type, count(`Patient ID`) as patient_count from ocd_dataset group by obsession_type; 
   
- Number of OCD Patients by Compulsion Type

            select compulsion_type, count(`Patient ID`) as patient_count from ocd_dataset group by compulsion_type; 
   
3. The results of each SQL summary table were exported as separate Excel files for visualization.
4. All five Excel files were imported into Power BI to craate a dashboard consists of:
- Line chart for diagnosis trends
![Image](https://github.com/user-attachments/assets/2daa3628-503d-4e50-b733-02d93ca85323)
- Donut chart for gender ratio
![Image](https://github.com/user-attachments/assets/aca0f1d6-82a9-41ef-8204-56a7ad327850)
- Bar chart for ethnicity ratio
![Image](https://github.com/user-attachments/assets/d55520f5-a702-49fc-b970-753a10426990)
- Column chart for obsession types ratio
![Image](https://github.com/user-attachments/assets/23b9ff4e-6811-4b32-9c77-d28bdb8a2b02)
- Column chart for compulsion types ratio
![Image](https://github.com/user-attachments/assets/d47302fa-5348-4c53-961e-02f1336fe272)
5. Data visualization is also created in Excel as the alternative of Power BI dashboard. (Excel file download link is at the bottom)


## Insights & Findings
- Almost equal split Gender distribution. OCD affects both genders nearly equally with Males slightly more Harm-related obsessions by 3% and Females slightly more Contamination obsessions by also 3%.
- Balance Ethnicity Distribution across four groups. There is no dominant group, but there are seems like patterns. Such as, Caucasians has slightly higher in Hoarding obsessions by 4% and Asians slightly higher in Symmetry obsessions by 5%.
- Most common Obsession Types is Harm-related, while least common is Symmetry.
- Most common Compulsion Types is Washing, while least common is Ordering. 
- Monthly Diagnosis Trends 2013–2022. With peak months are October 2018, December 2015, and November 2015. It looks like the easonal trend of higher diagnoses is in Q4 (Oct–Dec). Althouth, it seems it has recent decline since 2021–2022 had lower monthly averages.
- There are some links between obsessions and compulsions, like Contamination obsessions are mostly Washing compulsions (78%) and Harm-related obsessions are mostly Checking compulsions (62%).


 ## Snapshot of Power BI Dashboard
![Image](https://github.com/user-attachments/assets/6fe7ce0b-4aaf-409e-b904-abaf1fbe8f2c)

### Files
- SQL Script: [ocd_analytics_script.txt](https://github.com/user-attachments/files/19635562/ocd_analytics_script.txt)
- Excel as Power BI Dashboard Alternative: [OCD ANALYTICS DASHBOARD.xlsx](https://github.com/user-attachments/files/19635593/OCD.ANALYTICS.DASHBOARD.xlsx)

