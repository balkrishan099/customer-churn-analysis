SELECT
COUNT(*) as total_customers,
AVG(CASE WHEN churn_flag='Yes' THEN 1 ELSE 0 END) as churn_rate
FROM customer_data;

SELECT
contract_type,
COUNT(*) as customers
FROM customer_data
GROUP BY contract_type;

SELECT
tenure_months,
COUNT(*) as customers
FROM customer_data
GROUP BY tenure_months;
