# 1. OCD SYMPTOM DETAILS BY GENDER

# select
# 	Gender,
#     count(`Patient ID`) as patient_count,
#     round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score,
#     round(avg(`Y-BOCS Score (Compulsions)`),2) as avg_com_score
# from ocd_analytics.ocd_patient_dataset
# group by 1;

#----------------------------------------------------------------------------------------------------------------
# 2. OCD SYMPTOM DETAILS BY ETHNICITY

# select
# 	Ethnicity,
#     count(`Patient ID`) as patient_count,
#     round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score,
#     round(avg(`Y-BOCS Score (Compulsions)`),2) as avg_com_score
# from ocd_analytics.ocd_patient_dataset
# group by 1
# order by 1;

#--------------------------------------------------------------------------------------------------------
# 3. COUNT OCD DIAGNOSED PEOPLE BY MONTH

# alter table ocd_analytics.ocd_patient_dataset
# modify `OCD Diagnosis Date` date;

# select
# 	date_format(`OCD Diagnosis Date`, '%Y-%m') as month,
# 	count(`Patient ID`) patient_count
# from ocd_analytics.ocd_patient_dataset
# group by 1
# Order by 1;

#--------------------------------------------------------------------------------------------------------
# 4. COUNT OF OBSESSION TYPE AND ITS AVERAGE SCORE

# select
# `Obsession Type`,
# count(`Patient ID`) as patient_count,
# round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score
# from ocd_analytics.ocd_patient_dataset
# group by 1
# Order by 1
# ;

#--------------------------------------------------------------------------------------------------------
# 5. COUNT OF COMPULSION TYPE AND ITS AVERAGE SCORE

# Select
# `Compulsion Type`,
# count(`Patient ID`) as patient_count,
# round(avg(`Y-BOCS Score (Compulsions)`),2) as avg_com_score
# from ocd_analytics.ocd_patient_dataset
# group by 1
# Order by 1
# ;