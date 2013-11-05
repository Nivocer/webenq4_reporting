-- Aggregate table Survey_IICD_1
-- Estimated 960 rows, 57600 bytes
CREATE TABLE `Survey_IICD_1` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_2
-- Estimated 3840 rows, 307200 bytes
CREATE TABLE `Survey_IICD_2` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_3
-- Estimated 3840 rows, 307200 bytes
CREATE TABLE `Survey_IICD_3` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_7
-- Estimated 5120 rows, 204800 bytes
CREATE TABLE `Survey_IICD_7` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_date_Year` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_8
-- Estimated 4440 rows, 177600 bytes
CREATE TABLE `Survey_IICD_8` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_training_Training` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_9
-- Estimated 6688 rows, 401280 bytes
CREATE TABLE `Survey_IICD_9` (
    `dim_project_project_name` VARCHAR(255),
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_10
-- Estimated 6688 rows, 401280 bytes
CREATE TABLE `Survey_IICD_10` (
    `dim_project_project_name` VARCHAR(255),
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_11
-- Estimated 16302 rows, 652080 bytes
CREATE TABLE `Survey_IICD_11` (
    `dim_project_project_name` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_13
-- Estimated 8192 rows, 491520 bytes
CREATE TABLE `Survey_IICD_13` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_14
-- Estimated 2496 rows, 149760 bytes
CREATE TABLE `Survey_IICD_14` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_15
-- Estimated 16720 rows, 1003200 bytes
CREATE TABLE `Survey_IICD_15` (
    `dim_project_project_name` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_16
-- Estimated 1672 rows, 66880 bytes
CREATE TABLE `Survey_IICD_16` (
    `dim_project_project_name` VARCHAR(255),
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_17
-- Estimated 1024 rows, 40960 bytes
CREATE TABLE `Survey_IICD_17` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_20
-- Estimated 32448 rows, 1946880 bytes
CREATE TABLE `Survey_IICD_20` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_21
-- Estimated 8192 rows, 491520 bytes
CREATE TABLE `Survey_IICD_21` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_23
-- Estimated 44399 rows, 2663999 bytes
CREATE TABLE `Survey_IICD_23` (
    `dim_training_Training` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_24
-- Estimated 49919 rows, 3993599 bytes
CREATE TABLE `Survey_IICD_24` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_25
-- Estimated 66879 rows, 5350399 bytes
CREATE TABLE `Survey_IICD_25` (
    `dim_project_project_name` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_26
-- Estimated 24960 rows, 1996800 bytes
CREATE TABLE `Survey_IICD_26` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_28
-- Estimated 79871 rows, 4792319 bytes
CREATE TABLE `Survey_IICD_28` (
    `dim_country_Country_name` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_30
-- Estimated 74879 rows, 5990399 bytes
CREATE TABLE `Survey_IICD_30` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_31
-- Estimated 3344 rows, 200640 bytes
CREATE TABLE `Survey_IICD_31` (
    `dim_project_project_name` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_32
-- Estimated 6240 rows, 374400 bytes
CREATE TABLE `Survey_IICD_32` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_33
-- Estimated 33280 rows, 2662400 bytes
CREATE TABLE `Survey_IICD_33` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_34
-- Estimated 1664 rows, 99840 bytes
CREATE TABLE `Survey_IICD_34` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_35
-- Estimated 49919 rows, 3993599 bytes
CREATE TABLE `Survey_IICD_35` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_question_q5_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_36
-- Estimated 24960 rows, 1996800 bytes
CREATE TABLE `Survey_IICD_36` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_38
-- Estimated 133118 rows, 13311855 bytes
CREATE TABLE `Survey_IICD_38` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_40
-- Estimated 30720 rows, 3072000 bytes
CREATE TABLE `Survey_IICD_40` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_41
-- Estimated 2560 rows, 204800 bytes
CREATE TABLE `Survey_IICD_41` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_fact_count` INTEGER);

