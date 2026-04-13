import pandas as pd

# load data
df = pd.read_csv('data/customer_subscription_data.csv')

# convert churn to numeric
df['churn_flag'] = df['churn_flag'].map({'Yes':1,'No':0})

# churn rate
churn_rate = df['churn_flag'].mean()

# churn by contract
churn_contract = df.groupby('contract_type')['churn_flag'].mean()

# churn by tenure
churn_tenure = df.groupby('tenure_months')['churn_flag'].mean()

print("Overall churn rate:", churn_rate)
print(churn_contract.head())
