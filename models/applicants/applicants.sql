WITH
  seed_applicant_1 AS ( SELECT * FROM {{ref('applicants 1')}} ),
  seed_applicant_2 AS ( SELECT * FROM {{ref('applicants 2')}} ),
  seed_applicant_3 AS ( SELECT * FROM {{ref('applicants 3')}} ),
  seed_applicant_4 AS ( SELECT * FROM {{ref('applicants 4')}} ),
  --seed_job_activities AS ( SELECT * FROM {{ref('job activities')}} ),
  --seed_students AS ( SELECT * FROM {{ref('students')}} ),

applicants AS (
  SELECT 
    id AS applicant_id,
    last_step,
    country,
    gender,
    age,
    created_at::DATE 
  FROM seed_applicant_1
  UNION ALL
  SELECT
    id AS applicant_id,
    last_step,
    country,
    gender,
    age,
    created_at::DATE 
  FROM seed_applicant_2
  UNION ALL
  SELECT
    id AS applicant_id,
    last_step,
    country,
    gender,
    age,
    created_at::DATE 
  FROM seed_applicant_3
  UNION ALL
  SELECT
    id AS applicant_id,
    last_step,
    country,
    gender,
    age,
    created_at::DATE 
  FROM seed_applicant_4
)
SELECT * FROM applicants