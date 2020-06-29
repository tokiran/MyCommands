#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 25 13:33:57 2020

@author: winnie
"""

import pandas as pd
import numpy as np

# =============================================================================
# people = {
#     "First":['Winnie','Pig','Monkey','Baby',np.nan,None,'NA'],
#     "Last":["Yu","Zhang","Sun","Yang",np.nan,np.nan,"MISSING"],
#     "email":["winnie.yu.ca@gmail.com","Pig.zhang.ca@gmail.com",np.nan,"baby.yang.ca@gmail.com",None,np.nan,"NA"],
#     "age":['33','34','15','11',None,None,'NA']
# }
# 
# df = pd.DataFrame(people)
# df.replace('NA',np.nan, inplace=True)
# print(df.dropna())
# print(df.dropna(axis='index',how='any'))
# print(df.dropna(how='all')) #print(df.dropna(axis='index',how='all'))
# print(df.dropna(axis='columns',how='all'))
# print(df.dropna(axis='columns',how='any'))
# ##diferences between axis='index' and axis='columns" is:
#         #axis='index' will check all values in each row
#         #axis='columns" will check all values in each columns
#         
# print(df.dropna(axis='index',how='any',subset=['Last','email'])) #check column"email" only for None/missin values
# print(df.isna())
# print(df.fillna('MISSING'))
# print(df.dtypes) #object is string
# 
# print(type(np.nan))
# df['age']=df['age'].astype(float)
# print(df.dtypes) 
# print(df['age'].mean())
# =============================================================================

na_vals = ['NA','Missing']
df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent',na_values = na_vals)
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')


pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)
#print(df['YearsCode'].head(10))

#df['YearsCode'] = df['YearsCode'].astype(float) #error: ValueError: could not convert string to float: 'Less than 1 year'

df['YearsCode'].replace('Less than 1 year',0, inplace=True)
df['YearsCode'].replace('More than 50 years',51, inplace=True)
print(df['YearsCode'].unique())

df['YearsCode'] = df['YearsCode'].astype(float)
print('Average: '+ str(df['YearsCode'].mean()))
      
print('Median: '+ str(df['YearsCode'].median()))