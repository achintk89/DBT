
{{config(materialized='table')}}

with ordersdemo as
(
    SELECT concat("Loan_ID",'-',"loan_status") as loanid_status, substr('gender',1,2) as gender,upper('education') as education from DEMO_DB.PUBLIC.LOAN_PAYMENT
)
select * from ordersdemo

