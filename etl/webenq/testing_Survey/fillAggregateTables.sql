-- Populate aggregate table testing_Survey_1
INSERT INTO `testing_Survey_1` (
    `dim_date_Month_text_en`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_2
INSERT INTO `testing_Survey_2` (
    `dim_date_Month`,
    `dim_date_Month_text_en`,
    `dim_date_Year`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_date`.`year` as `dim_date_Year`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_date`.`month_text_en`,
    `dim_date`.`year`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_3
INSERT INTO `testing_Survey_3` (
    `dim_date_Month`,
    `dim_date_Month_text_en`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_date`.`month_text_en`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_4
INSERT INTO `testing_Survey_4` (
    `dim_training_Training_text_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_training`.`training_text_en` as `dim_training_Training_text_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_training` as `dim_training`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`training_key` = `dim_training`.`training_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_training`.`training_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_5
INSERT INTO `testing_Survey_5` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Sequence`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`sequence`;



-- Populate aggregate table testing_Survey_6
INSERT INTO `testing_Survey_6` (
    `dim_date_Month`,
    `dim_date_Month_text_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_date`.`month_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_7
INSERT INTO `testing_Survey_7` (
    `dim_date_Month`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Questionnai0`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnai0`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_8
INSERT INTO `testing_Survey_8` (
    `dim_date_Month_text_en`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Questionnair`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_9
INSERT INTO `testing_Survey_9` (
    `dim_date_Month_text_en`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Questionnair`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en`;



-- Populate aggregate table testing_Survey_10
INSERT INTO `testing_Survey_10` (
    `dim_date_Month`,
    `dim_date_Month_text_en`,
    `dim_questionnaire_Questionnair`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_date`.`month_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`;



-- Populate aggregate table testing_Survey_11
INSERT INTO `testing_Survey_11` (
    `dim_date_Month_text_en`,
    `dim_date_Year`,
    `dim_questionnaire_Questionnair`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_date`.`year`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_12
INSERT INTO `testing_Survey_12` (
    `dim_date_Month_text_en`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_13
INSERT INTO `testing_Survey_13` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_project_Project_text_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_project`.`project_text_en` as `dim_project_Project_text_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_project` as `dim_project`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`project_key` = `dim_project`.`project_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_project`.`project_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_14
INSERT INTO `testing_Survey_14` (
    `dim_date_Month`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_15
INSERT INTO `testing_Survey_15` (
    `dim_date_Year`,
    `dim_project_Project_text_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_project`.`project_text_en` as `dim_project_Project_text_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_project` as `dim_project`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`project_key` = `dim_project`.`project_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`year`,
    `dim_project`.`project_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_16
INSERT INTO `testing_Survey_16` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_17
INSERT INTO `testing_Survey_17` (
    `dim_date_Month`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Sequence`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`sequence`;



-- Populate aggregate table testing_Survey_18
INSERT INTO `testing_Survey_18` (
    `dim_date_Month`,
    `dim_date_Year`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Sequence`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_date`.`year`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`sequence`;



-- Populate aggregate table testing_Survey_19
INSERT INTO `testing_Survey_19` (
    `dim_date_Month`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Questionnair`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_20
INSERT INTO `testing_Survey_20` (
    `dim_date_Year`,
    `dim_question_Group_title_en`,
    `dim_questionnaire_Questionnair`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_question` as `dim_question`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`year`,
    `dim_question`.`group_title_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`;



-- Populate aggregate table testing_Survey_21
INSERT INTO `testing_Survey_21` (
    `dim_date_Year`,
    `dim_question_Group_title_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`year`,
    `dim_question`.`group_title_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_22
INSERT INTO `testing_Survey_22` (
    `dim_country_Country_name_en`,
    `dim_date_Month`,
    `dim_date_Month_text_en`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name_en`,
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_country` as `dim_country`,
    `dim_date` as `dim_date`
where
    `fact_answer`.`country_key` = `dim_country`.`country_key`
and
    `fact_answer`.`date_key` = `dim_date`.`date_key`
group by
    `dim_country`.`country_name_en`,
    `dim_date`.`month`,
    `dim_date`.`month_text_en`;



-- Populate aggregate table testing_Survey_23
INSERT INTO `testing_Survey_23` (
    `dim_date_Month`,
    `dim_question_Group_title_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_question`.`group_title_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_24
INSERT INTO `testing_Survey_24` (
    `dim_date_Month`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Questionnai0`,
    `dim_questionnaire_Sequence`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnai0`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `dim_questionnaire`.`sequence`;



-- Populate aggregate table testing_Survey_25
INSERT INTO `testing_Survey_25` (
    `dim_date_Month`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Questionnair`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en`;



-- Populate aggregate table testing_Survey_26
INSERT INTO `testing_Survey_26` (
    `dim_date_Month_text_en`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Questionnai0`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnai0`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_27
INSERT INTO `testing_Survey_27` (
    `dim_date_Month_text_en`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_28
INSERT INTO `testing_Survey_28` (
    `dim_date_Year`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`year`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_29
INSERT INTO `testing_Survey_29` (
    `dim_question_Group_title_en`,
    `dim_questionnaire_Sequence`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_question`.`group_title_en`,
    `dim_questionnaire`.`sequence`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_30
INSERT INTO `testing_Survey_30` (
    `dim_date_Month`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Questionnai0`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnai0`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`;



-- Populate aggregate table testing_Survey_31
INSERT INTO `testing_Survey_31` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_project_Project_text_en`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_project`.`project_text_en` as `dim_project_Project_text_en`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_project` as `dim_project`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`project_key` = `dim_project`.`project_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_project`.`project_text_en`;



-- Populate aggregate table testing_Survey_32
INSERT INTO `testing_Survey_32` (
    `dim_date_Month`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_33
INSERT INTO `testing_Survey_33` (
    `dim_date_Month_text_en`,
    `dim_question_Group_title_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month_text_en`,
    `dim_question`.`group_title_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_34
INSERT INTO `testing_Survey_34` (
    `dim_date_Month`,
    `dim_project_Project_text_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_project`.`project_text_en` as `dim_project_Project_text_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_project` as `dim_project`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`project_key` = `dim_project`.`project_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_date`.`month`,
    `dim_project`.`project_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_35
INSERT INTO `testing_Survey_35` (
    `dim_date_Month`,
    `dim_question_Group_title_en`,
    `dim_questionnaire_Sequence`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_question` as `dim_question`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_question`.`group_title_en`,
    `dim_questionnaire`.`sequence`;



-- Populate aggregate table testing_Survey_36
INSERT INTO `testing_Survey_36` (
    `dim_project_Project_text_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_Project_text_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_project` as `dim_project`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`project_key` = `dim_project`.`project_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_project`.`project_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_37
INSERT INTO `testing_Survey_37` (
    `dim_country_Country_name_en`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name_en`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_country` as `dim_country`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`country_key` = `dim_country`.`country_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_country`.`country_name_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_38
INSERT INTO `testing_Survey_38` (
    `dim_date_Month`,
    `dim_date_Month_text_en`,
    `dim_questionnaire_Sequence`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`month` as `dim_date_Month`,
    `dim_date`.`month_text_en` as `dim_date_Month_text_en`,
    `dim_questionnaire`.`sequence` as `dim_questionnaire_Sequence`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`month`,
    `dim_date`.`month_text_en`,
    `dim_questionnaire`.`sequence`;



-- Populate aggregate table testing_Survey_39
INSERT INTO `testing_Survey_39` (
    `dim_project_Project_text_en`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Questionnai0`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_Project_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnai0`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_project` as `dim_project`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`project_key` = `dim_project`.`project_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_project`.`project_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`;



-- Populate aggregate table testing_Survey_40
INSERT INTO `testing_Survey_40` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_questionnaire_Questionnair`,
    `dim_questionnaire_Questionnai0`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnai0`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`;



-- Populate aggregate table testing_Survey_41
INSERT INTO `testing_Survey_41` (
    `dim_question_Group_title_en`,
    `dim_questionnaire_Questionnair`,
    `lookup_answer_label_Missing_an`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_Questionnair`,
    `lookup_answer_label`.`missing_answer` as `lookup_answer_label_Missing_an`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`,
    `dim_questionnaire` as `dim_questionnaire`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_question`.`group_title_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `lookup_answer_label`.`missing_answer`;



-- Populate aggregate table testing_Survey_42
INSERT INTO `testing_Survey_42` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_question_Group_title_en`,
    `fact_answer_Average`,
    `fact_answer_Count`,
    `fact_answer_Distinct_count`,
    `fact_answer_Min`,
    `fact_answer_Max`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_question`.`group_title_en` as `dim_question_Group_title_en`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(`fact_answer`.`answer`) as `fact_answer_Count`,
    count(distinct `fact_answer`.`answer`) as `fact_answer_Distinct_count`,
    min(`fact_answer`.`answer`) as `fact_answer_Min`,
    max(`fact_answer`.`answer`) as `fact_answer_Max`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`,
    `dim_question` as `dim_question`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
and
    `fact_answer`.`question_key` = `dim_question`.`question_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_question`.`group_title_en`;



