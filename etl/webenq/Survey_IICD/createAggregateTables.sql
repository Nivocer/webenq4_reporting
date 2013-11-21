-- Aggregate table Survey_IICD_1
-- Estimated 258 rows, 5160 bytes
CREATE TABLE `Survey_IICD_1` (
    `dim_country_Country_name_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_2
-- Estimated 210 rows, 4200 bytes
CREATE TABLE `Survey_IICD_2` (
    `dim_project_project_name_(Key)` INT(11),
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
-- Estimated 424 rows, 16960 bytes
CREATE TABLE `Survey_IICD_4` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_5
-- Estimated 771 rows, 15420 bytes
CREATE TABLE `Survey_IICD_5` (
    `dim_question_q5_group` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_6
-- Estimated 823393 rows, 32935745 bytes
CREATE TABLE `Survey_IICD_6` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_7
-- Estimated 571 rows, 11420 bytes
CREATE TABLE `Survey_IICD_7` (
    `dim_training_Training_(Key)` INT(11),
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
-- Estimated 960 rows, 57600 bytes
CREATE TABLE `Survey_IICD_9` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_10
-- Estimated 148288 rows, 2965776 bytes
CREATE TABLE `Survey_IICD_10` (
    `lookup_answer_label_a6_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_11
-- Estimated 4 rows, 80 bytes
CREATE TABLE `Survey_IICD_11` (
    `dim_country_Gender_equality` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_12
-- Estimated 1521880 rows, 121750400 bytes
CREATE TABLE `Survey_IICD_12` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4_(Key)` INT(11),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_13
-- Estimated 1521880 rows, 91312800 bytes
CREATE TABLE `Survey_IICD_13` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `lookup_answer_label_a6_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_14
-- Estimated 1521880 rows, 91312800 bytes
CREATE TABLE `Survey_IICD_14` (
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_15
-- Estimated 1521880 rows, 121750400 bytes
CREATE TABLE `Survey_IICD_15` (
    `dim_country_Country_name_(Key)` INT(11),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `lookup_answer_label_a6_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_16
-- Estimated 1521880 rows, 152188000 bytes
CREATE TABLE `Survey_IICD_16` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4_(Key)` INT(11),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `lookup_answer_label_a6_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_17
-- Estimated 1521880 rows, 182625600 bytes
CREATE TABLE `Survey_IICD_17` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4_(Key)` INT(11),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `dim_date_Year` INT(11),
    `lookup_answer_label_a6_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_18
-- Estimated 1521880 rows, 121750400 bytes
CREATE TABLE `Survey_IICD_18` (
    `dim_country_Country_name_(Key)` INT(11),
    `dim_project_project_name_(Key)` INT(11),
    `dim_question_q5_group` VARCHAR(255),
    `dim_question_q5` VARCHAR(512),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_19
-- Estimated 7680 rows, 614400 bytes
CREATE TABLE `Survey_IICD_19` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month_(Key)` INT(11),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_20
-- Estimated 3360 rows, 201600 bytes
CREATE TABLE `Survey_IICD_20` (
    `dim_project_project_name_(Key)` INT(11),
    `dim_country_Inclusion` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_21
-- Estimated 20480 rows, 2457600 bytes
CREATE TABLE `Survey_IICD_21` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Gender_equality` VARCHAR(255),
    `dim_country_Interpersonal_safe` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_22
-- Estimated 128 rows, 7680 bytes
CREATE TABLE `Survey_IICD_22` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_country_Interpersonal_safe` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_23
-- Estimated 10240 rows, 1024000 bytes
CREATE TABLE `Survey_IICD_23` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_date_Year` INT(11),
    `dim_country_Inclusion` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_24
-- Estimated 5120 rows, 512000 bytes
CREATE TABLE `Survey_IICD_24` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Inclusion` VARCHAR(255),
    `dim_country_Interpersonal_safe` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_25
-- Estimated 61439 rows, 7372799 bytes
CREATE TABLE `Survey_IICD_25` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month_(Key)` INT(11),
    `dim_country_Intergroup_cohesio` VARCHAR(255),
    `dim_country_Interpersonal_safe` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_26
-- Estimated 1024 rows, 102400 bytes
CREATE TABLE `Survey_IICD_26` (
    `dim_country_Gender_equality` VARCHAR(255),
    `dim_country_Inclusion` VARCHAR(255),
    `dim_country_Intergroup_cohesio` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_27
-- Estimated 61439 rows, 7372799 bytes
CREATE TABLE `Survey_IICD_27` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month_(Key)` INT(11),
    `dim_country_Inclusion` VARCHAR(255),
    `dim_country_Intergroup_cohesio` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_28
-- Estimated 6784 rows, 542720 bytes
CREATE TABLE `Survey_IICD_28` (
    `dim_questionnaire_qe4_group` VARCHAR(255),
    `dim_questionnaire_qe4_(Key)` INT(11),
    `dim_country_Inclusion` VARCHAR(255),
    `dim_country_Intergroup_cohesio` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_29
-- Estimated 1280 rows, 102400 bytes
CREATE TABLE `Survey_IICD_29` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_country_Interpersonal_safe` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

-- Aggregate table Survey_IICD_30
-- Estimated 61439 rows, 7372799 bytes
CREATE TABLE `Survey_IICD_30` (
    `dim_date_Year` INT(11),
    `dim_date_Quarter` VARCHAR(255),
    `dim_date_Month_(Key)` INT(11),
    `dim_country_Gender_equality` VARCHAR(255),
    `dim_country_Civic_activism` VARCHAR(255),
    `dim_country_Clubs_and_associca` VARCHAR(255),
    `fact_answer_Average` DOUBLE,
    `fact_answer_Respondents` INTEGER,
    `fact_answer_Sum` DOUBLE,
    `fact_answer_fact_count` INTEGER);

