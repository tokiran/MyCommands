#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jul  2 16:26:20 2020

@author: winnie
"""


import petl as etl, psycopg2 as pg, sys
from  sqlalchemy import *

reload(sys)
sys.setdefaultencoding('utf8')

dbCnxns = {'operations':'dbname=operations user=etl host=127.0.0.1',
           'python': 'dbname=python user-etl host=127.0.0.1'}

#set my  connection and cursors
sourceConn = pg.connect(dbCnxns['operations'])
targetConn = pg.connect(dbCnxns['python'])
sourceCursor = sourceConn.cursor()
targetCursor = targetConn.cursor()

sourceCursor.execute("""select table_name
                     frominformation_schema.columns
                     """)
