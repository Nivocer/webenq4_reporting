-- Aggregate table Survey_IICD_1
-- Estimated 256 rows, 5120 bytes
CREATE TABLE `Survey_IICD_1` (
    `dim_country_Country_name` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_2
-- Estimated 209 rows, 4180 bytes
CREATE TABLE `Survey_IICD_2` (
    `dim_project_project_name` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_3
-- Estimated 8 rows, 160 bytes
CREATE TABLE `Survey_IICD_3` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_4
-- Estimated 416 rows, 16640 bytes
CREATE TABLE `Survey_IICD_4` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_5
-- Estimated 78 rows, 1560 bytes
CREATE TABLE `Survey_IICD_5` (
    `dim_question_q5_group` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_6
-- Estimated 111071 rows, 4442874 bytes
CREATE TABLE `Survey_IICD_6` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_7
-- Estimated 555 rows, 11100 bytes
CREATE TABLE `Survey_IICD_7` (
    `dim_training_Training` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_8
-- Estimated 20 rows, 400 bytes
CREATE TABLE `Survey_IICD_8` (
    `dim_date_Year` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_9
-- Estimated 80 rows, 3200 bytes
CREATE TABLE `Survey_IICD_9` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_10
-- Estimated 960 rows, 57600 bytes
CREATE TABLE `Survey_IICD_10` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_11
-- Estimated 2273 rows, 45460 bytes
CREATE TABLE `Survey_IICD_11` (
    `lookup_answer_label_a6` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_12
-- Estimated 1521169 rows, 91270140 bytes
CREATE TABLE `Survey_IICD_12` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_13
-- Estimated 1521169 rows, 91270140 bytes
CREATE TABLE `Survey_IICD_13` (
    `dim_project_project_name` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_14
-- Estimated 1521169 rows, 121693520 bytes
CREATE TABLE `Survey_IICD_14` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_15
-- Estimated 1521169 rows, 91270140 bytes
CREATE TABLE `Survey_IICD_15` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_training_Training` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_16
-- Estimated 1101373 rows, 66082387 bytes
CREATE TABLE `Survey_IICD_16` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_17
-- Estimated 1398085 rows, 111846872 bytes
CREATE TABLE `Survey_IICD_17` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_18
-- Estimated 1521169 rows, 152116900 bytes
CREATE TABLE `Survey_IICD_18` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_19
-- Estimated 429809 rows, 25788597 bytes
CREATE TABLE `Survey_IICD_19` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_20
-- Estimated 1521169 rows, 152116900 bytes
CREATE TABLE `Survey_IICD_20` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `lookup_answer_label_a6` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_21
-- Estimated 1521169 rows, 182540280 bytes
CREATE TABLE `Survey_IICD_21` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `lookup_answer_label_a6` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_22
-- Estimated 1521169 rows, 121693520 bytes
CREATE TABLE `Survey_IICD_22` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_project_project_name` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_23
-- Estimated 1521169 rows, 121693520 bytes
CREATE TABLE `Survey_IICD_23` (
    `dim_project_project_name` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

