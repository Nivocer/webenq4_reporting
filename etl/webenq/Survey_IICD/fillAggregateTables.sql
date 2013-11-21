-- Populate aggregate table Survey_IICD_1
INSERT INTO `Survey_IICD_1` (
    `dim_country_Country_name_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_key` as `dim_country_Country_name_(Key)`,
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
    `dim_country`.`country_key`;



-- Populate aggregate table Survey_IICD_2
INSERT INTO `Survey_IICD_2` (
    `dim_project_project_name_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_key` as `dim_project_project_name_(Key)`,
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
    `dim_project`.`project_key`;



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
    `dim_questionnaire_qe4_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_key` as `dim_questionnaire_qe4_(Key)`,
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
    `dim_questionnaire`.`questionnaire_key`;



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
    `dim_training_Training_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_training`.`training_key` as `dim_training_Training_(Key)`,
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
    `dim_training`.`training_key`;



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
    `dim_date_Month_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month` as `dim_date_Month_(Key)`,
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
    `dim_date`.`month`;



-- Populate aggregate table Survey_IICD_10
INSERT INTO `Survey_IICD_10` (
    `lookup_answer_label_a6_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `lookup_answer_label`.`answer_label_key` as `lookup_answer_label_a6_(Key)`,
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
    `lookup_answer_label`.`answer_label_key`;



-- Populate aggregate table Survey_IICD_11
INSERT INTO `Survey_IICD_11` (
    `dim_country_Gender_equality`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
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
    `dim_country`.`gender_equality_range`;



-- Populate aggregate table Survey_IICD_12
INSERT INTO `Survey_IICD_12` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4_(Key)`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_key` as `dim_questionnaire_qe4_(Key)`,
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
    `dim_questionnaire`.`questionnaire_key`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_13
INSERT INTO `Survey_IICD_13` (
    `dim_question_q5_group`,
    `dim_question_q5`,
    `lookup_answer_label_a6_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `lookup_answer_label`.`answer_label_key` as `lookup_answer_label_a6_(Key)`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `lookup_answer_label`.`answer_label_key`;



-- Populate aggregate table Survey_IICD_14
INSERT INTO `Survey_IICD_14` (
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



-- Populate aggregate table Survey_IICD_15
INSERT INTO `Survey_IICD_15` (
    `dim_country_Country_name_(Key)`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `lookup_answer_label_a6_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_key` as `dim_country_Country_name_(Key)`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `lookup_answer_label`.`answer_label_key` as `lookup_answer_label_a6_(Key)`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_country` as `dim_country`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `answers`.`country_key` = `dim_country`.`country_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_country`.`country_key`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `lookup_answer_label`.`answer_label_key`;



-- Populate aggregate table Survey_IICD_16
INSERT INTO `Survey_IICD_16` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4_(Key)`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `lookup_answer_label_a6_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_key` as `dim_questionnaire_qe4_(Key)`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `lookup_answer_label`.`answer_label_key` as `lookup_answer_label_a6_(Key)`,
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
    `dim_questionnaire`.`questionnaire_key`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `lookup_answer_label`.`answer_label_key`;



-- Populate aggregate table Survey_IICD_17
INSERT INTO `Survey_IICD_17` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4_(Key)`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `dim_date_Year`,
    `lookup_answer_label_a6_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_key` as `dim_questionnaire_qe4_(Key)`,
    `dim_question`.`group_title_en` as `dim_question_q5_group`,
    `dim_question`.`question_text_en` as `dim_question_q5`,
    `dim_date`.`year` as `dim_date_Year`,
    `lookup_answer_label`.`answer_label_key` as `lookup_answer_label_a6_(Key)`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_question` as `dim_question`,
    `dim_date` as `dim_date`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`question_key` = `dim_question`.`question_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
and
    `answers`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_questionnaire`.`questionnaire_key`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_date`.`year`,
    `lookup_answer_label`.`answer_label_key`;



-- Populate aggregate table Survey_IICD_18
INSERT INTO `Survey_IICD_18` (
    `dim_country_Country_name_(Key)`,
    `dim_project_project_name_(Key)`,
    `dim_question_q5_group`,
    `dim_question_q5`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_key` as `dim_country_Country_name_(Key)`,
    `dim_project`.`project_key` as `dim_project_project_name_(Key)`,
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
    `dim_country`.`country_key`,
    `dim_project`.`project_key`,
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey_IICD_19
INSERT INTO `Survey_IICD_19` (
    `dim_questionnaire_qe4_group`,
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month_(Key)`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month` as `dim_date_Month_(Key)`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `answers`,
    `dim_questionnaire` as `dim_questionnaire`,
    `dim_date` as `dim_date`
where
    `answers`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
and
    `answers`.`date_key` = `dim_date`.`date_key`
group by
    `dim_questionnaire`.`questionnaire_category_text_en`,
    `dim_date`.`year`,
    `dim_date`.`quarter`,
    `dim_date`.`month`;



-- Populate aggregate table Survey_IICD_20
INSERT INTO `Survey_IICD_20` (
    `dim_project_project_name_(Key)`,
    `dim_country_Inclusion`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_key` as `dim_project_project_name_(Key)`,
    `dim_country`.`inclusion_range` as `dim_country_Inclusion`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_project`.`project_key`,
    `dim_country`.`inclusion_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_21
INSERT INTO `Survey_IICD_21` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Gender_equality`,
    `dim_country_Interpersonal_safe`,
    `dim_country_Civic_activism`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    `dim_country`.`interpersonal_safety_and_trust_range` as `dim_country_Interpersonal_safe`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_country`.`gender_equality_range`,
    `dim_country`.`interpersonal_safety_and_trust_range`,
    `dim_country`.`civic_activism_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_22
INSERT INTO `Survey_IICD_22` (
    `dim_questionnaire_qe4_group`,
    `dim_country_Interpersonal_safe`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_country`.`interpersonal_safety_and_trust_range` as `dim_country_Interpersonal_safe`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_country`.`interpersonal_safety_and_trust_range`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_23
INSERT INTO `Survey_IICD_23` (
    `dim_questionnaire_qe4_group`,
    `dim_date_Year`,
    `dim_country_Inclusion`,
    `dim_country_Civic_activism`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_date`.`year` as `dim_date_Year`,
    `dim_country`.`inclusion_range` as `dim_country_Inclusion`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_country`.`inclusion_range`,
    `dim_country`.`civic_activism_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_24
INSERT INTO `Survey_IICD_24` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Inclusion`,
    `dim_country_Interpersonal_safe`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`inclusion_range` as `dim_country_Inclusion`,
    `dim_country`.`interpersonal_safety_and_trust_range` as `dim_country_Interpersonal_safe`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_country`.`inclusion_range`,
    `dim_country`.`interpersonal_safety_and_trust_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_25
INSERT INTO `Survey_IICD_25` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month_(Key)`,
    `dim_country_Intergroup_cohesio`,
    `dim_country_Interpersonal_safe`,
    `dim_country_Civic_activism`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month` as `dim_date_Month_(Key)`,
    `dim_country`.`intergroup_cohesion_range` as `dim_country_Intergroup_cohesio`,
    `dim_country`.`interpersonal_safety_and_trust_range` as `dim_country_Interpersonal_safe`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_date`.`month`,
    `dim_country`.`intergroup_cohesion_range`,
    `dim_country`.`interpersonal_safety_and_trust_range`,
    `dim_country`.`civic_activism_range`;



-- Populate aggregate table Survey_IICD_26
INSERT INTO `Survey_IICD_26` (
    `dim_country_Gender_equality`,
    `dim_country_Inclusion`,
    `dim_country_Intergroup_cohesio`,
    `dim_country_Civic_activism`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    `dim_country`.`inclusion_range` as `dim_country_Inclusion`,
    `dim_country`.`intergroup_cohesion_range` as `dim_country_Intergroup_cohesio`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
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
    `dim_country`.`gender_equality_range`,
    `dim_country`.`inclusion_range`,
    `dim_country`.`intergroup_cohesion_range`,
    `dim_country`.`civic_activism_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_27
INSERT INTO `Survey_IICD_27` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month_(Key)`,
    `dim_country_Inclusion`,
    `dim_country_Intergroup_cohesio`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month` as `dim_date_Month_(Key)`,
    `dim_country`.`inclusion_range` as `dim_country_Inclusion`,
    `dim_country`.`intergroup_cohesion_range` as `dim_country_Intergroup_cohesio`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_date`.`month`,
    `dim_country`.`inclusion_range`,
    `dim_country`.`intergroup_cohesion_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_28
INSERT INTO `Survey_IICD_28` (
    `dim_questionnaire_qe4_group`,
    `dim_questionnaire_qe4_(Key)`,
    `dim_country_Inclusion`,
    `dim_country_Intergroup_cohesio`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_category_text_en` as `dim_questionnaire_qe4_group`,
    `dim_questionnaire`.`questionnaire_key` as `dim_questionnaire_qe4_(Key)`,
    `dim_country`.`inclusion_range` as `dim_country_Inclusion`,
    `dim_country`.`intergroup_cohesion_range` as `dim_country_Intergroup_cohesio`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_questionnaire`.`questionnaire_key`,
    `dim_country`.`inclusion_range`,
    `dim_country`.`intergroup_cohesion_range`;



-- Populate aggregate table Survey_IICD_29
INSERT INTO `Survey_IICD_29` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_country_Interpersonal_safe`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_country`.`interpersonal_safety_and_trust_range` as `dim_country_Interpersonal_safe`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_country`.`interpersonal_safety_and_trust_range`,
    `dim_country`.`clubs_and_associations_range`;



-- Populate aggregate table Survey_IICD_30
INSERT INTO `Survey_IICD_30` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `dim_date_Month_(Key)`,
    `dim_country_Gender_equality`,
    `dim_country_Civic_activism`,
    `dim_country_Clubs_and_associca`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Sum`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    `dim_date`.`month` as `dim_date_Month_(Key)`,
    `dim_country`.`gender_equality_range` as `dim_country_Gender_equality`,
    `dim_country`.`civic_activism_range` as `dim_country_Civic_activism`,
    `dim_country`.`clubs_and_associations_range` as `dim_country_Clubs_and_associca`,
    avg(`answers`.`answer`) as `fact_answer_Average`,
    count(distinct `answers`.`respondent_key`) as `fact_answer_Respondents`,
    sum(`answers`.`answer`) as `fact_answer_Sum`,
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
    `dim_date`.`month`,
    `dim_country`.`gender_equality_range`,
    `dim_country`.`civic_activism_range`,
    `dim_country`.`clubs_and_associations_range`;



