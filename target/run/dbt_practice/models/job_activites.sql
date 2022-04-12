
  create view "dbt-practice"."dbt-practice-data"."job_activites__dbt_tmp" as (
    WITH
  job_activites AS ( SELECT * FROM "dbt-practice"."dbt-practice-data_seeds"."job activities" )

SELECT * FROM job_activites
  );