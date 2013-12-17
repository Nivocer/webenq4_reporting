-- Aggregate table Survey2_IICD_1
-- Estimated 1 rows, 0 bytes
CREATE TABLE `Survey2_IICD_1` (
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_2
-- Estimated 20 rows, 80 bytes
CREATE TABLE `Survey2_IICD_2` (
    `dim_date_Year` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_3
-- Estimated 80 rows, 1920 bytes
CREATE TABLE `Survey2_IICD_3` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_4
-- Estimated 214 rows, 4280 bytes
CREATE TABLE `Survey2_IICD_4` (
    `dim_project_Project_text` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_5
-- Estimated 78 rows, 1560 bytes
CREATE TABLE `Survey2_IICD_5` (
    `dim_question_Group_title` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_6
-- Estimated 110993 rows, 4439755 bytes
CREATE TABLE `Survey2_IICD_6` (
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_7
-- Estimated 9 rows, 180 bytes
CREATE TABLE `Survey2_IICD_7` (
    `dim_questionnaire_Questionnair` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_8
-- Estimated 51 rows, 1020 bytes
CREATE TABLE `Survey2_IICD_8` (
    `dim_questionnaire_Questionnair` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_9
-- Estimated 557 rows, 11140 bytes
CREATE TABLE `Survey2_IICD_9` (
    `dim_training_Training_text` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_10
-- Estimated 133067 rows, 2661351 bytes
CREATE TABLE `Survey2_IICD_10` (
    `lookup_answer_label_Answer_lab` VARCHAR(1024),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_11
-- Estimated 1103145 rows, 48538409 bytes
CREATE TABLE `Survey2_IICD_11` (
    `dim_date_Year` INT(11),
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_12
-- Estimated 1525156 rows, 91509360 bytes
CREATE TABLE `Survey2_IICD_12` (
    `dim_project_Project_text` VARCHAR(255),
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_13
-- Estimated 1336968 rows, 80218134 bytes
CREATE TABLE `Survey2_IICD_13` (
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `dim_questionnaire_Questionnair` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_14
-- Estimated 1525156 rows, 91509360 bytes
CREATE TABLE `Survey2_IICD_14` (
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `dim_training_Training_text` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_15
-- Estimated 1525156 rows, 91509360 bytes
CREATE TABLE `Survey2_IICD_15` (
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `lookup_answer_label_Answer_lab` VARCHAR(1024),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_16
-- Estimated 1525156 rows, 122012480 bytes
CREATE TABLE `Survey2_IICD_16` (
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `dim_questionnaire_Questionnair` VARCHAR(255),
    `lookup_answer_label_Answer_lab` VARCHAR(1024),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey2_IICD_17
-- Estimated 1525156 rows, 128113104 bytes
CREATE TABLE `Survey2_IICD_17` (
    `dim_date_Year` INT(11),
    `dim_question_Group_title` VARCHAR(255),
    `dim_question_Question_text` VARCHAR(512),
    `dim_questionnaire_Questionnair` VARCHAR(255),
    `lookup_answer_label_Answer_lab` VARCHAR(1024),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Answers` INTEGER,
    `fact_answer_fact_count` INTEGER);

