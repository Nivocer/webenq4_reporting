-- Populate aggregate table Survey_IICD_1
INSERT INTO `Survey_IICD_1` (
    `dim_country_Country_name`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`
where
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_country`.`country_name_en`;



-- Populate aggregate table Survey_IICD_2
INSERT INTO `Survey_IICD_2` (
    `dim_project_project_name`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`
where
    `answers`.`project_key` = `dim_project`.`project_key`
group by
    `dim_project`.`project_text_en`;



-- Populate aggregate table Survey_IICD_3
INSERT INTO `Survey_IICD_3` (
    `dim_questionnaire_qe4_group`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`;



-- Populate aggregate table Survey_IICD_4
INSERT INTO `Survey_IICD_4` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`;



-- Populate aggregate table Survey_IICD_5
INSERT INTO `Survey_IICD_5` (
    `dim_question_q5_group`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`
where
    `answers`.`question_key` = `dim_question`.`question_key`
group by
    `dim_question`.`group_title_en`;



-- Populate aggregate table Survey_IICD_6
INSERT INTO `Survey_IICD_6` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`
where
    `answers`.`question_key` = `dim_question`.`question_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_7
INSERT INTO `Survey_IICD_7` (
    `dim_training_Training`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_training`.`training_text_en` as `dim_training_Training`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_training` as `dim_training`
where
    `answers`.`training_key` = `dim_training`.`training_key`
group by
    `dim_training`.`training_text_en`;



-- Populate aggregate table Survey_IICD_8
INSERT INTO `Survey_IICD_8` (
    `dim_date_Year`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_date` as `dim_date`
where
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_date`.`year`;



-- Populate aggregate table Survey_IICD_9
INSERT INTO `Survey_IICD_9` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_date` as `dim_date`
where
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`;



-- Populate aggregate table Survey_IICD_10
INSERT INTO `Survey_IICD_10` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_date` as `dim_date`
where
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`;



-- Populate aggregate table Survey_IICD_11
INSERT INTO `Survey_IICD_11` (
    `lookup_answer_label_a6`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `lookup_answer_label`.`answer_label` as `lookup_answer_label_a6`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `answers`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `lookup_answer_label`.`answer_label`;



-- Populate aggregate table Survey_IICD_12
INSERT INTO `Survey_IICD_12` (
    `dim_country_Country_name`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`,
    `dim_question` as `dim_question`
where
    `answers`.`country_key` = `dim_country`.`country_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
group by
    `dim_country`.`country_name_en`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_13
INSERT INTO `Survey_IICD_13` (
    `dim_project_project_name`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_question` as `dim_question`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
group by
    `dim_project`.`project_text_en`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_14
INSERT INTO `Survey_IICD_14` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_question` as `dim_question`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_15
INSERT INTO `Survey_IICD_15` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_training_Training`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_training`.`training_text_en` as `dim_training_Training`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_training` as `dim_training`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`training_key` = `dim_training`.`training_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_training`.`training_text_en`;



-- Populate aggregate table Survey_IICD_16
INSERT INTO `Survey_IICD_16` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_date_Year`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_date`.`year` as `dim_date_Year`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_date`.`year`;



-- Populate aggregate table Survey_IICD_17
INSERT INTO `Survey_IICD_17` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`;



-- Populate aggregate table Survey_IICD_18
INSERT INTO `Survey_IICD_18` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`;



-- Populate aggregate table Survey_IICD_19
INSERT INTO `Survey_IICD_19` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_country` as `dim_country`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_20
INSERT INTO `Survey_IICD_20` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `lookup_answer_label_a6`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `lookup_answer_label`.`answer_label` as `lookup_answer_label_a6`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `lookup_answer_label`.`answer_label`;



-- Populate aggregate table Survey_IICD_21
INSERT INTO `Survey_IICD_21` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `lookup_answer_label_a6`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    `lookup_answer_label`.`answer_label` as `lookup_answer_label_a6`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`,
    `lookup_answer_label`.`answer_label`;



-- Populate aggregate table Survey_IICD_22
INSERT INTO `Survey_IICD_22` (
    `dim_country_Country_name`,
    `dim_project_project_name`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`,
    `dim_project` as `dim_project`,
    `dim_question` as `dim_question`
where
    `answers`.`country_key` = `dim_country`.`country_key`
and
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
group by
    `dim_country`.`country_name_en`,
    `dim_project`.`project_text_en`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_23
INSERT INTO `Survey_IICD_23` (
    `dim_project_project_name`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_date_Year`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_date`.`year` as `dim_date_Year`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_project`.`project_text_en`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_date`.`year`;



