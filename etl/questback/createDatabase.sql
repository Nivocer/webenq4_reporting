
CREATE TABLE stage_question (
                stage_question_key INT AUTO_INCREMENT NOT NULL,
                questionnaire_key INT NOT NULL,
                column_number INT NOT NULL,
                question_key INT NOT NULL,
                group_key INT,
                module_key INT,
                PRIMARY KEY (stage_question_key)
);


CREATE TABLE dim_module (
                module_key INT AUTO_INCREMENT NOT NULL,
                module_code VARCHAR(512) NOT NULL,
                type_opleiding VARCHAR(8) NOT NULL,
                jaar INT NOT NULL,
                klasletter VARCHAR(4) NOT NULL,
                module VARCHAR(150) NOT NULL,
                docent VARCHAR(100) NOT NULL,
                PRIMARY KEY (module_key)
);


CREATE TABLE dim_group (
                group_key INT AUTO_INCREMENT NOT NULL,
                group_text VARCHAR(255) NOT NULL,
                PRIMARY KEY (group_key)
);


CREATE TABLE lookup_answer_label (
                answer_label_key INT AUTO_INCREMENT NOT NULL,
                answer_group_key INT NOT NULL,
                answer_label VARCHAR(4096) NOT NULL,
                answer INT NOT NULL,
                sequence BIGINT DEFAULT 0 NOT NULL,
                PRIMARY KEY (answer_label_key)
);

ALTER TABLE lookup_answer_label MODIFY COLUMN answer INTEGER COMMENT 'w3: tbl_antwoordmogelijkheden: antw_nummer';


CREATE TABLE dim_question (
                question_key INT AUTO_INCREMENT NOT NULL,
                question_text VARCHAR(512),
                sequence BIGINT DEFAULT 0 NOT NULL,
                PRIMARY KEY (question_key)
);


CREATE TABLE dim_date (
                date_key INT NOT NULL,
                date DATE,
                year INT NOT NULL,
                quarter VARCHAR(255) NOT NULL,
                month INT NOT NULL,
                month_text_en VARCHAR(255) NOT NULL,
                day INT NOT NULL,
                PRIMARY KEY (date_key)
);

ALTER TABLE dim_date MODIFY COLUMN date_key INTEGER COMMENT 'in format yyyymmdd';

ALTER TABLE dim_date MODIFY COLUMN date DATE COMMENT 'date at 0:00 am';

ALTER TABLE dim_date MODIFY COLUMN month INTEGER COMMENT 'month-nummer 1-12';


CREATE TABLE dim_questionnaire (
                questionnaire_key INT AUTO_INCREMENT NOT NULL,
                questionnaire_title_en VARCHAR(255) NOT NULL,
                questionnaire_id_external INT NOT NULL,
                questionnaire_category_text_en VARCHAR(255),
                sequence BIGINT,
                file_name VARCHAR(255) NOT NULL,
                start_date VARCHAR(20) NOT NULL,
                end_date VARCHAR(20) NOT NULL,
                unique_respondent VARCHAR(8) NOT NULL,
                email_invitations VARCHAR(8) NOT NULL,
                total_response VARCHAR(8) NOT NULL,
                response_percentage VARCHAR(6) NOT NULL,
                export_date VARCHAR(20) NOT NULL,
                PRIMARY KEY (questionnaire_key)
);


CREATE TABLE stage_module (
                module_key INT NOT NULL,
                questionnaire_key INT NOT NULL,
                module_code VARCHAR(512),
                group_id INT,
                PRIMARY KEY (module_key, questionnaire_key)
);


CREATE TABLE stage_group (
                questionnaire_key INT NOT NULL,
                group_id INT NOT NULL,
                group_key INT NOT NULL,
                PRIMARY KEY (questionnaire_key, group_id)
);


CREATE TABLE dim_respondent (
                respondent_key INT AUTO_INCREMENT NOT NULL,
                questionnaire_key INT NOT NULL,
                respondent_id_external INT NOT NULL,
                date_key INT,
                respondent_name VARCHAR(255),
                respondent_email VARCHAR(255),
                language CHAR(3) DEFAULT "en",
                PRIMARY KEY (respondent_key)
);


CREATE TABLE fact_answer (
                respondent_key INT NOT NULL,
                question_key INT NOT NULL,
                answer_label_key INT NOT NULL,
                questionnaire_key INT NOT NULL,
                module_key INT NOT NULL,
                group_key INT,
                date_key INT NOT NULL,
                answer DOUBLE PRECISION DEFAULT NULL,
                PRIMARY KEY (respondent_key, question_key, answer_label_key, questionnaire_key, module_key)
);


ALTER TABLE fact_answer ADD CONSTRAINT dim_module_fact_answer_fk
FOREIGN KEY (module_key)
REFERENCES dim_module (module_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_group_fact_answer_fk
FOREIGN KEY (group_key)
REFERENCES dim_group (group_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT lookup_answer_label_fact_answer_fk
FOREIGN KEY (answer_label_key)
REFERENCES lookup_answer_label (answer_label_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_question_fact_answer_fk
FOREIGN KEY (question_key)
REFERENCES dim_question (question_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_date_fact_answer_fk
FOREIGN KEY (date_key)
REFERENCES dim_date (date_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT dim_questionnaire_fact_answer_fk
FOREIGN KEY (questionnaire_key)
REFERENCES dim_questionnaire (questionnaire_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE dim_respondent ADD CONSTRAINT dim_questionnaire_dim_respondent_fk
FOREIGN KEY (questionnaire_key)
REFERENCES dim_questionnaire (questionnaire_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE stage_group ADD CONSTRAINT dim_questionnaire_stage_group_fk
FOREIGN KEY (questionnaire_key)
REFERENCES dim_questionnaire (questionnaire_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE stage_module ADD CONSTRAINT dim_questionnaire_stage_module_fk
FOREIGN KEY (questionnaire_key)
REFERENCES dim_questionnaire (questionnaire_key)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE fact_answer ADD CONSTRAINT fact_answer_dim_respondent_fk
FOREIGN KEY (respondent_key)
REFERENCES dim_respondent (respondent_key)
ON DELETE CASCADE
ON UPDATE CASCADE;
