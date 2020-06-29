#Tutorial3 - How to Set,Rest and Use indexes
import pandas as pd

people = {
    "First":['Winnie','Pig','Monkey','Baby'],
    "Last":["Yu","Yu","Yu","Yu"],
    "email":["winnie.yu.ca@gmail.com","David.yu.ca@gmail.com","Sophia.yu.ca@gmail.com","Helen.yu.ca@gmail.com"]
}

df.set_index('email')
print(df)
print(df.set_index('email'))

df.set_index('email',inplace=True)
print(df)
print(df.index)

df.reset_index(inplace=True)
print(df)
print(df.index)

######
df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')

pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)

print(df.head())

print(schema_df.loc['Hobbyist'])
print(schema_df.loc['MgrIdiot','QuestionText'])
print(schema_df.sort_index(ascending = False))