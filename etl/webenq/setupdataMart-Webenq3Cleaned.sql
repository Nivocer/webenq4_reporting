SET storage_engine=MYISAM;

CREATE TABLE stage_lookup_respondent (
                respondent_id INT NOT NULL,
                date_import DATE NOT NULL,
                respondent_key INT NOT NULL,
                date_key INT NOT NULL,
                questionnaire_key INT NOT NULL,
                country_key INT,
                training_key INT,
                project_key INT,
                PRIMARY KEY (respondent_id)
)    Default CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE stage_lookup_question (
                question_id INT NOT NULL,
                date_import DATE NOT NULL,
                answer_type VARCHAR(255) NOT NULL,
                question_key INT NOT NULL,
                PRIMARY KEY (question_id)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE stage_lookup_answer_label (
                question_id INT NOT NULL,
                answer_id INT NOT NULL,
                date_import DATE NOT NULL,
                answer_label_key INT NOT NULL,
                answer INT NOT NULL,
                sequence BIGINT NOT NULL,
                missing_answer INT DEFAULT 0 NOT NULL,
                PRIMARY KEY (question_id, answer_id)
)             CHARACTER SET utf8 COLLATE utf8_bin
;

ALTER TABLE stage_lookup_answer_label MODIFY COLUMN answer INTEGER COMMENT 'w3: tbl_antwoordmogelijkheden: antw_nummer';


CREATE TABLE dim_project (
                project_key INT AUTO_INCREMENT NOT NULL,
                project_id INT NOT NULL,
                project_text_en VARCHAR(255) NOT NULL,
                PRIMARY KEY (project_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE dim_training (
                training_key INT AUTO_INCREMENT NOT NULL,
                training_id INT,
                training_text_en VARCHAR(255),
                PRIMARY KEY (training_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE dim_date (
                date_key INT NOT NULL,
                date DATE,
                year INT NOT NULL,
                quarter VARCHAR(255) NOT NULL,
                month INT NOT NULL,
                month_text_en VARCHAR(255) NOT NULL,
                day INT NOT NULL,
                PRIMARY KEY (date_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;

ALTER TABLE dim_date MODIFY COLUMN date_key INTEGER COMMENT 'in format yyyymmdd';

ALTER TABLE dim_date MODIFY COLUMN date DATE COMMENT 'date at 0:00 am';

ALTER TABLE dim_date MODIFY COLUMN month INTEGER COMMENT 'month-nummer 1-12';


CREATE TABLE dim_respondent (
                respondent_key INT AUTO_INCREMENT NOT NULL,
                respondent_id_external INT NOT NULL,
                respondent_name VARCHAR(255),
                respondent_email VARCHAR(255),
                language CHAR(3) DEFAULT "en",
                PRIMARY KEY (respondent_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE dim_country (
                country_key INT AUTO_INCREMENT NOT NULL,
                country_code2 VARCHAR(2) NOT NULL,
                country_code3 VARCHAR(3) NOT NULL,
                country_name_en VARCHAR(255) NOT NULL,
                PRIMARY KEY (country_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;

ALTER TABLE dim_country COMMENT 'dimension for handling country and region';

ALTER TABLE dim_country MODIFY COLUMN country_code3 VARCHAR(3) COMMENT '3 character country code';


CREATE TABLE dim_questionnaire (
                questionnaire_key INT AUTO_INCREMENT NOT NULL,
                questionnaire_title_en VARCHAR(255) NOT NULL,
                questionnaire_id_external INT NOT NULL,
                questionnaire_category_text_en VARCHAR(255),
                sequence BIGINT NOT NULL,
                PRIMARY KEY (questionnaire_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE dim_question (
                question_key INT AUTO_INCREMENT NOT NULL,
                questionnaire_key INT NOT NULL,
                group_title_en VARCHAR(1024),
                question_text_en VARCHAR(1024),
                sequence BIGINT NOT NULL,
                PRIMARY KEY (question_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE lookup_answer_label (
                answer_label_key INT AUTO_INCREMENT NOT NULL,
                question_key INT,
                answer_label VARCHAR(1024) NOT NULL,
                missing_answer INT,
                sequence BIGINT NOT NULL,
                PRIMARY KEY (answer_label_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


CREATE TABLE fact_answer (
                respondent_key INT NOT NULL,
                question_key INT NOT NULL,
                answer_label_key INT NOT NULL,
                date_key INT NOT NULL,
                questionnaire_key INT NOT NULL,
                country_key INT NOT NULL,
                project_key INT NOT NULL,
                training_key INT NOT NULL,
                answer DOUBLE PRECISION DEFAULT NULL,
                PRIMARY KEY (respondent_key, question_key, answer_label_key)
)             CHARACTER SET utf8 COLLATE utf8_bin
;


ALTER TABLE fact_answer ADD CONSTRAINT dim_project_fact_answer_fk
FOREIGN KEY (project_key)
REFERENCES dim_project (project_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_training_fact_answer_fk
FOREIGN KEY (training_key)
REFERENCES dim_training (training_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_date_fact_answer_fk
FOREIGN KEY (date_key)
REFERENCES dim_date (date_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT fact_answer_dim_respondent_fk
FOREIGN KEY (respondent_key)
REFERENCES dim_respondent (respondent_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT fact_answer_dim_custom_country_fk
FOREIGN KEY (country_key)
REFERENCES dim_country (country_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_questionnaire_fact_answer_fk
FOREIGN KEY (questionnaire_key)
REFERENCES dim_questionnaire (questionnaire_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE dim_question ADD CONSTRAINT dim_question_dim_questionnaire_fk
FOREIGN KEY (questionnaire_key)
REFERENCES dim_questionnaire (questionnaire_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_question_fact_answer_fk
FOREIGN KEY (question_key)
REFERENCES dim_question (question_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE lookup_answer_label ADD CONSTRAINT dim_question_lookup_answer_label_fk
FOREIGN KEY (question_key)
REFERENCES dim_question (question_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT lookup_answer_label_fact_answer_fk
FOREIGN KEY (answer_label_key)
REFERENCES lookup_answer_label (answer_label_key)
ON DELETE CASCADE
ON UPDATE CASCADE;
