#/Library/Frameworks/Python.framework/Versions/3.8/bin
import json

x = '{\
	"name":"John",\
	"age":"30",\
	"city": "New York"\
	}'

y = json.loads(x)
print(y["age"])
print(y["name"])