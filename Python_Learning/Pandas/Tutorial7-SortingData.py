#Tutorial7 - Sorting Data
import pandas as pd

people = {
    "First":['Winnie','Pig','Monkey','Baby','Rabit'],
    "Last":["Yu","Zhang","Sun","Yang","Yu"],
    "email":["winnie.yu.ca@gmail.com","Pig.zhang.ca@gmail.com","Monkey.sun.ca@gmail.com","baby.yang.ca@gmail.com","Rabit.Yu.ca@gmail.com"]
}

df = pd.DataFrame(people)
print(df.sort_values(by='Last', ascending = False))
print(df.sort_values(by=['Last','First'], ascending = False))
print(df.sort_values(by=['Last','First'], ascending = [False,True]))
print(df.sort_index())
print(df['Last'].sort_values())

#######

df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')

pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)

df.sort_values(by=['Country','ConvertedComp'],ascending=[True, False],inplace=True)
print(df['Country'].head(50).value_counts())
print(df[['Country','ConvertedComp']].head(50))

df['ConvertedComp'].nlargest(10)
print(df['ConvertedComp'].nlargest(10)) #nsmallest
print(df.nlargest(10,'ConvertedComp'))