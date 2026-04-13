import pandas as pd

df = pd.read_csv('data/customer_subscription_data.csv')

# remove duplicates
df = df.drop_duplicates()

# fill missing values
df = df.fillna(0)

print("rows:", len(df))

df.to_csv('data/cleaned_customer_data.csv', index=False)
