WITH 
  applicants AS (SELECT * FROM "microverse_th"."kkush"."applicants" ),
  seed_challenges AS ( SELECT * FROM "microverse_th"."kkush_seeds"."challenges" ),

applicant_challenges AS (
  SELECT
    ROW_NUMBER () OVER (PARTITION BY applicants.applicant_id ORDER BY seed_challenges.submitted_at, applicants.applicant_id) AS ROW_NUM,
    applicants.applicant_id,
    applicants.age,
    applicants.gender,
    applicants.country,
    applicants.last_step,
    applicants.created_at AS application_created_at,
    seed_challenges.submitted_at AS challenge_submitted_at,
    seed_challenges.challenge_one_score,
    seed_challenges.challenge_two_score,
    seed_challenges.challenge_three_score
  
  FROM seed_challenges 
  
  INNER JOIN applicants ON seed_challenges.applicant_id = applicants.applicant_id

)

SELECT * FROM applicant_challenges