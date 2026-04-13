-- overall churn rate
SELECT 
AVG(CASE WHEN churn_flag='Yes' THEN 1 ELSE 0 END) as churn_rate
FROM customer_data;

-- churn by contract type
SELECT 
contract_type,
COUNT(*) as customers,
AVG(CASE WHEN churn_flag='Yes' THEN 1 ELSE 0 END) as churn_rate
FROM customer_data
GROUP BY contract_type;

-- churn by tenure group
SELECT 
tenure_months,
COUNT(*) as total_customers
FROM customer_data
GROUP BY tenure_months
ORDER BY tenure_months;
