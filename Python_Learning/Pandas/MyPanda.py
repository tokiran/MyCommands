import pandas as pd

df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')

pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)

#print(df.head(10))
#print(df["ConvertedComp"].head(15))

###median Function: same as average()
print(df.describe())