-- Populate aggregate table Survey2_IICD_1
INSERT INTO `Survey2_IICD_1` (
    `dim_country_Country_name`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_country`.`country_name_en` as `dim_country_Country_name`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_country` as `dim_country`
where
    `fact_answer`.`country_key` = `dim_country`.`country_key`
group by
    `dim_country`.`country_name_en`;



-- Populate aggregate table Survey2_IICD_2
INSERT INTO `Survey2_IICD_2` (
    `dim_date_Year`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
group by
    `dim_date`.`year`;



-- Populate aggregate table Survey2_IICD_3
INSERT INTO `Survey2_IICD_3` (
    `dim_date_Year`,
    `dim_date_Quarter`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_date`.`quarter` as `dim_date_Quarter`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_date` as `dim_date`
where
    `fact_answer`.`date_key` = `dim_date`.`date_key`
group by
    `dim_date`.`year`,
    `dim_date`.`quarter`;



-- Populate aggregate table Survey2_IICD_4
INSERT INTO `Survey2_IICD_4` (
    `dim_project_Project_text`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_project`.`project_text_en` as `dim_project_Project_text`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_project` as `dim_project`
where
    `fact_answer`.`project_key` = `dim_project`.`project_key`
group by
    `dim_project`.`project_text_en`;



-- Populate aggregate table Survey2_IICD_5
INSERT INTO `Survey2_IICD_5` (
    `dim_question_Group_title`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
group by
    `dim_question`.`group_title_en`;



-- Populate aggregate table Survey2_IICD_6
INSERT INTO `Survey2_IICD_6` (
    `dim_question_Group_title`,
    `dim_question_Question_text`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title`,
    `dim_question`.`question_text_en` as `dim_question_Question_text`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey2_IICD_7
INSERT INTO `Survey2_IICD_7` (
    `dim_questionnaire_Questionnair`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnair`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_questionnaire`.`questionnaire_title_en`;



-- Populate aggregate table Survey2_IICD_8
INSERT INTO `Survey2_IICD_8` (
    `dim_training_Training_text`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_training`.`training_text_en` as `dim_training_Training_text`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_training` as `dim_training`
where
    `fact_answer`.`training_key` = `dim_training`.`training_key`
group by
    `dim_training`.`training_text_en`;



-- Populate aggregate table Survey2_IICD_9
INSERT INTO `Survey2_IICD_9` (
    `lookup_answer_label_Answer_lab`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `lookup_answer_label`.`answer_label` as `lookup_answer_label_Answer_lab`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `lookup_answer_label`.`answer_label`;



-- Populate aggregate table Survey2_IICD_10
INSERT INTO `Survey2_IICD_10` (
    `dim_date_Year`,
    `dim_question_Group_title`,
    `dim_question_Question_text`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_date`.`year` as `dim_date_Year`,
    `dim_question`.`group_title_en` as `dim_question_Group_title`,
    `dim_question`.`question_text_en` as `dim_question_Question_text`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
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
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`;



-- Populate aggregate table Survey2_IICD_11
INSERT INTO `Survey2_IICD_11` (
    `dim_question_Group_title`,
    `dim_question_Question_text`,
    `dim_questionnaire_Questionnair`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title`,
    `dim_question`.`question_text_en` as `dim_question_Question_text`,
    `dim_questionnaire`.`questionnaire_title_en` as `dim_questionnaire_Questionnair`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`,
    `dim_questionnaire` as `dim_questionnaire`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`questionnaire_key` = `dim_questionnaire`.`questionnaire_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `dim_questionnaire`.`questionnaire_title_en`;



-- Populate aggregate table Survey2_IICD_12
INSERT INTO `Survey2_IICD_12` (
    `dim_question_Group_title`,
    `dim_question_Question_text`,
    `lookup_answer_label_Answer_lab`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title`,
    `dim_question`.`question_text_en` as `dim_question_Question_text`,
    `lookup_answer_label`.`answer_label` as `lookup_answer_label_Answer_lab`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `lookup_answer_label`.`answer_label`;



-- Populate aggregate table Survey2_IICD_13
INSERT INTO `Survey2_IICD_13` (
    `dim_question_Group_title`,
    `dim_question_Question_text`,
    `lookup_answer_label_Answer_lab`,
    `fact_answer_Average`,
    `fact_answer_Respondents`,
    `fact_answer_Answers`,
    `fact_answer_fact_count`)
select
    `dim_question`.`group_title_en` as `dim_question_Group_title`,
    `dim_question`.`question_text_en` as `dim_question_Question_text`,
    `lookup_answer_label`.`answer_label` as `lookup_answer_label_Answer_lab`,
    avg(`fact_answer`.`answer`) as `fact_answer_Average`,
    count(distinct `fact_answer`.`respondent_key`) as `fact_answer_Respondents`,
    count(`fact_answer`.`respondent_key`) as `fact_answer_Answers`,
    count(*) as `fact_answer_fact_count`
from
    `fact_answer` as `fact_answer`,
    `dim_question` as `dim_question`,
    `lookup_answer_label` as `lookup_answer_label`
where
    `fact_answer`.`question_key` = `dim_question`.`question_key`
and
    `fact_answer`.`answer_label_key` = `lookup_answer_label`.`answer_label_key`
group by
    `dim_question`.`group_title_en`,
    `dim_question`.`question_text_en`,
    `lookup_answer_label`.`answer_label`;



