-- Populate aggregate table Survey_IICD_1
INSERT INTO `Survey_IICD_1` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
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



-- Populate aggregate table Survey_IICD_2
INSERT INTO `Survey_IICD_2` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_3
INSERT INTO `Survey_IICD_3` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_7
INSERT INTO `Survey_IICD_7` (
    `dim_country_Country_name`,
    `dim_date_Year`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_date`.`year` as `dim_date_Year`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`,
    `dim_date` as `dim_date`
where
    `answers`.`country_key` = `dim_country`.`country_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_country`.`country_name_en`,
    `dim_date`.`year`;



-- Populate aggregate table Survey_IICD_8
INSERT INTO `Survey_IICD_8` (
    `dim_questionnaire_qe4_group`,
    `dim_training_Training`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_training`.`training_text_en` as `dim_training_Training`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_training` as `dim_training`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`training_key` = `dim_training`.`training_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_training`.`training_text_en`;



-- Populate aggregate table Survey_IICD_9
INSERT INTO `Survey_IICD_9` (
    `dim_project_project_name`,
    `dim_questionnaire_qe4_group`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_country` as `dim_country`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_project`.`project_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_10
INSERT INTO `Survey_IICD_10` (
    `dim_project_project_name`,
    `dim_questionnaire_qe4_group`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_country` as `dim_country`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_project`.`project_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_11
INSERT INTO `Survey_IICD_11` (
    `dim_project_project_name`,
    `dim_question_q5_group`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
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
    `dim_question`.`group_title_en`;



-- Populate aggregate table Survey_IICD_13
INSERT INTO `Survey_IICD_13` (
    `dim_country_Country_name`,
    `dim_questionnaire_qe4_group`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `answers`.`country_key` = `dim_country`.`country_key`
and
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_country`.`country_name_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_14
INSERT INTO `Survey_IICD_14` (
    `dim_questionnaire_qe4_group`,
    `dim_question_q5_group`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_question` as `dim_question`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_question`.`group_title_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_15
INSERT INTO `Survey_IICD_15` (
    `dim_project_project_name`,
    `dim_date_Year`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_project`.`project_text_en`,
    `dim_date`.`year`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_16
INSERT INTO `Survey_IICD_16` (
    `dim_project_project_name`,
    `dim_questionnaire_qe4_group`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_project`.`project_text_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`;



-- Populate aggregate table Survey_IICD_17
INSERT INTO `Survey_IICD_17` (
    `dim_country_Country_name`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`
where
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_country`.`country_name_en`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_20
INSERT INTO `Survey_IICD_20` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `dim_question_q5_group`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
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
    `dim_question`.`group_title_en`;



-- Populate aggregate table Survey_IICD_21
INSERT INTO `Survey_IICD_21` (
    `dim_country_Country_name`,
    `dim_questionnaire_qe4_group`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `answers`.`country_key` = `dim_country`.`country_key`
and
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_country`.`country_name_en`,
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_23
INSERT INTO `Survey_IICD_23` (
    `dim_training_Training`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_training`.`training_text_en` as `dim_training_Training`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_training` as `dim_training`,
    `dim_date` as `dim_date`
where
    `answers`.`training_key` = `dim_training`.`training_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_training`.`training_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`;



-- Populate aggregate table Survey_IICD_24
INSERT INTO `Survey_IICD_24` (
    `dim_questionnaire_qe4_group`,
    `dim_question_q5_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_question`.`group_title_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`;



-- Populate aggregate table Survey_IICD_25
INSERT INTO `Survey_IICD_25` (
    `dim_project_project_name`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_project`.`project_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_26
INSERT INTO `Survey_IICD_26` (
    `dim_question_q5_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_question`.`group_title_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_28
INSERT INTO `Survey_IICD_28` (
    `dim_country_Country_name`,
    `dim_question_q5_group`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
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
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_30
INSERT INTO `Survey_IICD_30` (
    `dim_question_q5_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
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
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`;



-- Populate aggregate table Survey_IICD_31
INSERT INTO `Survey_IICD_31` (
    `dim_project_project_name`,
    `dim_country_Gender_equality`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_project_name`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_project` as `dim_project`,
    `dim_country` as `dim_country`
where
    `answers`.`project_key` = `dim_project`.`project_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_project`.`project_text_en`,
    `dim_country`.`gender_equality_range`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_32
INSERT INTO `Survey_IICD_32` (
    `dim_question_q5_group`,
    `dim_date_Year`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_question`.`group_title_en`,
    `dim_date`.`year`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_33
INSERT INTO `Survey_IICD_33` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `dim_date_Year`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `dim_date`.`year`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_34
INSERT INTO `Survey_IICD_34` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_35
INSERT INTO `Survey_IICD_35` (
    `dim_questionnaire_qe4_group`,
    `dim_question_q5_group`,
    `dim_date_Year`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_question`.`group_title_en`,
    `dim_date`.`year`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_36
INSERT INTO `Survey_IICD_36` (
    `dim_question_q5_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_question`.`group_title_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_38
INSERT INTO `Survey_IICD_38` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_qe4`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_40
INSERT INTO `Survey_IICD_40` (
    `dim_questionnaire_qe4_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month`,
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month_text_en` as `dim_date_Month`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month_text_en`,
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_41
INSERT INTO `Survey_IICD_41` (
    `dim_questionnaire_qe4_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_date` as `dim_date`,
    `dim_country` as `dim_country`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`country_key` = `dim_country`.`country_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_country`.`civic_activism_range`;



