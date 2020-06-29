import pandas as pd

people = {
    "First":['Winnie','Pig','Monkey','Baby','Rabit'],
    "Last":["Yu","Zhang","Sun","Yang","Yu"],
    "email":["winnie.yu.ca@gmail.com","Pig.zhang.ca@gmail.com","Monkey.sun.ca@gmail.com","baby.yang.ca@gmail.com","Rabit.Yu.ca@gmail.com"]
}

df = pd.DataFrame(people)
#print(df)
#print(df['Last']=='Yu')

filt = (df['Last'] == 'Yu') & (df['First'] == 'Winnie')
#print(df[filt])

#print(df[df['Last'] == 'Yu'])
print(df.loc[filt,'email'])
print('******')

filt = (df['Last'] == 'Yu') | (df['First'] == 'Pig')
print(df.loc[filt,'email'])

print('opposite result')
print(df.loc[-filt,'email'])

######3######
df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')

pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)

high_salary = (df['ConvertedComp'] >100000)
#print(df.loc[high_salary])
#print(df.loc[high_salary,['Country','LanguageWorkedWith','ConvertedComp']])

countries = ['United States','India','United Kingdom','Germany','Canada']
filt = df['Country'].isin(countries)
#print(df[filt])
#print(df.loc[filt])

#To select records has "LanguageWorkedWith" coantains "Python"
filt = df['LanguageWorkedWith'].str.contains('Python', na=False)
#print(df.loc[filt,'LanguageWorkedWith'])
print(filt)
print(df.loc[filt]) #returns all rows satisfy the filt rule




