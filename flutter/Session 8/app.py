#!/usr/bin/python3
import subprocess
import cgi
print('Access-Control-Allow-Origin: * ')
print('content-type: text/html')
print()

mydata = cgi.FieldStorage()
image = mydata.getvalue("y")
cname = mydata.getvalue("x")

cmd = "docker run -dit --name {} {}".format(cname,image)

o = subprocess.getoutput("sudo " + cmd)
print(o)
