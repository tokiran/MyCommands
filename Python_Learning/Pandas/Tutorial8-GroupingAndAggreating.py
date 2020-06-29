#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jun 22 22:06:30 2020

@author: winnie
"""
#Tutorial8 - Grouping and Aggregating

import pandas as pd

df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')

pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)

# =============================================================================
# print(df.head(10))
# print(df["ConvertedComp"].head(15))
# print(df["ConvertedComp"].count())
# =============================================================================

# =============================================================================
# ###median Function: same as average()
# print("Median Salary is: " + str(df["ConvertedComp"].median()))
# print(df.median())
# 
# #describe: calculating some statistical data for the Series or DataFrame. 
# #It analyzes both numeric and object series and also the DataFrame column sets of mixed data types.
# print(df.describe())
# =============================================================================

# =============================================================================
# print(df['SocialMedia'].value_counts())
# print(df['SocialMedia'].value_counts(normalize=True)) ##by percent
# print(schema_df.loc['SocialMedia'])
# =============================================================================

#Split | Apply Funcion | Combine Results
# =============================================================================
# print(df['Country'].value_counts())
# country_group = df.groupby(['Country'])
# print(country_group.get_group('United States'))
# filt = (df['Country'] == 'United States') & (df['SocialMedia'] == 'YouTube')
# print(df.loc[filt]['SocialMedia'].value_counts())
# print(df.loc[filt]['SocialMedia'].count())
# print(country_group['SocialMedia'].value_counts().head(50))
# print(country_group['SocialMedia'].value_counts().loc['India'])
# =============================================================================

# =============================================================================
country_group = df.groupby(['Country'])
print(country_group['ConvertedComp'].median().loc['Germany'])
print('***********')
print(country_group['ConvertedComp'].agg(['median','mean']).loc['Canada'])
# print(country_group())
# =============================================================================

# =============================================================================
# country_group = df.groupby(['Country'])
# filt = df['Country'] == 'India'
# print(df.loc[filt]['LanguageWorkedWith'].str.contains('Python').sum())
# print(country_group['LanguageWorkedWith'].apply(lambda x: x.str.contains('Python').sum()))
# print(country_group['LanguageWorkedWith'].apply(lambda x: x.value_counts(normalize = True)))
# =============================================================================

#What % of people from each country know Python?
# =============================================================================
# country_group = df.groupby(['Country'])
# country_resondents = df['Country'].value_counts()
# country_uses_Python = country_group['LanguageWorkedWith'].apply(lambda x: x.str.contains('Python').sum())
# python_df = pd.concat([country_resondents,country_uses_Python],axis = 'columns', sort = False)
# python_df.rename(columns={'Country':'NumRespondents','LanguageWorkedWith':'NumKnowsPython'}, inplace=True)
# python_df['PctKnowsPython']=(python_df['NumKnowsPython']/python_df['NumRespondents'])* 100
# python_df.sort_values(by = 'PctKnowsPython', ascending = False, inplace = True)
# print(python_df)
# print(python_df.loc['Japan'])
# =============================================================================
