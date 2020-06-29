#Tutorial2 - Data Frame and Series data set
import pandas as pd

# =============================================================================
# people = {
#     "First":['Winnie','Pig','Monkey','Baby'],
#     "Last":["Yu","Yu","Yu","Yu"],
#     "email":["winnie.yu.ca@gmail.com","David.yu.ca@gmail.com","Sophia.yu.ca@gmail.com","Helen.yu.ca@gmail.com"]
# }
# 
# df = pd.DataFrame(people)
# df["email"] #same as
# df.email
# type(df["email"])
# 
# df[["First","email"]]
# 
# df.columns
# 
# df.iloc[0]
# 
# 	#First                    Winnie
# 	#Last                         Yu
# 	#email    winnie.yu.ca@gmail.com
# 	#Name: 0, dtype: object
# 
# df.iloc[[0,1]] #returns first 2 rows
# df.iloc[[0,1],2] #returns first 2 rows for the 3rd column only 
# 
# df.loc[[0,1],'email'] #returns same as row27
# =============================================================================


#######
df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv')

pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)

print(df.head()) #default first 5 rows will be returned.
# =============================================================================
# print(df.shape)
# #print(df.columns)
# print(df.Hobbyist.value_counts())
# print(df.loc[0:2,'Hobbyist':'Employment'])
# 
# =============================================================================
