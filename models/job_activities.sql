WITH
  jobactivities AS ( SELECT * FROM {{ref('job activities')}} ),

  job_activities AS (

    SELECT
      id AS unique_id,
      student_id,
      category,
      created_at
    
    FROM jobactivities
  )

SELECT * FROM job_activities