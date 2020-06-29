#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jun 29 13:47:50 2020

@author: winnie
"""
import pandas as pd

df = pd.read_csv('/Users/winnie/Documents/data/survey_results_public.csv',index_col = 'Respondent')
schema_df = pd.read_csv('/Users/winnie/Documents/data/survey_results_schema.csv', index_col = 'Column')

###CSV
pd.set_option('display.max_columns', 85)
pd.set_option('display.max_rows',85)
filt = (df['Country'] == 'India')
India_df = df.loc[filt]
print(India_df.head())
India_df.to_csv('modified.csv') #write into raw csv file
India_df.to_csv('modified.tsv', sep='\t') #write into csv file, delimited by tab.

###EXCEL
#pip install xlwt openpyxl xlrd  --to install excel packages
India_df.to_excel('modified.xlsx') #write into Excel
test = pd.read_excel('modified.xlsx', index_col = 'Respondent')
test.head()

###JSON
India_df.to_json('modified.json', orient = 'records', lines = True) #write into JSON file
test = pd.read_json('modified.json', orient = 'records', lines = True)
India_df.to_json(<URL>, orient = 'records', lines = True)

###SQL
#pip install SQLAlchemy
#pip install psycopg2-binary

from sqlalchemy import create_engine
import psycopg2

engine = create_engine('postgresql://dbuser:dbpass@localhost:5432/sample.db')
India_df.to_sql('sample_table',engine,if_exists = 'replace')
sql_df = pd.read_sql('sample_table', engine, index_col = 'Respondent')
ql_df = pd.read_sql('select * from sample_table',engine, index_col = 'Respondent')