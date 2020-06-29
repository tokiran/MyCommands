#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jun 26 14:03:04 2020

@author: winnie
"""

import pandas as pd

# =============================================================================
# df = pd.read_csv('ETH_1h.csv')
# df.head()
# 
# #Datetime Formatting Codes - http://bit.ly/python-dt-fmt
# #Pandas Date Offset Codes - http://bit.ly/pandas-dt-fmt
# df['Date'] = pd.to_datetime(df['Date'],format = '%y-%m-%d %I-%P') #The raw data format is like: '2020-03-13 08-PM' (str type)
# df['Date']
# =============================================================================

#Convert to datetime when data is read
d_parser = lambda x: pd.datetime.strptime(x,'%y-%m-%d %I-%P')
df = pd.read_csv('ETH_1h.csv', parse_dates=['Date'], date_parser=d_parser)
df.head()
print(df.loc['Date'].day_name) #returns "Friday"
df['Date'].dt.day_name() #return day_name for each row

df['DayofWeek'] = df['Date'].dt.day_name() #will add new column 'DayofWeek' in end of the dataframe and valued with day_name
df['Date'].min() #return earliest date
df['Date'].max() #return most recent date

df['Date'].max() - df['Date'].min() #return difference between the dates.

filt = (df['Date'] >= '2020')
df.loc[filt]

filt = (df['Date'] >= '2019') & (df['Date'] < '2020')
df.loc[filt]

filt = (df['Date'] >= pd.to_datetime('2019-01-01)') & (df['Date'] < pd.to_datetime('2020-01-01)'))
df.loc[filt]

df.set_index('Date', inplace = True)
df['2019'']
df['2020-01':'2020-02'].['Close'].mean()
df['2020-01-01']['High'].max()

highs = df['High'].resample('D').max() #Daily basis for 'High' column
highs['2020-01-01']

%matplotlib inline
highs.plot()

df.resample('W').mean() #Weekly Basis for all columns

df.resample('W').agg({'Close':'mean','High':'mas','Low':'min','Volumn':'sum'})