WITH
  job_activites AS ( SELECT * FROM {{ref('job activities')}} )

SELECT * FROM job_activites