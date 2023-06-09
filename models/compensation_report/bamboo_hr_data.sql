SELECT 
    id,
    first_name || ' ' || last_name AS full_name,
    job_title,
    employment_status_date,
    termination_date,
    contract_type,
    nationality,
    compensation_change_reason,
    contract_end_date,
    country,
    location,
    pay_rate_currency_code,
    compensation_comments,
    hire_date,
    owner,
    termination_type,
    termination_reason,
    division,
    department,
    pay_type,
    reporting_to,
    status,
    gender,
    birth_date,
    employment_status,
    note

FROM {{ source('bamboohr', 'employee') }}
WHERE full_name NOT ILIKE '%test%'
ORDER BY id