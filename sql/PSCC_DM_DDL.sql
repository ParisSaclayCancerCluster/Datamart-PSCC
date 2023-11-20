CREATE TABLE "PSCC_DM"."PATIENT"
(
    patient_id varchar(255) NOT NULL,
    birth_date date NOT NULL,
    sex varchar(2) NOT NULL,
    CONSTRAINT pk_patient PRIMARY KEY (patient_id)
);

CREATE TABLE "PSCC_DM"."CANCER"
(
	patient_id varchar(255) NOT NULL,
	cancer_id varchar(255) NOT NULL,
	diagnosis_date date NOT NULL,
    topography varchar(255) NOT NULL,
    PRIMARY KEY (cancer_id),
	CONSTRAINT fpk_cancer_patient_id FOREIGN KEY (patient_id) REFERENCES "PSCC_DM".PATIENT (patient_id)
);


